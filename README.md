# AWS-EKS-OctopusDeploy

This repository contains a code base that you can use to create an EKS cluster and run Octopus Deploy as a deployment in EKS.

## Prerequisites
To use this code base, you will need the following:
1. Terraform installed
2. AWS CLI installed and configured
3. Kubectl installed

## Setting Up EKS
EKS is created and configured via Terraform. The Terraform `main.tf` contains:
1. Creation of an IAM role
2. IAM policy attachment for EKS
3. AKS cluster creation

## Connecting To The EKS Cluster
To connect to the EKS cluster, you will need to set it as the current kube configuration context on localhost. To do so, run the following command:

```
aws eks --region region_name update-kubeconfig --name name_of_eks_cluster
```