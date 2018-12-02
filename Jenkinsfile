pipeline {
  agent any
stages {
stage('Checkout'){
  steps{
  checkout([$class: 'GitSCM',
            branches: [[name: env.BRANCH_NAME]],
           extensions: [[$class: 'CleanBeforeCheckout']],
                         userRemoteConfigs: [[url: env.REPO_NAME]] 
                        ])
  }
}
stage('Build'){
  steps {
    echo 'building'
    sh 'npm install'
  }
}
stage('Test'){ steps {
    echo 'Testing'
  
  }
  
}
stage('Publish') {
  steps {
    sh '''#!/bin/bash -el
    echo 'publishing'
    sudo docker build -t adilforms/myapp .
    sudo docker login --username adilforms --password Rismha@548
    sudo docker push adilforms/myapp
    '''
  }
  
}
}
}
