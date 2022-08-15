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
	}

}
