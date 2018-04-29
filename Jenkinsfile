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
        withCredentials([usernamePassword(credentialsId: 'dockerHub_skovb', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh "docker tag nginx sergko/opsworks_nginx_luamod"
          sh 'docker push opswork/nginx:latest'
        }
      }
    }
    stage('Deploy2AWS') {
      steps {
        echo 'not ready yet'
      }
    }
  }
}