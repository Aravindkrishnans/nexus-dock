
pipeline {
    agent any
    stages {
        stage ('Checkout') {
            agent {
                label 'Docker'
                }
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Aravindkrishnans/nexus-dock.git']]])
            }
        }
        stage ('run sh') {
          steps {
            sh 'sh layout.sh'
            }
        }        
    }
}
