# Shipyard container to run containers on Azure Shipyard

Containers to run containers on [Azure Shipyard](https://batch-shipyard.readthedocs.io/en/latest/00-introduction/")

## Build the container locally
~~~~
singularity build su2_containers_master.sif Singularity.master
~~~~

## Pull the container
~~~~
singularity pull shub://stephansmit/shipyard_containers:master 
~~~~

