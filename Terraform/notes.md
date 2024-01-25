provider is a plugin where it states the resources needs to be created
state file - store the information of the infrastructure created , created after applying the config

by applying terraform plan , before applying it checks the state file what infrastructure it has already created and what it has to create.

drawbacks
1.it also stores sensitive info in state file, everyone can read the state file.
2. everytime code change , always push state file to vcs
solution 
1.remote backend - store state file in s3 bucket, restrict s3 access , state file is automatically updated when it is applied
                   after terraform init , it compares the state form remote backend and local

explaination - we have github repo which hosts the terraform code , it has aws resource creation logic , we use s3 bucket as remote backend.
               other members clone the repo, make and verify changes raise pull request back to github repo , after apply command it update s3 bucket with logic
