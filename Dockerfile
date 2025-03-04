FROM eclipse-temurin:17

ENV PORT 8080

WORKDIR /APP

COPY .mvn/ .mvn
COPY mvnw pow.xml ./
RUN ./mvnw dependency:resolve

COPY src ./src
CMD ["./mvnw"."spring-boot:run"]
