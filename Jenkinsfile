pipeline {
    agent any

    stages {
        stage('Remove Existing Repository') {
            steps {
                script {
                    // Define the repository directory
                    def repoDirectory = 'flask-todo'

                    // Remove the existing repository directory if it exists
                        sh "rm -rf ${repoDirectory}"
                }
            }
        }

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    def repoUrl = 'https://github.com/w7Pratham/flask-todo.git'

                    // Clone the repository
                    sh "git clone ${repoUrl}"
                }
            }
        }

        stage('Change Directory and Run Python Script') {
            steps {
                script {
                    def repoDirectory = 'flask-todo'
                    // Change to the repository directory
                    dir("${repoDirectory}") {
                        // Run your Python3 management command
                        sh "python3 run.py &"
                    }
                }
            }
        }
    }
}
