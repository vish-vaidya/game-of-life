pipeline {
agent {
node  { 
label 'node1'
customWorkspace '/mnt/Dev'
}
}
stages {
   stage ('Copy-from-s3'){
   steps {
   sh 'rm -rf /mnt/Dev/*'
   sh 'aws s3 cp s3://vishv1/gameoflife.war .'
   }
   }
   stage ('Install-packages'){
   steps {
   sh 'yum install git docker -y'
   sh 'systemctl start docker'
   }
   }
   stage ('Git-clone'){
   steps {
   sh 'git clone https://github.com/vish-vaidya/game-of-life.git'
   }
   }
   stage ('deploy'){
   steps {
   sh label: '' , script: '''rm -rf dockerimg
   mkdir dockerimg
   cp -r /mnt/Dev/gameoflife.war /mnt/Dev/dockerimg
   cd dockerimg
   touch dockerfile
   cat <<EOT>>dockerfile
   FROM tomcat:8.5.47-jdk8-openjdk
   ADD ./gameoflife.war /usr/local/tomcat/webapps/
   EXPOSE 8080
   CMD ["/usr/local/tomcat/bin/catalina.sh","run"]
   EOT
   
   sudo docker build -t webimage:$BUILD_NUMBER .
   sudo docker run -itdp 8888:8080 webimage:$BUILD_NUMBER'''
   }
   }
   }
}
