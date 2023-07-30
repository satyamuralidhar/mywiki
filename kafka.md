    $ helm show values bitnami/kafka > kafka.yaml

<img src="kafka/kfk1.png"  width="50%" height="20%">


    $ helm install kafka bitnami/kafka -f kafka.yaml -n dop
    
    $ kubectl run kafka-client --restart='Never' --image docker.io/bitnami/kafka:3.5.1-debian-11-r1 --namespace dop --command -- sleep infinity
    
    $ kubectl exec --tty -i kafka-client --namespace dop -- bash

    PRODUCER:
        kafka-console-producer.sh \
            --broker-list kafka-0.kafka-headless.dop.svc.cluster.local:9092 \
            --topic test

    CONSUMER:
        kafka-console-consumer.sh \
            --bootstrap-server kafka.dop.svc.cluster.local:9092 \
            --topic test \
            --from-beginning

    $ helm show values bitnami/zookeeper > zookeeper.yaml
    
    $ helm install zookeeper bitnami/zookeeper -f zookeeper.yaml -n dop


    $ kubectl expose svc/kafka --type=NodePort --name=cuskfksvc --target-port=9092 -n dop

    $ kubectl expose svc/zookeeper --type=NodePort --name=cuszoosvc --target-port=2181 -n dop

    $ kubectl expose svc/kafka --type=NodePort --name=cuskfksvc --target-port=9092 -n dop

* updated node port

        $ kubectl edit svc/cuskfksvc -n dop
        $ kubectl edit svc/cuszoosvc -n dop


