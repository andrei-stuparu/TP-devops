FROM openjdk
COPY tp-docker-1.0.0.jar /app/
EXPOSE 8080
ENV dburl 127.0.0.1:5432/tp_devops
ENV dbname tp_devops
ENV dbpwd tp_devops

ENV POSTGRES_USER = tp_devops
ENV POSTGRES_PASSWORD = tp_devops
ENV POSTGRES_DB = tp_devops
ENTRYPOINT java -Ddatabase.url=$dburl -Ddatabase.username=$dbname -Ddatabase.password=$dbpwd -jar /app/tp-docker-1.0.0.jar 
