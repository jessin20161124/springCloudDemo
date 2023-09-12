package com.jessin.practice.spring.cloud.common;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections4.CollectionUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.AbstractHandlerMethodExceptionResolver;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 异常处理器，对于@Valid，抽取通用报错返回。
 *
 * https://mp.weixin.qq.com/s/yz-CyJuaYGQvxrznD661og
 */
@Slf4j
public class GlobalExceptionHandler extends AbstractHandlerMethodExceptionResolver {

    @Override
    protected ModelAndView doResolveHandlerMethodException(HttpServletRequest request, HttpServletResponse response,
                                                           HandlerMethod handlerMethod, Exception ex) {
        // 可能没有对应的handler
        log.error("调用handler：{}时出现异常，对应的url为：{}，请求参数为：{}",
                handlerMethod != null ? handlerMethod.getMethod() : null, request.getRequestURI(), JsonUtils.write(request.getParameterMap()), ex);

        MappingJackson2JsonView mappingJackson2JsonView = new MappingJackson2JsonView();
        mappingJackson2JsonView.setExtractValueFromSingleKeyModel(true);
        ModelAndView mv = new ModelAndView(mappingJackson2JsonView);
        HttpResult httpResult;
        if (ex instanceof CommonCustomException) {
            CommonCustomException commonCustomException = (CommonCustomException)ex;
            // 通过接口，而不是具体的实现类，解耦开来
            httpResult = HttpResult.fail(commonCustomException);
        } else if (ex instanceof MethodArgumentNotValidException) {
            // valid异常
            MethodArgumentNotValidException commonCustomException = (MethodArgumentNotValidException)ex;
            httpResult = new HttpResult();
            httpResult.setRet(false);
            httpResult.setErrorMsg(getBindErrorMsg(commonCustomException));
            httpResult.setErrorCode(ErrorEnum.PARAMETER_ERROR.getCode());
        }  else {
            httpResult = HttpResult.fail();
        }
        mv.addObject(httpResult);
        return mv;
    }

    private String getBindErrorMsg(MethodArgumentNotValidException e) {
        BindingResult exceptions = e.getBindingResult();
        // 判断异常中是否有错误信息，如果存在就使用异常中的消息，否则使用默认消息
        if (exceptions.hasErrors()) {
            List<ObjectError> errors = exceptions.getAllErrors();
            if (CollectionUtils.isNotEmpty(errors)) {
                // 这里列出了全部错误参数，按正常逻辑，只需要第一条错误即可
                FieldError fieldError = (FieldError) errors.get(0);
                return fieldError.getDefaultMessage();
            }
        }
        return ErrorEnum.PARAMETER_ERROR.getMessage();
    }

    /**
     * 优先级最高，这里不用最小值，比DefaultHandlerExceptionResolver小即可，方便扩展
     * @return
     */
    @Override
    public int getOrder() {
        return -10;
    }
}