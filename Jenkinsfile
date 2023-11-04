pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    sh "cd flask-todo && ls"
                }
            }
        }

        stage('Change Directory and Run Python Script') {
            steps {
                script {
                        sh "ls && cd /flask-todo/ && ls"
                    }
                }
            }
        }
    }
