pipeline {
  agent any
  stages {
    stage('BuildDeb') {
      steps {
        sh '/var/lib/jenkins/workspace/cker2AWS_jenkinsfile_master-CTO4CSEPZPZLF7LVXZP3Y5QFUTKVOTEV6PRO52RRRXBQNDSWFA6A/step1_build.sh'
        sh 'echo "BuiltDeb step1 done!"'
      }
    }
    stage('Dokerize') {
      steps {
        sh 'step2_dokerize.sh'
      }
    }
    stage('Deploy2AWS') {
      steps {
        echo 'not ready yet'
      }
    }
  }
}