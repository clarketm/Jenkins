# Jenkins with Docker support

## Install
```bash
$ docker pull clarketm/jenkins
```

## Run
```
$ PORT=1234

$ docker run \
  --name "jenkins" \
  -p $PORT:8080 \
  -p 50000:50000 \
  -v "jenkins_home:/var/jenkins_home" \
  -v "/var/run/docker.sock:/var/run/docker.sock" \
  -d clarketm/jenkins
```
