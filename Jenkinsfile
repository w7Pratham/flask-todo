pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    def buildNumber = currentBuild.number
                    sh "scp -i /root/.ssh/id_rsa ./* root@dock-host:/root && ssh -i /root/.ssh/id_rsa root@dock-host && cd /root"
                    sh "docker image build -t flask_docker:v${buildNumber} ."
                    sh "docker run -p 5001:5001 -dt flask_docker:v${buildNumber}"
                }
            }
        }
        }
    }
