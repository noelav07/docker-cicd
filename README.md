# GitHub Actions CI/CD Workflow for Docker Projects

This repository uses GitHub Actions to automate the following steps:

1.  Run unit tests
2.  Scan Docker images using [Trivy](https://github.com/aquasecurity/trivy)
3.  Push Docker images to [Amazon ECR (Elastic Container Registry)](https://aws.amazon.com/ecr/)

---

##  Workflow Overview

The GitHub Actions workflow (`.github/workflows/ci.yml`) performs the following steps on every `push` to the `main` branch:

1. **Checkout code**
2. **Set AWS credentials**
3. **Build Docker image**
4. **Scan Docker image using Trivy**
5. **Runs the docker images as a container and performs health check**
6. **Authenticate with ECR and push image**

---

