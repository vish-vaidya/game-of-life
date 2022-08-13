
    pipeline {

    agent {
    label{
		label "built-in"
		customWorkspace "/mnt/vishwesh"
}
}

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
