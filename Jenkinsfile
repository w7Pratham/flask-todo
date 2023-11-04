pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    def buildNumber = currentBuild.number
                    sh '''
                        expect -c "
                            spawn su - root -c '
                                scp -i /root/.ssh/id_rsa /var/lib/jenkins/workspace/activity/* root@dock-host:/root &&
                                ssh -i /root/.ssh/id_rsa root@dock-host &&
                                cd /root &&
                                docker image build -t flask_docker:v${buildNumber} . &&
                                docker run -p 5001:5001 -dt flask_docker:v${buildNumber}
                            '
                            expect \"Password:\"
                            send \"1716\\r\"
                            interact
                                "
                            '''
                        }
            }
        }
        }
    }
