pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    sh "docker image build -t flask_docker ."
                    sh "docker run -p 5000:5000 -d flask_docker"
                }
            }
        }
        }
    }
