#!/usr/bin/env groovy
pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
        AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key ')
        AWS_DEFAULT_REGION = "ap-south-1"
    }
    stages {
        stage("Create an EKS Cluster") {
            steps {
                script {
                    dir('terraform') {
                        sh "terraform init"
                        sh "terraform apply -auto-approve"
                    }
                }
            }
        }
        stage("Deploy to EKS") {
            steps {
                script {
                    dir('kubernetes') {
                        sh "aws eks --region ap-south-1 update-kubeconfig --name eks-cluster"
                        sh "kubectl apply -f nginx-deployment.yaml"
                        sh "kubectl apply -f nginx-service.yaml"
                    }
                }
            }
        }
    }
}
