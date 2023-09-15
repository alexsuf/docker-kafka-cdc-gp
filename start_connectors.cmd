curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @postgres-source.json

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @postgres-target.json

curl -i http://localhost:8083/connectors/jdbc-sink/status

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @gp-target.json

curl -i http://host.docker.internal:8083/connectors/gp-con/status


==========================================

curl -i -X DELETE localhost:8083/connectors/jdbc-sink/