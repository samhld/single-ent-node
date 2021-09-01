#!/bin/bash

echo "Joining meta nodes to cluster..."
# Join meta node to cluster
docker exec meta influxd-ctl add-meta meta:8091

echo "Joining data nodes to cluster..."
# Join data node to cluster
docker exec meta influxd-ctl add-data data:8088

sleep 2
docker exec meta bash -c "influxd-ctl show"