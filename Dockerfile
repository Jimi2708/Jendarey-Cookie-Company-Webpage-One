# Use the official Tomcat image as the base image
FROM tomcat:10.1.13-jdk17

# Set metadata for the image
LABEL author="Akin"
LABEL project="Jendarey-Cookie-Company-Webpage-project"

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the .war file into the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for the application
EXPOSE 8080

# Define the default command to start Tomcat
CMD ["catalina.sh", "run"]

# docker build . -t jendaredocker/jendarey-cookie-company-webpage-main
# docker run -d -p 18000:8080 --name=cookies-webpage jendaredocker/jendarey-cookie-company-webpage-main:latest
# docker run -d -p 19000:8080 --name=cookies-web jendaredocker/jendarey-cookie-company-webpage-main:latest


# docker me
# docker-compose up
# docker exec -it ac7 bash 
# ls /usr/local/tomcat/logs
# cat /usr/local/tomcat/logs
# docker logs jendarey-tech-mongo-1
# docker run -d -p 14000:8080 --name=voting-app4 jendaredocker/Jendarey-Cookie-Company-Webpage-main:latest
# docker run -d -p 16000:8080 --name=cookies-web jendaredocker/jendarey-cookie-company-webpage-main:latest
# docker pull 10.1.13-jdk17
# Copy the .war file to the `webapps` directory
# docker cp target/a23-webpage.war tomcat:10.1.13-jdk17:/usr/local/tomcat/webapps/
# Start the Tomcat container
# docker run -it -p 8080:8080 tomcat:10.1.13-jdk17
# docker compose up
# docker exec -it ac7 bash 
# /usr/local/tomcat/logs#
# docker logs jendarey-tech-mongo-1
