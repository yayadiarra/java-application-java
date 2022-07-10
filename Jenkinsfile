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
	    
            sh "mvn clean"
        }
		  }
                }  
        stage('maven build'){
                 
                  steps{
                      withMaven(maven: 'mvn') {
            sh "mvn package"
        }
		  }
                } 
    
    }
}
