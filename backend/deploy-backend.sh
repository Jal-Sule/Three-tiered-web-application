k get all -n final

k apply -f pvc.yaml -n final

k apply -f secret-data.yaml -n final

k apply -f backend-service.yaml -n final

k apply -f backend-deployment.yaml -n final
sleep 5

k get deployment -n final 
echo "#####"

k get role,rolebinding -n final
echo "#####"

k get pv,pvc -n final
sleep 10
echo "#####"
k get pods -n final -o wide 

