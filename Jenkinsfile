pipeline {
 
    agent any
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "devopstrainingschool/java-maven2"
    }
    stages {
       
        stage('maven Clean'){

                  steps{
                      sh "ls"
                      
		                 # sh "mvn clean install"
                  }
                }  
        stage('maven Build'){

                  steps{
                      
                      sh "pwd"
		                 # sh "mvn package"
                  }
                }      
    
    }
}
