ssh -i /home/ubuntu/12345/llave/key-pair-cima2.pem \
  -L 127.0.0.1:27017:docdb-mongo-cima-hist.cluster-ccvz0yxqws4u.us-west-2.docdb.amazonaws.com:27017 \
  ubuntu@44.241.148.230 -N


nc -zv 127.0.0.1 27017




mongorestore \
  --host 127.0.0.1 \
  --port 27017 \
  --username mongohist \
  --password '!+09PUp>09tj' \
  --authenticationDatabase admin \
  --authenticationMechanism SCRAM-SHA-1 \
  --db LOGCIMA2026_02_17 \
  /home/ubuntu/mongosh/LOGCIMA_2026_02_17/LOGCIMA2026 \
  --ssl \
  --sslCAFile /home/ubuntu/mongosh/global-bundle.pem \
  --sslAllowInvalidCertificates

  
  
  !+09PUp>09tj
