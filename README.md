# This is the configration for running my Jenkins server, which includes Docker, Terraform, AWS CLI and more.

### It can also be deployed using the Terraform files provided in the './terraform' folder.

#### My default run command is:
``` bash
docker run \
--name jenkins-with-aws-terraform-docker \
--detach \
--network jenkins \
--env DOCKER_TLS_CERTDIR=/certs \
--volume /var/run/docker.sock:/var/run/docker.sock \
--volume jenkins-docker-certs:/certs/client \
--volume jenkins-data:/var/jenkins_home \
--publish 8080:8080 \
--publish 50000:50000 \
asixl/jenkins-with-aws-terraform-docker
```

