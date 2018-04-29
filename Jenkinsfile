pipeline {
  agent any
  stages {
    stage('BuildDeb') {
      steps {
        sh './step1_build.sh'
      }
    }
    stage('Dokerize') {
      steps {
        sh 'docker build -t opswork/nginx:1.14.0-${BUILD_NUMBER} -t opswork/nginx:latest .'
      }
    }
    stage('Deploy2AWS') {
      steps {
        echo 'not ready yet'
      }
    }
  }
}