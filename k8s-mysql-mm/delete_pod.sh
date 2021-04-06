a=(mysql-configmap.yaml  mysql-cronjob.yaml  mysql-services.yaml  mysql-statefulset.yaml)
for i in ${a[@]}
do
	kubectl delete -f ./$i
done
