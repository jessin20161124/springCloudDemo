#!/bin/bash

#docker build -f provider/Dockerfile  -t spring-cloud-provider-demo:0.0.1 .
#docker build -f consumer/Dockerfile  -t spring-cloud-consumer-demo:0.0.1 .
#push registry

kubectl apply -f k8s/consul-deploy.yml
#找到启动的consul容器：kubectl get pods
#使用端口映射：kubectl port-forward consul-6b95969c9-qqhn5 8500:8500
#然后访问：http://localhost:8500/ui/dc1/services/consul/instances
kubectl apply -f k8s/consul-service.yml

#获取consul cluster ip
kubectl get service consul

#启动mysql
kubectl apply -f k8s/mysql-deplyment.yml
kubectl apply -f k8s/mysql-service.yml

#初始化数据库init.sql

#先删除
kubectl delete deployment provider
#部署provider
kubectl apply -f k8s/provider-deploy.yml
#查看启动的pod
kubectl get pods
#查看pod日志
#kubectl logs --follow provider-5cd9974c5-97qj6

#部署consumer
kubectl apply -f k8s/consumer-deploy.yml

#部署consumer service
kubectl apply -f k8s/consumer-service.yml

#通过端口访问consumer service
#http://localhost:30001/timeout?timeout=3

#应用ingress controller定义文件，创建nginx-ingress-controller和ingress-service，底层会创建nginx
kubectl apply -f k8s/ingress-nginx-controller.yml
#创建ingress-http代理规则，把规则更新到controller的nginx
kubectl apply -f k8s/ingress-http.yml

