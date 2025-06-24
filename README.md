🚀 DevOps Assignment: Nginx Reverse Proxy + Docker

A hands-on DevOps project showcasing the use of Nginx as a reverse proxy to route traffic between two microservices one written in Go and the other in Python, all containerized using Docker and orchestrated with Docker Compose.

📁 Project Structure

```
.
├── docker-compose.yml
├── nginx
|   └── nginx.conf
│   └── Dockerfile
├── service_1
│   └── Dockerfile
├── service_2
│   └── Dockerfile
└── README.md
```



🌐 Live Deployment
Deployed on AWS EC2
Accessible at: http://13.232.219.85:8080/

🔗 Live Endpoints

Go Service
/service1/ping → Ping
/service1/hello → Hello

Python Service
/service2/ping → Ping
/service2/hello → Hello

Nginx Health Check
/health → Health

⚙️ Setup Instructions
🔧 Local Development

# Clone the repository
git clone (https://github.com/prajwalthaware/Assignment.git)

# Build and start services

docker-compose up --build

☁️ AWS Deployment

Launch an Ubuntu-based EC2 instance

Install Docker and Docker Compose

Clone this repository

Open port 8080 in the security group

Run:

docker-compose up --build -d


🔀 Routing Architecture
Nginx runs on port 8080 and acts as a reverse proxy:

Path Prefix	Routed To
/service1/*	Go service at 8001
/service2/*	Python service at 8002

Example:

/service1/ping → service_1:8001/ping

/service2/hello → service_2:8002/hello

✅ Features
✅ Containerization: All services run in Docker

✅ Reverse Proxy: Nginx handles routing

✅ Health Checks: Service monitoring endpoint

✅ Request Logging: Logged with timestamp and path

✅ Single Command Deploy: docker-compose up --build

✅ Cloud Deployment: Hosted on AWS EC2

✅ Modular Structure: Easy to maintain and scale

🧪 Test Endpoints
🖥️ Local Testing

# Go Service
curl http://localhost:8080/service1/ping
curl http://localhost:8080/service1/hello

# Python Service
curl http://localhost:8080/service2/ping
curl http://localhost:8080/service2/hello

# Nginx Health
curl http://localhost:8080/health

🌐 Live Testing

# Go Service
curl http://13.232.219.85:8080/service1/ping
curl http://13.232.219.85:8080/service1/hello

# Python Service
curl http://13.232.219.85:8080/service2/ping
curl http://13.232.219.85:8080/service2/hello

# Nginx Health
curl http://13.232.219.85:8080/health


🏗 Architecture Diagram (Text)


```
Client Request
     ↓
 AWS EC2 (Port 8080)
     ↓
+----------------------+
|   Nginx Container    |
|   (Reverse Proxy)    |
+----------------------+
       ↓         ↓
 /service1/*   /service2/*
    ↓             ↓
 Go App       Python App
 (Port 8001)  (Port 8002)

```
🛠 Tech Stack
Layer	Tool/Technology
Reverse Proxy	Nginx
Backend	Go, Python
Containerization	Docker, Docker Compose
Cloud Platform	AWS EC2
Architecture	Microservices

📊 Monitoring & Logs
docker-compose logs nginx
docker-compose logs service_1
docker-compose logs service_2

AWS
docker logs nginx-proxy
docker logs go-service
docker logs python-service

🔒 Security Considerations
Services isolated in Docker containers

Internal communication within Docker network

Only port 8080 exposed via Nginx

AWS security groups restrict access to required ports
