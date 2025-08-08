FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# ✅ Install Maven
RUN apk add --no-cache maven

# ✅ Copy Maven files and sources
COPY pom.xml .
COPY src ./src

# ✅ Build the project (skipping tests)
RUN mvn clean package -DskipTests

# ✅ Copy JAR to app.jar (optional: rename the jar)
RUN cp target/*.jar app.jar

# ✅ Run the app
CMD ["java", "-jar", "app.jar"]

