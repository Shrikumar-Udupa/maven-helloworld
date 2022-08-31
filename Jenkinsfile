pipeline {
    agent any
    environment {
       PASS = credentials('Docker-hub')
    } 
    stages {
        stage('Build') { 
            steps {
                sh './build/java-maven.sh mvn -B -Dskiptest clean package'
                sh './build/java-build.sh' 
            }
            post {
                 success {
                     archiveArtifacts artifacts: 'javaparser-maven-sample/target/*.jar', fingerprint: true
                          }
                  }
        }
        stage('Test') { 
            steps {
                sh './test/java-test.sh mvn test'
            }
            post {
                 always {
                     junit 'javaparser-maven-sample/target/*.xml'
                          }
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
