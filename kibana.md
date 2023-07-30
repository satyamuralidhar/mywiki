## **kibana**

    $ helm show values elastic/kibana > kibana.yml
    
    $ helm install kibana elastic/kibana --set imageTag=7.17.3 -f kibana.yml -n dop

    2. Retrieve the elastic user's password.

    $ kubectl get secrets --namespace=dop elasticsearch-master-credentials -ojsonpath='{.data.password}' | base64 -d

    Note: username: elastic 
    3. Retrieve the kibana service account token.

    $ kubectl get secrets --namespace=dop kibana-kibana-es-token -ojsonpath='{.data.token}' | base64 -d

    $ kubectl expose svc/kibana-kibana --type=NodePort --name=cuskibanasvc --target-port=5601 -n dop