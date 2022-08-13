
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
                sh 'mvn install'
            }
        }
        stage('deploy') {
            steps {
                sh 'cp -r /mnt/vishwesh/gameoflife-web/target/gameoflife.war /mnt/web-server/apache-tomcat-9.0.65/webapps'
            }
        }


    }
}
