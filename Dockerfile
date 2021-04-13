FROM jamesdbloom/docker-java8-maven
COPY ./target/springboot-jsp-login-page-1.0.jar ./springboot-jsp-login-page-1.0.jar
CMD ["java","-jar","springboot-jsp-login-page-1.0.jar"]
