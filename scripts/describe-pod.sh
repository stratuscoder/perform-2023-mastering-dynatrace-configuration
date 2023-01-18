sh get-pod-name.sh $1|awk {'system("kubectl -n easytrade describe pod " $1)'}
