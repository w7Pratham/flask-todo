pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    def repoUrl = 'https://github.com/w7Pratham/flask-todo.git'
                    def repoDirectory = 'flask-todo'

                    // Clone the repository
                    sh "rm -rf ${repoDirectory}"
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
                        sh "pwd"
                    }
                }
            }
        }
    }
}
