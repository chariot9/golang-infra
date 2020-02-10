# Golang-infra

Comprehensive CI/CD flow with Golang, docker, jenkins and Sack integration.

### Stages

- **Build base image**

```bash
$ make build-base
```
- **Build test image**
```bash
$ make build-test
```
- **Unit tests**
```bash
$ make unit-test
```
- **Build production image**
```bash
$ make release
```
- **Run application**
```bash
$ make run PORT=8081
```

*You can change the PORT base on your system

### Friendly UI by Jenkins, Slack

- **Pipelines** 
![alt text](../master/docs/img/jenkins_blue_ocean.png)


- **Build states view** 
![alt text](../master/docs/img/jenkins_stage_view.png)


- **Jenkins wiht test result** 
![alt text](../master/docs/img/jenkins_test_result.png)


- **Slack in integration** 
![alt text](../master/docs/img/slack_notification.png)
