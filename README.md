# paytm-insider-devops
This is a task for PaytmInsider on Kubernetes

# Step 1: Create pods
$ kubectl apply -f cicdk8_deployment.yaml -n cicdk8ns 

# Step 2: Create service
$ kubectl apply -f cicdk8_svc.yaml -n cicdk8ns 

# Step 3: Create Horizontal Pod Autoscaler
$ kubectl apply -f cicdk8_hpa.yaml -n cicdk8ns 

# Step 4: Perform Load test in different terminal
$ kubectl run --generator=run-pod/v1 -it --rm load-generator --image=busybox /bin/sh

Execute below commands in busy-box pod
# while true; do wget -q -O- http://php-apache; done

# Step 5: Check the higher CPU load by   (CPU load increased to 200%)

$ kubectl get hpa -n cicdk8ns
NAME             REFERENCE                   TARGETS                        MINPODS   MAXPODS   REPLICAS   AGE
nodejs-demoapp   Deployment/nodejs-demoapp   <unknown>/60%, 200%/50%           7         10        0       19m
  




