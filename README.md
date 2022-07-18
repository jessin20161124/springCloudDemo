## spring cloud demo

### 已完成功能列表
- [x] 基于spring boot 2.1.7.RELEASE + spring cloud Greenwich.SR6进行实验，版本需要对应
- [x] 使用nacos作为配置中心
- [x] 支持使用nacos/consul作为注册中心
- [x] consumer和provider通过service name来进行feign client服务调用
- [x] 使用ribbon进行负载均衡
- [x] 实现nacos spring cloud配置变更方法回调
- [x] 支持配置中心变更时refresh属性配置


### TODO LIST
- [ ] spring cloud gateway集成，谓词测试
- [ ] ribbon配置完善

### 实验步骤
1. 开启配置中心

&nbsp;&nbsp;&nbsp;&nbsp;本实例使用的是nacos，已经部署在云端，无需配置
2. 开启注册中心

&nbsp;&nbsp;&nbsp;&nbsp;如果使用nacos则无需配置。如果使用consul，则需要手动启动
```
consul agent -server -ui -dev
```

&nbsp;&nbsp;&nbsp;&nbsp;访问页面：
http://localhost:8500/ui


3. 开启两个provider
```
java -Dserver.port=9999 -jar provider/target/provider-0.0.1-SNAPSHOT.jar
java -Dserver.port=9998 -jar provider/target/provider-0.0.1-SNAPSHOT.jar

```

4. 开启一个consumer，并调用接口测试consumer

```
java -Dserver.port=9991 -jar consumer/target/consumer-0.0.1-SNAPSHOT.jar

```

&nbsp;&nbsp;&nbsp;&nbsp;通过consul ui可以看到已经启动了3个instance:
```
http://localhost:8500/ui/dc1/services
```

&nbsp;&nbsp;&nbsp;&nbsp;访问页面：
```
http://localhost:9991/getUserByName?name=xiaoming
```

### 更多精彩样例，请关注公众号：
![扫一扫](https://img-blog.csdnimg.cn/e021faa547534e0080356b65d995b6f8.png?x-oss-process=image/watermark,type_ZHJvaWRzYW5zZmFsbGJhY2s,shadow_50,text_Q1NETiBAYWNfZGFvX2Rp,size_20,color_FFFFFF,t_70,g_se,x_16#pic_center)


