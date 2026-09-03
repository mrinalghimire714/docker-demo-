pipeline {
    agent { label 'built-in' }
 
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/mrinalghimire714/docker-demo-.git', branch: 'main'
            }
        }
 
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t docker-demo:latest .'
            }
        }
 
        stage('Run Container') {
            steps {
                sh 'docker run -d -p 6000:6000  --name docker-demo docker-demo:latest'
            }
        }
 
        stage('Verify') {
            steps {
                sh 'curl -s http://localhost:6000'
            }
        }
    }
}
