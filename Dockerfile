FROM openjdk:8

COPY ./target/springboot-jsp-login-page-1.0.war ./springboot-jsp-login-page-1.0.war
CMD ["java","-jar","springboot-jsp-login-page-1.0.war"]
