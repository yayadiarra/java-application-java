pipeline {
 
    agent any
    tools {
	    maven 'maven 3.3.9'
    }
	
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "devopstrainingschool/java-maven2"
    }
    stages {
       
        stage('maven Clean'){

                  steps{
                      
                      
		                  sh "mvn clean"
                  }
                }  
        stage('maven Build'){

                  steps{
                      
                      
		                  sh "mvn package"
                  }
                }      
    
    }
}
