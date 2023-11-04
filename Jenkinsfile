pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    sh "ls && cd flask-todo"
                }
            }
        }

        stage('Change Directory and Run Python Script') {
            steps {
                script {
                        sh "whoami"
                    }
                }
            }
        }
    }
