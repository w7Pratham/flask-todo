pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    def buildNumber = currentBuild.number
                    // Use expect to provide the password non-interactively
                    sh """
                            expect << 'END'
                            spawn su - root
                            expect \"Password:\"
                            send \"1716\\r\"
                            expect "# "
                            send \"scp -i /root/.ssh/id_rsa /var/lib/jenkins/workspace/activity/* root@dock-host:/root && ssh -i /root/.ssh/id_rsa root@dock-host && cd /root && docker image build -t flask_docker:v${buildNumber} . && docker run -p 5001:5001 -dt flask_docker:v${buildNumber}\"
                            interact
                    """
                        }
            }
        }
        }
    }
