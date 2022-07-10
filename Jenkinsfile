pipeline {
    agent any

    tools {
        maven "maven"
    }
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "devopstrainingschool/java-maven"
    }
    stages {
        stage('clean') {
            steps {
              
                
               
                sh "mvn  clean"

            }

            
        }
        stage('Build') {
            steps {
              
                
               
                sh "mvn  package"

            }

            
        }
         stage("sonar quality check"){
          
            steps{
                script{
                    withSonarQubeEnv('sonarqube') {
                           
                            sh 'mvn clean package sonar:sonar'
                    }

                   

                }  
            }
        }
       stage("Quality Gate"){
  timeout(time: 1, unit: 'HOURS') { 
    def qg = waitForQualityGate() 
    if (qg.status != 'OK') {
      error "Pipeline aborted due to quality gate failure: ${qg.status}"
    }
  }
}
       stage('docker image') {
      
      steps {
       
       withDockerRegistry([ credentialsId: "Docker_hub", url: "https://index.docker.io/v1/" ]) {
       sh 'docker build . -t $IMAGE_NAME:$VERSION -f Dockerfile'
       sh 'docker push $IMAGE_NAME:$VERSION'
        
        }
       
        
     
         
      }
     }
    }
}
