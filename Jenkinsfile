pipeline {
    agent any

    tools {
        maven "Yannick"
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
