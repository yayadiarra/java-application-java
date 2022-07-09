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
            sh "mvn clean package"
        }
		  }
                }  
        stage('maven Build'){

                  steps{
                      
                      sh "mvnw package"
		               
                  }
                }      
    
    }
}
