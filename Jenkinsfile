pipeline {
    agent any
    
    stages {
        stage ('git') {
            steps {
                git 'https://github.com/likhatov/boxfuse.git'
            }
        }
        stage ('build') {
            steps {
                sh 'sudo docker run -i --rm --name boxfuse-project -v /var/lib/jenkins/workspace/boxfuse1:/usr/src/boxfuse -w /usr/src/boxfuse maven:3.6-jdk-8 mvn package'
                sh 'sudo docker build -t boxfuse /var/lib/jenkins/workspace/'
            }
        }
        stage ('deploy') {
            steps {
                sh 'sudo cat /root/pass | sudo docker login --username admin --password-stdin 127.0.0.1:8123'
                sh 'sudo docker tag boxfuse 127.0.0.1:8123/boxfuse:latest'
                sh 'sudo docker push 127.0.0.1:8123/boxfuse:latest'            
            }
        }
    }
}

