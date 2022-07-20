# 基础镜像
FROM openjdk:11.0.9-jre

# 复制jar包到容器
COPY target/hello-helm.jar app.jar

# 启用jvm容器支持
ENV JAVA_OPTS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=80.0 -XX:InitialRAMPercentage=75.0"

# 容器启动命令
ENTRYPOINT java ${JAVA_OPTS} -Dspring.profiles.active=prod -jar app.jar
