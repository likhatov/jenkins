pipeline {
    agent any {
        args '-u root --privileged'
    }    
    stages {
        stage ('git') {
            steps {
                git 'https://github.com/likhatov/boxfuse.git'
            }
        }
        stage ('build') {
            steps {
                sh 'apt install maven -y'
                sh 'mvn package'
            }
        }
        stage ('deploy') {
            steps {
                deploy adapters: [tomcat8(credentialsId: '256464bc-9da5-423f-988b-623f66713a53', path: '', url: 'http://35.222.159.164:8080/')], contextPath: 'myweb2', war: ''
            }
        }
    }
}

