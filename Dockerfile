
FROM tomcat:9.0.89
RUN rm -rf /usr/local/tomcat/webapps/*



# Copy the project files into the Docker image
COPY *.war /usr/local/tomcat/webapps

EXPOSE 8082
CMD ["catalina.sh","run"]
