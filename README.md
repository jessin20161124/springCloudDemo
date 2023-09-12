## spring cloud实践
&nbsp;&nbsp;&nbsp;&nbsp;封装一线大厂常见功能脚手架

### 已完成功能列表
- [x] 基于spring boot 2.1.7.RELEASE + spring cloud Greenwich.SR6进行实验，版本需要对应
- [x] 使用nacos作为配置中心
- [x] 使用consul作为注册中心
- [x] consumer和provider通过service name来进行feign client服务调用
- [x] 使用ribbon进行负载均衡
- [x] 实现nacos spring cloud配置变更方法回调
- [x] 支持配置中心变更时refresh属性配置
- [x] 支持使用redisson/分布式锁/redis 5.0.7等操作
- [x] 封装feign HttpResult
- [x] docker/k8s部署
- [x] hystrix熔断，sentinel尝试
- [x] kafka 1.0.2安装，spring-kafka集成
- [x] sharding-jdbc分库分表，pagehelper使用
- [x] es 6.4.3集成，中文分词插件ik安装
- [x] mongo 4.0.28集成
- [x] 通用工具包封装，例如ExceptionHandler，异常码

### TODO LIST
- [ ] spring cloud gateway微服务网关集成，谓词测试，流程图补充
- [ ] 抽取几个子域公共代码，kafka/es等中间件
- [ ] ddd分层领域驱动设计，防腐层添加，基础设施层设计，DTO/BO/DO之间的关系梳理清楚
- [ ] checkstyle安装
- [ ] apollo集成

### 博客参考
[spring cloud实践](https://blog.csdn.net/ac_dao_di/article/details/126070583)


### 实验步骤
1. 开启配置中心

&nbsp;&nbsp;&nbsp;&nbsp;本实例使用的是nacos，已经部署在云端，无需配置

2. 开启注册中心

&nbsp;&nbsp;&nbsp;&nbsp;使用consul，则需要手动启动
```
consul agent -server -ui -dev
```

&nbsp;&nbsp;&nbsp;&nbsp;访问页面：
http://localhost:8500/ui

![在这里插入图片描述](https://img-blog.csdnimg.cn/7a20457796044a97a2c17610fa13b3aa.png#pic_center)


3. 开启两个provider

&nbsp;&nbsp;&nbsp;&nbsp;provider1:
```
java -Dserver.port=9999 -jar provider/target/provider-0.0.1-SNAPSHOT.jar
```
![在这里插入图片描述](https://img-blog.csdnimg.cn/1992ce5e337d40458ee8e69cc9dcfdd3.png#pic_center)
&nbsp;&nbsp;&nbsp;&nbsp;provider2:
```
java -Dserver.port=9998 -jar provider/target/provider-0.0.1-SNAPSHOT.jar
```
![在这里插入图片描述](https://img-blog.csdnimg.cn/a39c574ee7a04961955c5f2809ff58cb.png#pic_center)
&nbsp;&nbsp;&nbsp;&nbsp;可以看到会往consul上注册服务，且注册了actuator的健康检测连接，consul每10秒会调用这个链接检测存活。


4. 开启一个consumer，并调用接口测试consumer

```
java -Dserver.port=9991 -jar consumer/target/consumer-0.0.1-SNAPSHOT.jar

```
![在这里插入图片描述](https://img-blog.csdnimg.cn/7039ce77fb784938954eba642590e800.png#pic_center)


&nbsp;&nbsp;&nbsp;&nbsp;通过consul ui可以看到已经启动了3个instance:
```
http://localhost:8500/ui/dc1/services
```
![在这里插入图片描述](https://img-blog.csdnimg.cn/1887dce0170a4712aae2245e1a1add82.png#pic_center)
![在这里插入图片描述](https://img-blog.csdnimg.cn/0ea7fc5210754a84b48dd98cc726fc3f.png#pic_center)


&nbsp;&nbsp;&nbsp;&nbsp;访问页面：
```
http://localhost:9991/getUserByName?name=xiaoming
```

&nbsp;&nbsp;&nbsp;&nbsp;consumer:
![在这里插入图片描述](https://img-blog.csdnimg.cn/ffe0badf0647426d841f79c3885a4c66.png#pic_center)
&nbsp;&nbsp;&nbsp;&nbsp;调用了provider2:
![在这里插入图片描述](https://img-blog.csdnimg.cn/f3e0bc43ef944049be092407b6c568d2.png#pic_center)

&nbsp;&nbsp;&nbsp;&nbsp;再次访问，则调用provider1：说明底层使用roundrobin负载均衡
![在这里插入图片描述](https://img-blog.csdnimg.cn/7601eba2b3664c80ad794941a9338cbe.png#pic_center)

5. nacos测试：

&nbsp;&nbsp;&nbsp;&nbsp;nacos上的值：
![在这里插入图片描述](https://img-blog.csdnimg.cn/23f66819f7e04500bdd952fa8c78e785.png#pic_center)

&nbsp;&nbsp;&nbsp;&nbsp;调用http://localhost:9991/getKey，得到myKey的值：
![在这里插入图片描述](https://img-blog.csdnimg.cn/a882bb2439f7424db0c7cff0879130ab.png#pic_center)

&nbsp;&nbsp;&nbsp;&nbsp;修改myKey:
```
curl -X POST "http://101.43.195.208:8848/nacos/v1/cs/configs?dataId=spring-cloud-consumer.properties&group=DEFAULT_GROUP&content=myKey=123"
```

![在这里插入图片描述](https://img-blog.csdnimg.cn/b62ae5f9c33f45ffb0037ca242d35708.png#pic_center)

&nbsp;&nbsp;&nbsp;&nbsp;可以看到整个文件内容都被替换了，原来的useLocalCache也没有值了。
![在这里插入图片描述](https://img-blog.csdnimg.cn/7f304912f82244c180afb12b9cf6d83a.png#pic_center)
&nbsp;&nbsp;&nbsp;&nbsp;再次getKey:
![在这里插入图片描述](https://img-blog.csdnimg.cn/968e611fe0a14a9198a31e4e08c30dcc.png#pic_center)
6. 异常测试：
   

&nbsp;&nbsp;&nbsp;&nbsp;(1) 超时测试，会调用三次provider:

```
   http://localhost:9991/timeout?timeout=2

```

   ![在这里插入图片描述](https://img-blog.csdnimg.cn/97c4878b97a141cc8958539f84662351.png#pic_center)
   consumer:
   ![在这里插入图片描述](https://img-blog.csdnimg.cn/e63297114fe342c28af4fe59b48bb4fa.png#pic_center)
   provider1:
   ![在这里插入图片描述](https://img-blog.csdnimg.cn/1303f0993bfc45b8829e23ba6669fa21.png#pic_center)


provider2:
![在这里插入图片描述](https://img-blog.csdnimg.cn/dbb66af8d1944ed4b4636693ea178920.png#pic_center)


&nbsp;&nbsp;&nbsp;&nbsp;(2) 运行时异常，500，不重试

```
http://localhost:9991/fail?name=xiaoming

```

![在这里插入图片描述](https://img-blog.csdnimg.cn/cad1e02a8fa840fb98943eac97f82444.png#pic_center)

consumer:
![在这里插入图片描述](https://img-blog.csdnimg.cn/45bf085cc91f4a259a7f30fb9fc1a44b.png#pic_center)
provider2:
![在这里插入图片描述](https://img-blog.csdnimg.cn/448a71cfb04848668ade04611d926ccc.png#pic_center)


### 更多精彩样例，请关注公众号：
![扫一扫](https://img-blog.csdnimg.cn/e021faa547534e0080356b65d995b6f8.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBAYWNfZGFvX2Rp,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)


