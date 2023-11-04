pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    sh "docker image build -t flask_docker:v${buildNumber} ."
                    sh "docker run -p 5000:5000 -dt flask_docker:v${buildNumber}"
                }
            }
        }
        }
    }
