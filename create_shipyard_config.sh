source AZURE_RESOURCE_NAMES
source BATCH_CREDS
batch_output=$(az batch account keys list --name $BATCH_ACCOUNT_NAME --resource-group $RESOURCE_GROUP)
BATCH_ACCOUNT_KEY=$(echo "${batch_output}" | jq --raw-output '.primary')
storage_output=$(az storage account keys list --account-name $STORAGE_ACCOUNT_NAME --resource-group $RESOURCE_GROUP)
STORAGE_ACCOUNT_KEY=$(echo $storage_output | jq --raw-output '.[1].value')

echo "STORAGE_ACCOUNT_NAME=${STORAGE_ACCOUNT_NAME}" > SHIPYARD_CREDS
echo "STORAGE_ACCOUNT_KEY=${STORAGE_ACCOUNT_KEY}" >> SHIPYARD_CREDS
echo "BATCH_ACCOUNT_NAME=${BATCH_ACCOUNT_NAME}" >> SHIPYARD_CREDS
echo "BATCH_ACCOUNT_SERVICEURL=${BATCH_ACCOUNT_SERVICEURL}" >> SHIPYARD_CREDS

eval "echo \"$(< credentials.yaml.template)\"" > shipyard_configdir/credentials.yaml
