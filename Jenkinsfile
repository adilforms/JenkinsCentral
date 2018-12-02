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
    docker build -t adilforms/myapp.1.0.0 .
    docker login --username adilforms --password Rimsha@548
    docker push adilforms/myapp.1.0.0
    '''
  }
  
}
}
}
