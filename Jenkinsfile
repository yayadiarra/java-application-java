pipeline {
    agent any

    tools {
        maven "Yannick"
    }
    environment{
        VERSION = "${env.BUILD_ID}"
        IMAGE_NAME = "yannickeboo/parker"
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
    }
}
