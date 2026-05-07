# EKS Sample Microservices App

This sample app deploys a simple microservices demo into your EKS cluster.

It contains:
- `backend` microservice using `hashicorp/http-echo`
- `frontend` microservice using `nginx` and a ConfigMap-based static page
- a `LoadBalancer` service exposing the frontend

## Deploy

1. Update kubeconfig for your EKS cluster:

```powershell
aws eks --region us-east-1 update-kubeconfig --name example-eks-cluster
```

2. Deploy the app:

```powershell
kubectl apply -f sample-app/app.yaml
```

3. Verify the services:

```powershell
kubectl get all -n microservices-demo
kubectl get svc -n microservices-demo
```

4. Get the frontend URL from the LoadBalancer external IP:

```powershell
kubectl get svc frontend -n microservices-demo
```

Then open the external IP in your browser.
