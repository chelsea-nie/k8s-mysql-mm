####add label#####
NODE_LIST=$(kubectl get nodes | awk '{if(NR != 1 )print $1}')
for i in $NODE_LIST;do
    kubectl label node $i app="mysql" --overwrite
done

#####create namespace ######
kubectl create namespace data

#######apply pod########
kubectl apply -f mysql-configmap.yaml
kubectl apply -f mysql-services.yaml
kubectl apply -f mysql-statefulset.yaml
kubectl apply -f mysql-cronjob.yaml
