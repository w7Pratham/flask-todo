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
                        echo 1716 | su - root -c "ssh -t -i /root/.ssh/id_rsa root@apps-host 'rm -rf /root/*' && scp -i /root/.ssh/id_rsa /var/lib/jenkins/workspace/activity/* root@apps-host:/root && ssh -t -i /root/.ssh/id_rsa root@apps-host 'source /root/temp.sh'"
                        """
                        }
            }
        }
        }
    }
