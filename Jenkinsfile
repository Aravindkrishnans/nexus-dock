
pipeline {
    agent {
        label 'Docker'
    }
    stages {
        stage ('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '**']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Aravindkrishnans/nexus-dock.git']]])
            }
        }
        stage ('run sh') {
          steps {
            "sh layout.sh"
            }
        }        
    }
}
