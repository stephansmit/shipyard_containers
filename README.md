# Shipyard containers to run SU2 containers

Containers to run [SU2](https://su2code.github.io/) with [Open MPI](https://www.open-mpi.org/) version 1.10.2 on [Azure Shipyard](https://batch-shipyard.readthedocs.io/en/latest/00-introduction/")

## Pull the container
~~~~
singularity pull shub://stephansmit/containername
~~~~

## Setting up the Batch Account
Shell in the container
~~~~
singularity shell AzureCloud.master 
~~~~

Login with your Microsoft account using the browser
~~~~
az login
~~~~

Create a service principle to login without authentication
~~~~
./create_service_principle.sh
~~~~

Login with service principle and create the azure resources
~~~~
./create_azure_resources.sh
~~~~


Make the credentials yaml file for Shipyard
~~~~
./create_shipyard_config.sh
~~~~



