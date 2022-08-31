pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh ./build/java-maven.sh mvn -B -Dskiptest clean package  
                   ./build/java-build.sh 
            }
        }
        stage('Test') { 
            steps {
                sh './test/java-test.sh mvn test'
            }
        }
        stage('Push') {
            steps {
                sh './push/push.sh'
            }
        }
        stage('Deploy') { 
            steps {
                sh './deploy/publish-varible.sh' 
            }
        }
    }
}
