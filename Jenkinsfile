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
        sh './step2_dokerize.sh'
      }
    }
    stage('Deploy2AWS') {
      steps {
        echo 'not ready yet'
      }
    }
  }
}