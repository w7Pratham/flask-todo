pipeline {
    agent any

    stages {

        stage('Clone Repository') {
            steps {
                script {
                    // Define the repository URL
                    sh "cd /home/jenkins/"
                    sh "rm -rf *"
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
                        sh "gunicorn --bind 0.0.0.0:5001 wsgi:app"
                        sh "pwd"
                    }
                }
            }
        }
    }
}
