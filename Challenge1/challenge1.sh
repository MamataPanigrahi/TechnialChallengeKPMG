#!/bin/bash

echo "Enter the server Name: "
read servername

echo "Enter the key to search: "
read key

Echo "Json metadata output: $(gcloud compute instances describe $servername --format="json(metadata.items)")"

echo "Value of $key in metadata is : $(gcloud compute instances describe $servername --format="json(metadata.items) --flatten="key=$key")"
