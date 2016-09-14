#!/bin/bash

aws dynamodb create-table --cli-input-json file://customers-table.json

sleep 20

aws dynamodb batch-write-item --request-items file://customer-items.json