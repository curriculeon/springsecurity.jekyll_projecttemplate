FROM jekyll/jekyll

#Install Java and cleanup after in the same layer
RUN apk update && apk add openjdk8 && rm -rf /var/lib/apt/lists/*

COPY ./target/springboot-jsp-login-page-1.0.jar ./springboot-jsp-login-page-1.0.jar
CMD ["java","-jar","springboot-jsp-login-page-1.0.jar"]
