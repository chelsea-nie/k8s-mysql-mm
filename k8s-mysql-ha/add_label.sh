MASTER_NAME=$(kubectl get nodes | grep -i master | awk '{print $1}')
kubectl label nodes $MASTER_NAME mysql="master" --overwrite
NODE_LIST=$(kubectl get nodes | grep -v master | awk '{if(NR != 1 )print $1}')
for i in $NODE_LIST;do
    kubectl label node $i mysql="slave" --overwrite
done
