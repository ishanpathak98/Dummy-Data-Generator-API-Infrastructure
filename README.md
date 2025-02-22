#  Dummy Data Generator API on AWS ECS

A scalable, secure, and production-ready dummy data generation API deployed on AWS ECS with blue-green deployment strategy. This infrastructure setup follows AWS best practices and implements modern DevSecOps principles.

##  Table of Contents
- [Architecture Overview](#architecture-overview)
- [Features](#features)
- [Infrastructure Components](#infrastructure-components)
- [Security](#security)
- [Deployment Strategy](#deployment-strategy)
- [Getting Started](#getting-started)
- [Repository Structure](#repository-structure)
- [Local Development](#local-development)
- [Deployment](#deployment)
- [Monitoring](#monitoring)

# Architecture Overview

![Architecture Diagram](./docs/images/architecture.png)

The application implements a modern cloud-native architecture with:
- Containerized NodeJS API
- Authentication & Rate Limiting
- Blue-Green Deployment
- Comprehensive Monitoring
- Automated CI/CD Pipeline

## Features

- **API Security**
  - AWS Cognito Authentication
  - API Gateway Rate Limiting
  - WAF Protection

- **High Availability**
  - Multi-AZ Deployment
  - Auto-scaling
  - Blue-Green Deployment

- **Monitoring & Observability**
  - Prometheus Metrics
  - Grafana Dashboards
  - CloudWatch Integration

- **DevSecOps**
  - Automated CI/CD
  - Security Scanning
  - Code Quality Checks

## Infrastructure Components

### Core Services
- AWS ECS (Elastic Container Service)
- Application Load Balancer
- Amazon ECR
- AWS Cognito
- API Gateway

### Monitoring Stack
- Prometheus
- Grafana
- CloudWatch

### CI/CD Pipeline
- GitHub Actions
- SonarQube
- Trivy

## Security

- API Authentication via Cognito
- Rate Limiting at API Gateway
- Container Security Scanning
- Infrastructure Security:
  - Private Subnets for ECS Tasks
  - Security Groups
  - IAM Roles with Least Privilege

## Deployment Strategy

### Blue-Green Deployment
1. New version deployed to green environment
2. Health checks performed
3. Traffic switched via ALB
4. Old version terminated

## Getting Started

### Prerequisites
```bash
# Required tools
aws-cli
terraform >= 1.0.0
docker
```

### Repository Structure
```
/
├── .github/
│   └── workflows/           # GitHub Actions workflows
├── terraform/              # Infrastructure as Code
│   ├── modules/            # Terraform modules
│   ├── environments/       # Environment configurations
│   └── main.tf            # Main Terraform configuration
├── monitoring/            # Monitoring configurations
│   ├── prometheus/        # Prometheus configuration
│   └── grafana/           # Grafana dashboards
├── docs/                  # Documentation
│   └── images/           # Architecture diagrams
└── README.md             # Project documentation
```

## Local Development

```bash
# Clone repository
git clone https://github.com/yourusername/dummy-data-api-ecs.git

# Initialize Terraform
cd terraform
terraform init

# Apply infrastructure
terraform plan
terraform apply
```

## Monitoring

- **Metrics Collected:**
  - API Response Times
  - Error Rates
  - Container Metrics
  - ECS Service Metrics

- **Dashboards:**
  - API Performance
  - Infrastructure Health
  - Security Metrics





