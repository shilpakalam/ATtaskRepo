(for mac)
minikube start --driver=virtualbox

minikube addons enable registry

eval $(minikube docker-env)

docker build -t shilpa-django:1.0 .

docker images

# Make sure you see your image

kubectl create ns shilpa-ns

kubectl apply -f deployment.yaml -n shilpa-ns

kubectl apply -f service.yaml -n shilpa-ns

minikube service shilpa-deployment -n shilpa-ns

# Optionally if you want to test it locally

docker run -d -p 8000:8000 -e 'ATC_USERNAME=nmereddi' -e 'ATC_PASSWORD=password' shilpa-django:1.0


(for windows)
----   minikube start --driver=virtualbox /    minikube start --driver=docker

----   minikube addons enable registry 
   ( Registry addon with docker driver uses port 64973 please use that instead of default port 5000 (powershell))
----   minikube docker-env

----   docker build -t shilpa-django:1.0 .  
----   docker images

----   kubectl create ns shilpa-ns   
----   kubectl apply -f deployment.yaml -n shilpa-ns  (deployment.apps/shilpa-deployment created)
----   kubectl apply -f service.yaml -n shilpa-ns  (service/shilpa-deployment created)

allowed hosts are to be given in settings.py

