pipeline {

agent any
	
	stages{
		
		stage ('installing and compile') {
			
				agent {
		node {
				label "master"
				customWorkspace "/mnt/docker"
		}
		
		}
			
			steps {
			sh 'mvn install'
			
			}
		}
		
		
		stage ('docker container') {
			steps {
			
			sh label: '' , script: '''rm -rf dockerimg
			
			mkdir dockerimg
			cd dockerimg
			cp /mnt/docker/gameoflife-web/target/gameoflife.war .
			touch dockerfile
			cat <<EOT>>dockerfile
			FROM tomcat
			ADD gameoflife.war /usr/local/tomcat/webapps/
			CMD ["catalina.sh, "run"]
			EXPOSE 8080
			EOT
			sudo docker build -t webimage;$BUILD_NUMBER .
			sudo docker container run -itd --name webserver$BUILD_NUMBER -p webimage:$BUILD_NUMBER'''
			
			}
		}
	}

}
