pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    def buildNumber = currentBuild.number
                    sh ""
                    sh "echo 1716 | su - root && scp -i /root/.ssh/id_rsa ./* root@dock-host:/root && ssh -i /root/.ssh/id_rsa root@dock-host && cd /root && docker image build -t flask_docker:v${buildNumber} . && docker run -p 5001:5001 -dt flask_docker:v${buildNumber}"
                }
            }
        }
        }
    }
