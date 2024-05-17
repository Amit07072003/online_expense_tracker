
FROM tomcat:9.0.89
RUN rm -rf /src/main/webapp/*



# Copy the project files into the Docker image
COPY online_expense_tracker.war /src/main/webapp

EXPOSE 8082
CMD ["catalina.sh","run"]
