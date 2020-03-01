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
                sh 'sudo apt-get update && sudo apt-get install maven -y default-jdk -y tomcat8 -y'
                sh 'sudo mvn package'

            }
        }
        stage ('deploy') {
            steps {
                sh 'sudo cp /var/lib/jenkins/workspace/boxfuse/target/hello-1.0.war /var/lib/tomcat8/webapps/'            
            }
        }
    }
}

