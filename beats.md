**metric & file beat:**

    $ helm show values elastic/metricbeat > metric.yml
    
    $ helm show values elastic/filebeat > file.yml

    $ helm install metricbeat elastic/metricbeat --set imageTag=7.17.3 -f metric.yml -n dop

    $ helm install filebeat elastic/filebeat --set imageTag=7.17.3 -f file.yml -n dop

