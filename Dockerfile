# Utiliser une image de base Java (OpenJDK) pour exécuter l'application
FROM openjdk:22

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier JAR généré dans le conteneur
COPY --from=build target/test1-0.0.1-SNAPSHOT.jar test1.jar

# Exposer le port sur lequel le microservice Spring Boot sera accessible
EXPOSE 9000

# Lancer l'application Spring Boot lorsque le conteneur est démarré
ENTRYPOINT ["java", "-jar", "/app/test1.jar"]
