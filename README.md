# 🚀 Déploiement de Metal Slug sur AWS EKS avec Terraform

Metal Slug est un jeu légendaire que nous aimons tous ! Dans ce projet, nous allons déployer **Metal Slug** sur **Amazon EKS (Elastic Kubernetes Service)** en utilisant **Terraform** et gérer l’infrastructure avec les ressources AWS.

![Metal Slug](https://imgur.com/03tLbE5.png)

---

## 📌 **Aperçu du projet**

Ce projet met en place un **cluster EKS** sur AWS et déploie le jeu **Metal Slug** en utilisant **Terraform** et des manifestes Kubernetes. Le déploiement inclut :

- ✅ Provisionnement d’un cluster Amazon EKS
- ✅ Infrastructure as Code (IaC) avec Terraform
- ✅ Déploiement et Service Kubernetes pour Metal Slug
- ✅ Backend AWS S3 pour la gestion de l’état Terraform
- ✅ Rôles et politiques IAM pour EKS et les nœuds de travail

---

## 📁 **Structure du projet**

```bash
📂 DevOps-06
│── 📂 EKS-TF               # Fichiers de configuration Terraform pour AWS EKS
│   ├── backend.tf          # Backend S3 pour la gestion de l’état Terraform
│   ├── main.tf             # Définition du cluster AWS EKS et du Node Group
│   ├── provider.tf         # Configuration du fournisseur AWS
│   ├── deployment.yaml     # Déploiement Kubernetes pour Metal Slug
│   ├── service.yaml        # Service Kubernetes pour exposer l’application
│── 📄 README.md            # Documentation du projet
```

---

## 📌 **Prérequis**

Avant de commencer, assurez-vous d’avoir installé :

- ✅ **Terraform** (>=1.3.0)  
- ✅ **AWS CLI** (configuré avec les identifiants appropriés)  
- ✅ **kubectl** (pour gérer les ressources Kubernetes)  
- ✅ **Docker** (pour la conteneurisation)  

---

## 🛠️ **Mise en place et déploiement**

### 1️⃣ **Cloner le dépôt**

```bash
git clone https://github.com/Mamiche/DevOps-06.git
cd EKS-TF
```

### 2️⃣ **Initialiser et appliquer Terraform**

```bash
terraform init      # Initialiser le backend Terraform
terraform plan      # Prévisualiser les changements
terraform apply -auto-approve  # Déployer sur AWS
```

### 3️⃣ **Configurer le contexte Kubernetes**

```bash
aws eks update-kubeconfig --name EKS_DEVOPS_06 --region eu-west-3
```

### 4️⃣ **Déployer l’application Metal Slug**

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

### 5️⃣ **Accéder à l’application**

Une fois déployé, obtenir l’URL du LoadBalancer externe :

```bash
kubectl get services metal-slug-service
```

Accédez à **Metal Slug** dans votre navigateur via l’URL affichée.

---

## 🎯 **Points forts du projet**

- **AWS EKS** : Cluster Kubernetes géré pour un déploiement évolutif.  
- **Terraform** : Infrastructure as Code pour un provisionnement automatisé.  
- **Kubernetes** : Déploiement conteneurisé du jeu.  
- **AWS S3 Backend** : Gestion à distance de l’état Terraform.  


