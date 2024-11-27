# Jenkins installation for learning Postman automation

This resouce is part of the [Postman: The Complete Guide to REST API Testing](https://www.udemy.com/course/postman-the-complete-guide/?referralCode=4E8B90BA4B5EE8DA9237) course on Udemy.

## How to run Jenkins

```
docker run -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home --env JAVA_OPTS="-Dfile.encoding=UTF8" vdespa/jenkins-postman
```

If you are on *Apple Silcon*, use the following command:

```
docker run --platform linux/amd64 -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home --env JAVA_OPTS="-Dfile.encoding=UTF8" vdespa/jenkins-postman
```

## How to build the Docker image locally

```
docker build -t vdespa/jenkins-postman .
```
