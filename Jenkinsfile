pipeline {
 
    agent { label 'node1' }
   
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "yannickeboo/parker"
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
