## **Vault:**

    $ helm repo add hashicorp https://helm.releases.hashicorp.com
    
    $ helm search repo hashicorp/vault
    
    $ helm show values hashicorp/vault > vault.yml
    
    $ sudo vi vault.yml --> dev mode == True
    
    $ helm install vault hashicorp/vault -f vault.yml

    $ helm get manifest vault
    
    $ kubectl expose svc/vault --type=NodePort --name=cusvaultsvc --target-port=8200 -n dop
    
    $ kubectl edit svc/cusvaultsvc -n dop --> updated NodePort 31021

    $ kubectl exec -it vault-0 -n dop -- vault status

    $ kubectl logs vault-0 -n doo --> to get root key

    $ kubectl exec -it vault-0 -n dop -- vault operator unseal