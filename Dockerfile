FROM vishant07/kafka-manager:v1
COPY ./kafka-run-class.sh /opt/kafka/bin/kafka-run-class.sh
RUN chmod +x /opt/kafka/bin/kafka-run-class.sh
EXPOSE 80 8080
ENTRYPOINT [ "sh" , "/opt/kafka/bin/kafka-run-class.sh" ]