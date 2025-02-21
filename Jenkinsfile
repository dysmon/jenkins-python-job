pipeline {
    agent {
        docker {
            image 'python:3.10'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/dysmon/jenkins-python-job'
            }
        }
        stage('Run Python Script') {
            steps {
                sh 'python3 print_names.py'
            }
        }
    }
}
