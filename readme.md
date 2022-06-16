# DEVOPS - TESTE DE DOCKER E KUBERNETES

Clusterizar uma aplicação criada pelo candidato que fique exibindo no log do pod a cada vinte segundos um valor de uma secret de Kubernetes.

## Pré-requisitos

Para executar essa aplicação em ambiente local, é necessário que você já tenha instalado os seguintes softwares:

- Docker
- Minikube
- Kubectl

## Como executar a aplicação

Para que os próximos comandos sejam executados sem problemas, certifique que esteja no diretório raiz do projeto.

Inicie o `minikube`:

```
minikube start
```

Certificar-se se o serviço está `running`:

```
minikube status
```

Para criar a secret, informe ao kubectl o arquivo `secrets.yml`:

```
kubectl apply -f secrets.yml
```

Para criar um deployment, informe ao kubectl o arquivo `deployment.yml`:

```
kubectl apply -f deployment.yml
```

Certificar-se que a secret e o deployment foram criados corretamente:

```
kubectl get secrets

kubectl get deployments
```

Certificar-se que após a criação do deployment, os Pods foram criados (nesse caso, 3 replicas devem estar `running`):

```
kubectl get pods

# output:
NAME                                        READY   STATUS    RESTARTS   AGE
2rpnet-teste1-deployment-68d84bccd5-9v886   1/1     Running   0          3m17s
2rpnet-teste1-deployment-68d84bccd5-bs8ql   1/1     Running   0          3m22s
2rpnet-teste1-deployment-68d84bccd5-h5mhq   1/1     Running   0          3m43s
```

Visualizar o log de um determinado Pod (alterar o nome do Pod conforme a saída do comando acima):

```
kubectl logs -f 2rpnet-teste1-deployment-68d84bccd5-9v886
```
