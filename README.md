# Configuración de Jenkins en Kubernetes

## Versiones Usadas

Jenkins 2.146
Swarm plugin 3.14

# Despliegue en kubernetes

## 1) Creando el POD

El siguiente comando va desplegar un servidor de Jenkins y controlador de replica
para mantener una sola instancia del mismo.

kubectl create -f k8s_deploy/jenkins-server-vagrant.yml

Puede hacer verificación de esto usando:

kubectl get pods
kubectl get rc

## 2) Creando el Servicio

kubectl create -f service-vagrant.yml

Puede hacer verificación de esto usando:

kubectl get services
kubectl describe services/jenkins


# Para leer
[Jenkins en kubernetes 2015](https://es.slideshare.net/carlossg/scaling-jenkins-with-docker-and-kubernetes-57432122)
[Jenkins y swarm](https://github.com/carlossg/jenkins-swarm-docker)
[Imagenes de Docker para Jenkins](https://hub.docker.com/r/jenkins/jenkins/)
