FROM centos

MAINTAINER xiaqingbo

COPY jdk1.8.0_192 jdk1.8.0_192
ADD target/cloud-eureka-server-1.0.0.jar app.jar

ENV JAVA_HOME=/jdk1.8.0_192
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar

EXPOSE 8761

ENTRYPOINT ["java","-jar","/app.jar"]