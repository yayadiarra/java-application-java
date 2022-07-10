pipeline {
 
    agent any
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "devopstrainingschool/java-maven2"
    }
    stages {
       
        stage('maven Clean'){
                 
                  steps{
                      withMaven(maven: 'mvn') {
	    sh " mvn -version"
            sh "mvn clean"
        }
		  }
                }  
        stage('maven Clean'){
                 
                  steps{
                      withMaven(maven: 'mvn') {
            sh "mvn package"
        }
		  }
                } 
    
    }
}
