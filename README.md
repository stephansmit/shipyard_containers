# Shipyard containers to run SU2 containers

Containers to run [SU2](https://su2code.github.io/) with [Open MPI](https://www.open-mpi.org/) version 1.10.2 on [Azure Shipyard](https://batch-shipyard.readthedocs.io/en/latest/00-introduction/")

## Pull the container
~~~~
singularity pull shub://stephansmit/containername
~~~~

## Set up the credential to create a batch account
Shell in the container
~~~~
singularity shell AzureCloud.master 
~~~~

Login with your Microsoft account using the browser
~~~~
az login
~~~~

Copy the 
~~~~

~~~~
## Run Local
~~~~
mpirun -np 6 singularity exec su2_containers_master.sif /SU2/bin/SU2_CFD SU2.cfg > log.txt
~~~~


## Run SurfSara
~~~~
#!/bin/bash
#SBATCH -N 2
#SBATCH -p normal
#SBATCH -n 40

module load mpi/openmpi/1.10.2
mpirun --hostfile hostfile.txt -np 40 singularity exec su2_containers_master.sif /SU2/bin/SU2_CFD SU2.cfg > log.txt
~~~~




