    $ helm repo add fluent https://fluent.github.io/helm-charts
    
    $ helm repo list
    
    $ helm search repo fluent
    
    $ helm show values fluent/fluent-bit > fluentbit.yml

    $ helm install fluentbit fluent/fluent-bit -f fluentbit.yml -n dop
