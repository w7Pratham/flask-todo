pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    sh "cd /home/jenkins/ && rm -rf * && git clone https://github.com/w7Pratham/flask-todo.git && pwd"
                }
            }
        }

        stage('Change Directory and Run Python Script') {
            steps {
                script {
                        sh "cd /home/jenkins/flask-todo/ && ls && ./just.sh"
                    }
                }
            }
        }
    }
