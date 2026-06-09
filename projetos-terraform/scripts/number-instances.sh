#!/bin/bash

# amount=$(gcloud compute instances list | grep gce-k6 | wc -l)
path="infra/terraform/gcp/"
amount=$(cat $path | head -n 1 | awk '{print $3}')
echo "NUMBER_INSTANCES ATUAL: " $amount
path="infra/terraform/gcp/"

read -p "Insira o novo NUMBER_INSTANCES: " new_amount
echo $new_amount

for i in $name
do
    gcloud compute instances stop $i --zone=southamerica-east1-a
done

sed -i '' "s/$amount/\"$new_amount\"/g" $path
make create

# # for i in $name
# # do
# #     gcloud compute instances start $i --zone=southamerica-east1-a
# # done

