pipeline {
    agent any
    stages {
     stage('Git') {
        steps {
         git url: 'https: //github.com/reddyudaysai123/azurecli.git',
                  branch: 'main'
                }
            }
    stage('Instance Creation') {
        steps {
         sh 'chmod +x azurecli'
         sh './azurecli'
        }
    }
    }
}
