NODE_LIST=$(kubectl get nodes |  awk '{if(NR != 1 )print $1}')
for i in $NODE_LIST;do
    kubectl label node $i mysql-
done
