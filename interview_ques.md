## Linux
- port no of http / https / ftp / dns / ssh / grafana / jenkins ? --> 80,443,21,53,22,3000,8080
- What is KERNEL PANIC Error in Linux? --> initramfs file gets corrupted or deleted
- scp in linux , diff between scp & rsync ? scp command --> scp -pr <file_name> root@serverip:/<path>
- What is a process in Linux ? diff between orphan process vs zombie process?
- what is run level in Linux?
- Linux folder is 100% filled, troubleshoot  --> df -h , du -sh* | sort -hr | head 
- server slowness/performance issue in linux , troubleshoot --> Identify high CPU processes: ps -eo pid,ppid,%cpu,%mem,cmd --sort=-%cpu | head
- df -HT got stuck troubleshoot ( no load issue)   -->strace package
- diff between yum and rpm?  --> rpm install single package, yum installs with all dependencies.
- how to check who installed package and when ? --> yum history
- install/uninstall a package ? --> rpm -ivh <package_name> , rpm -e <package_name>
- what is special user access in Linux ?  -->setfacl /setuid /setgid /stickybit 
- what is swap memory in Linxu & how to configure it? (X2)
- change permission of File ? --> chmod 774 filename
- How to create / extend a file system? --> extend PV VG LV
- what is inode in Linux? --> node contains important metadata about the file system object including file type, permissions, file size, timestamps, ownership
- Configure TLs certificates
- where is the local user password stored in Linux? --> /etc/shadow
- NFS config file?   --> /etc/exports file
- Explain boot process in linux?
- write a cron expression to schedule a job every 1 hour --> 0 * * * * ./script.sh

## Grafana
- How did you setup grafana in your project?
- port no for grafana ?
- which metrics do you check ?
- from where does grafana fetch data to make a dashboard?

## Docker
- How to check docker logs of a container?
- how to create , enter , delete a docker container?
- What is a docker image ?
- How to remove dangling images?
- What is a Dockerfile , how to create container from dockerfile?
- check running containers in docker?

## Kubernetes
- Why do we use Kubernetes?
-  componenents of control / woker plane?
-  What is "Crash Loop Backoff" error in kubernetes?
-  What is Replicaset and Replication Controller in Kubernetes?
-  How to enter into kubernetes cluster?
-  How to check logs ?

## AWS
- what are the type of ebs?
- Private and public cloud with examples>
- steps to create ec2
- what is needed to host a website on ec2
- what is cloud front, route 53?
- what is vpc, what all resources get  created when we create a vpc
- what is a subnet?
- types of load balancer , types?
-  what is target group in aws?
-  how to acess get conmtents of s3 buckets via cli?
- what is vpc peering , how to configure?

  
## QBurst Tech (SRE Profile)
- what is special permissions in linux, explain about sticky bit . --> setuid / setgid / stickybit
- explain boot process in linux.
- how to check which ports are open in server.
- write a script to ping 10 servers at once.
- scenario - you have written a script , executed it, you want to ensure the script runs even after server reboot, how to do .
- explain about Kubernetes architecture? role of kube proxy , kubelet
- explain why we need service in kubernetes. different types. explain load balancer service in detail.
- what is headless service in kubernetes, why is it used?
- how to check how many pods are running?
- suddenly 1 pod stopped running, how to check what happened.
- what is namespace , why do we need it
- diff between CMD and ENTRYPOINT in Docker, Explain with real world scenario.
- You have to go out for next 2 days , how will you ensure your docker containers are up and running even if it restarts. (not using kubernetes , with docker context)
- in docker compose file  I have 2 applocations , I want to run only one of the applications how to do.
- what is state file in terraform?
- what will happen if state file gets deleted in terraform.
- difference between provisioners and providers in terraform.
- which resources have you created using terraform,
- while creating an instance using terraform explain what all fields are required in main.tf file.
- how are SRE Engineers different from Devops Engineers.
- Which load balancers have you used in AWS
- can we use 2 load balancers in same application
- what is sticky session in load balancers , explain with real world scenario.
- we have 3 aws accounts A,B,C, A,B are connected , B,C are connected , how to connect A,C
- how resources in vpc of account A can communicate with vpc of account C?
- how to check logs for ALB.
- what is vpc , subnet, firewall?
- when load average is very high on system , is there any effect on cpu / memory?
- what is the difference in instance health check vs system health check ? (hint 2/2 while provisioning).
- how to connect ec2 with rds , what firewall rules will you apply.

## Msys Tech (SRE Support)
- write a script that can monitor apache service at an interval of 5 mins and if its not running then log the event in logs.txt and 
  start the service
- cron entry to run script at 8:30 pm every friday
- diff between service and systemctl
- kill the process in one command (dont know the process id)
- difference between docker run vs docker exec
- difference between docker run vs cmd in dockerfile.
- how to create an image from running app
- did you write any dockerfile 
- what is kubedns, why is it used
- components of worker plane 
- what is headless service , types of services
- types of controller managers
- diff between deployment vs statefulset
- what is pdb?
- why is metrics server used?
- what is init container?
- what resources are created in default namespace when we create a cluster
- why do we stop/start instance not reboot an ec2 instance 
- A name vs AAAA name
- steps to create a custom ami

## Fidelis (HPE-compute)
- explain boot process
- what is run levels , different types of run levels
- what is RAID, why is it used ?
- bonding , interfaces are down
- LVM why is it used, what will happen if we dont use it
- GRUB failed to load
- what is sticky bit , how can we achieve same thing without sticky bit
- what is bonding , why do we use it, how to configure?

## Msys (L2)
- write a dockerfile from scratch?
- write a pipeline code
- write a code for factorial of a no?
- write a script to check if a apache service is running , if yes increase count by 1
- when we run kubectl command what happens in background
- have you worked with helm charts
- what is terraform init
- we are getting huge cloud bill, how to minimise it?
- diff b/w security group and nacl?
- how do you plan an app migration running on on prem to cloud
- what do you monitor in grafana dashboard?
- explain boot process in Linux?
- steps to create a filesystem and mount it?
- why do we use /etc/fstab
- steps/approach to create Technical docs

## VuNET Systems (L2)
- explain boot process in linux.
- how to check high cpu usage in server
- server is not booting , troubleshoot
- why do we use docker
- how to establish keyless connectivirty between 2 servers
- how to extend file system in linux
- how to install/ uninstall a package
- you ran rm -rf* , how to explain to client/manager

## Maple Labs
- OPENLENS
- monitoring vs obeservability
- daemonsets vs stateful sets
- pvc unable to bind , troubleshoot
- how to update version of image in docker
- how containers in same pod communicate to each other
- what is init container?
- docker file to run apache and expose ports , explain dockerfile
- docker file vs dockerfile.ops
- how to specify resource limits cpu memory in docker
- what is substitute to if-else in bash script -- switch -  case
- write a script to check if file exist or not.
- pods, deployment are not running, troubleshoot
- how to check which pods are consuming most resources
- tell ebout custom controllers in k8s
- explain crashloopbackoff error
- unable to connect to google dns, troubleshoot -- firewall
- write a pod yaml file which prints logs infinitely and runtime for 2 mins
- how to ensure security of metrics.
- what is elastic IP , why it is needed , is 1 ip mapped to 1 instance or many instance
- how to create eks cluster
- metrics unable to dis[play in grafana , troubleshoot.
- check which process consuming most cpu/mem resources.

## Thoughtworks
- what is versioning, version control .
- explain git workflow.
- git reset vs revert
- git pull vs fetch
- how to check git logs
- terraform file to create a local file.
- why we use s3, dynamodb . how can 10 users write in a single file
- useradd vs adduser
- check cpu , disk i/o on windows
- setuid , setgid , stickybit implemented in real life
- public subnet vs private subnet
- vpc resources created
- what is federated user
- 
