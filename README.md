# 🚀 Dummy Data Generator API on AWS ECS

A scalable, secure, and production-ready dummy data generation API deployed on AWS ECS with blue-green deployment strategy. This infrastructure setup follows AWS best practices and implements modern DevSecOps principles.

## 📋 Table of Contents
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

# 🏗️ Architecture Overview

![Architecture Diagram](./docs/images/architecture.png)

The application implements a modern cloud-native architecture with:
- Containerized NodeJS API
- Authentication & Rate Limiting
- Blue-Green Deployment
- Comprehensive Monitoring
- Automated CI/CD Pipeline

## ✨ Features

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

## 🛠️ Infrastructure Components

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






