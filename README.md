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

![alt text](https://raw.githubusercontent.com/chariot9/golang-infra/master/docs/img/jenkins_blue_ocean.png)
