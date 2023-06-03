                                  JENKINS CI/CD PIPELINE


This project will show us  how to deploy a simple containerized  node.js application to the Kubernetes cluster(minikube) using Jenkins CI/CD Pipeline. Jenkins is one of the most popular continuous integration/continuous delivery and deployment (CI/CD) automation platforms. 

We will use Jenkins CI/CD Pipeline with multiple stages to deploy the simple containerized application.

A Jenkins pipeline has multiple stages and steps for implementing the CI/CD workflow. In Jenkins, we will use a JENKINSFILE to define and declare all the stages for our Jenkins CI/CD Pipeline. ‘JENKINSFILE’ is popularly known as “pipeline as code”. Jenkins will execute the ‘Jenkinsfile’ and implement the pipeline. The pipeline will automate the stages defined in the Jenkinsfile. 


The  ‘Jenkinsfile’ will have multiple stages. The stages will be for:


   1. Scanning/fetching the source code repositary.
   2. scanning the application using SONARQUBE
   3. Building a Docker image
   4. Scanning the Image using Trivy.
   5. Pushing the Docker image to Docker Hub.
   6. Pulling the Docker image from the Docker Hub repository and creating a containerized application.
   7. Deploy the containerized application to the Kubernetes cluster. 


 When we are using Jenkins, we have to connect it to teh  Source Code Management (SCM) Git repository. The repository will host your ‘Jenkinsfile’ and other application files. Jenkins will use the files in the GitHub repository to deploy the applications to the Kubernetes cluster.


Before we start working on this project, we need to have the following:

:-Docker Desktop: we will use Docker to build and run Jenkins as a Docker Container. 
:-GitHub account: We will use GitHub as our Source Code Management (SCM) Git repository. we will push our Jenkinsfile, :-application, and deployment files to our GitHub repository. 
:-Kubernetes Cluster: Minikube
:-docker-hub account
: sonarQube installation

STEPS:-

step -1

Here we are running jenkins as docker container.
docker run --name myjenkins-container -p 8080:8080 -p 60000:60000 -v /var/jenkins_home jenkins:jenkins

Open the  web browser and type localhost:8080 to access the Jenkins application:


image.png

We can get the password by logging in to the conatiner i.e docker exec and in the path var/jenkins_home/secrets/intialpassword

image.png

image.png


step -2

Install Docker Pipeline Plugin


image.png

step -3

Install Kubernetes Plugin

image.png

The Docker pipeline will enable to integrate Kubernetes with Jenkins. With the Kubernetes plugin, we can deploy the containerized application to the Kubernetes cluster using CI/CD Jenkins Pipeline.

step-4

Adding github credentials to the jenkins

step-5

Adding dockerhub credentials to the jenkins

step-6

Installing sonarQube and configurating the webhook by generating the Token.

image.png

step-7

Adding the Sonaqube server deatils in jenkins by using the prevously cretaed token.(We nned to install SonarQube scanner plugin)


step-8

Install minikube  by using kubernetes official documentaion and start it.

minikube start


step-9

Create New github repositary and we need  push our Jenkinsfile, application files, and deployment files to the new GitHub repository.

step-10

 Create a Kubernetes Deployment YAML file to run the pods in replicaset.

step-11

 Create a Kubernetes Service Deployment YAML file expose the application to exteral traffic.

step-12


Create a Jenkinsfile  which has all the steps to run the pipeline job.

Step-13

Push all above files to the newely created github repo.

step-14

Configure the github source code reposiatry with jenkins.

![image](https://github.com/srinibasswain/ybrant-test/assets/51942428/1d4c5522-cfd6-4b52-b159-245d41b0a114)


![image](https://github.com/srinibasswain/ybrant-test/assets/51942428/8018db32-6147-4901-83f5-1f83e903a468)



step-15

Build the Multibranch project



Here we rare using main.tf file to provision a new ec2 instance in AWS console and Ansible-playbook.yaml file to install mongodb in the same ec2 instance using Ansible.


