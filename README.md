Terraform Infra Provisioning
Terraform is an Infrastructure as Code (IaC) tool that allows you to provision, manage, and version your cloud infrastructure in a declarative way. In this project, Terraform is used to provision Azure infrastructure components like:
•	Resource Group
•	Azure Container Registry (ACR)
•	Azure Kubernetes Service (AKS)
•	Role assignments and identity
•	Networking (optional)
By maintaining infrastructure in code, we achieve consistency, automation, and easy repeatability.
Terraform Directory: 
You may choose to organize the Terraform infrastructure code in a separate repository (e.g., buddywise-infra) for better separation of concerns from your application code.
 

main.tf
This file defines Azure resources like:
•	Resource Group (azurerm_resource_group)
 
•	Azure Kubernetes Cluster (azurerm_kubernetes_cluster)
 









•	Azure Container Registry (azurerm_container_registry)
 
You can modularize the code later using Terraform Modules.
Backend Configuration for State Management:
To support collaborative deployments and maintain state across environments, configure a remote backend using Azure Storage:

 
Ensure the storage account and blob container are created before running terraform init.



Commands to Deploy Infrastructure:
# Navigate to the Terraform directory
cd terraform/
# Initialize Terraform backend and provider plugins
terraform init
# Preview infrastructure changes
terraform plan
# Apply and provision resources in Azure
terraform apply

Use the commands below from the CLI to deploy from git
:>  git add.
:>  git commit -m "Deployment infra using Terraform" (you use your own massage while committing)
:>  git push origin main

 



Verify Kubernetes Deployment:
Once the infrastructure is deployed and the GitHub Actions pipeline has run:
Before know the status for nodes and deployment status please run below command
$> az aks get-credentials --resource-group buddywise-rg --name buddywise-aks
kubectl get deployments -n prod # Verify Deployment Status
 
kubectl get svc           # Check service exposure and IPs
 
kubectl get nodes   # See the Nodes Status
 

Best Practices & Notes
•	 All credentials (Client ID, Tenant ID, etc.) should be stored in GitHub Secrets.
•	 Use a remote backend for state management in production.
•	 Use az aks get-credentials to configure kubectl locally:


