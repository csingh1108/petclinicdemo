pipeline {
    agent any

    stages {
    
    	stage('Create Directory') {
            steps {
                // Create the java-apps directory if it doesn't exist
                sh 'mkdir -p java-apps'
            }
        }
        stage('Copy JAR') {
            steps {
                // Copy the JAR file to the java-apps folder
                sh 'cp petclinic-0.0.1-SNAPSHOT.jar java-apps/'
            }
        }
        stage('Dockerize') {
            steps {
                sh 'docker build -t petclinicapp:1.0 .'
            }
        }
    }
}
