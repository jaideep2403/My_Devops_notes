     ```
         eksctl create cluster
         kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
         kubectl get pods -n kube-system -l k8s-app=metrics-server
         kubectl create deployment php-apache --image=k8s.gcr.io/hpa-example
         kubectl patch deployment php-apache -p='{"spec":{"template":{"spec":{"containers":[{"name":"hpa-example","resources":{"requests":{"cpu":"200m"}}}]}}}}'
         
         kubectl create service clusterip php-apache --tcp=80
         kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10
         kubectl get hpa

         kubectl run -i --tty load-generator --image=busybox /bin/sh
         while true; do wget -q -O- http://php-apache; done

         kubectl get hpa -w
     ```
