#构建jar包
FROM  maven:3.3-jdk-8 AS builder

#FROM jessinguo/maven_java8_aliyun:0.0.1 as builder

RUN mkdir -pv ~/.m2

RUN echo '<?xml version="1.0" encoding="UTF-8"?><settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd"><mirrors><mirror><id>alimaven</id><mirrorOf>central</mirrorOf><name>aliyun maven</name><url>http://maven.aliyun.com/nexus/content/repositories/central/</url></mirror></mirrors></settings>' > ~/.m2/settings.xml

##根据git项目名称填写
ARG BUILD_JAR=provider/target/provider-0.0.1-SNAPSHOT.jar
RUN echo `pwd`

ENV PROJECT_ROOT=/project
WORKDIR $PROJECT_ROOT

COPY . $PROJECT_ROOT

RUN  mvn clean package -Dmaven.test.skip=true -U \
	 &&  mkdir -pv output/ \
	 &&  cp -v ${BUILD_JAR} output/

RUN java -version

WORKDIR /data/app/

RUN cp -r /project/output/* .

ARG JAR_NAME=provider-0.0.1-SNAPSHOT.jar
ARG LOG_DIR=/data/logs/provider

RUN mkdir -pv ${LOG_DIR}

#ENV dbIp=101.43.195.208
#ENV dbUser=dada
#ENV dbUserPassword=dsssa

EXPOSE 9999

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xmx1536m", "-Xms1536m", "-XX:-OmitStackTraceInFastThrow", "-XX:+PrintGC","-XX:+PrintGCDateStamps", "-Xloggc:/data/logs/provider/gc-%t.log", "-XX:HeapDumpPath=/data/logs/provider/java.hprof", "-XX:-UseAdaptiveSizePolicy","-XX:+PrintAdaptiveSizePolicy", "-XX:+PrintGCDetails", "-XX:+PrintGCTimeStamps", "-XX:+UseGCLogFileRotation","-XX:MetaspaceSize=128M", "-XX:MaxMetaspaceSize=256m", "-XX:NumberOfGCLogFiles=5", "-XX:GCLogFileSize=128m", "-XX:+HeapDumpOnOutOfMemoryError", "-XX:SurvivorRatio=6", "-XX:NewRatio=1", "-XX:ReservedCodeCacheSize=512m","-XX:InitialCodeCacheSize=512m", "-XX:CMSInitiatingOccupancyFraction=70", "-XX:+UseCMSInitiatingOccupancyOnly","-XX:+UseCMSCompactAtFullCollection", "-XX:CMSFullGCsBeforeCompaction=0", "-XX:+CMSParallelInitialMarkEnabled","-XX:PrintCMSStatistics=1", "-XX:+CMSScavengeBeforeRemark", "-XX:+UseConcMarkSweepGC", "-XX:+PrintGCApplicationStoppedTime","-jar","provider-0.0.1-SNAPSHOT.jar","--spring.profiles.active=prd","--logging.file=/data/logs/provider/bps.log"]
