## How to use it
### Create the server we will use to load test:
```bash
kubectl apply -f server.yaml
```
or
```bash
kubectl apply -f https://raw.githubusercontent.com/pauvilella/utils/main/kubernetes/examples/load-testing/server.yaml
```
### Apply an HPA for that server:
```bash
kubectl apply -f hpa.yaml
```
or
```bash
kubectl apply -f https://raw.githubusercontent.com/pauvilella/utils/main/kubernetes/examples/load-testing/hpa.yaml
```
### Test it
Here's a command you can use as a client to generate load to the server:
```bash
kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://php-apache; done"
```
You can checkout the HPA and watch it scale up and down:
```bash
kubectl get hpa php-apache --watch
```
