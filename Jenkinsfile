pipeline {

    agent any

    stages{

        stage('Checkout') {

            steps{
                echo 'Checkout'
                sh 'docker stop flask_app && docker rm python-flask_hw'
            }
        }

        stage('Docker Image build')

            steps{
                sh 'docker build . -t python-flask_hw'
            }

        stage('Docker compose up'){

            steps{
                sh 'docker-compose up flask'
            }
        }
    }
}