pipeline {
    agent { label 'jenkins-agent' }

    stages {

        stage('Checkout') {
            steps {
                git url: 'https://github.com/mrinalghimire714/docker-demo-.git',
                    branch: 'main'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t docker-demo:latest .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker rm -f docker-demo || true'
                sh 'docker run -d -p 5003:5000 --name docker-demo docker-demo:latest'
            }
        }

        stage('Verify') {
            steps {
                sh '''
                    echo "USER:"
                    whoami

                    echo "HOST:"
                    hostname

                    echo "IP:"
                    hostname -I

                    echo "CURL:"
                    curl -v http://192.168.1.67:5003
                '''
            }
        }
    }
}
