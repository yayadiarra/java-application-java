pipeline {
 
    agent any
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "devopstrainingschool/java-maven2"
    }
    stages {
       
        stage('maven Clean'){
                  def mvnHome = tool name: 'Apache Maven 3.8.6', type: 'maven'
                  steps{
                      sh "mvnw clean"
                      
		                
                  }
                }  
        stage('maven Build'){

                  steps{
                      
                      sh "mvnw package"
		               
                  }
                }      
    
    }
}
