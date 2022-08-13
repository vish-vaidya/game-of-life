
    pipeline {

    agent any

    stages {
        stage('compile') {
            steps {
	          sh 'mvn clean'
                sh 'mvn compile'
            }
        }
        stage('test ') {
            steps {
                sh 'mvn test'
            }
        }


    }
}
