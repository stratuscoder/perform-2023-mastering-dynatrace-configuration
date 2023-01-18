kubectl -n easytrade get pods --no-headers|awk {'print $1'}|grep $1|awk {'print $1'}
