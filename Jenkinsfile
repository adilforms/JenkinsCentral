pipeline {
  agent any 
  docker {
    regisryCredentialsId 'adilforms'
  }
  
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
   
    docker build -t adilforms/"${PACKAGENAME}.${VERSION}" .
    docker push adilforms/"${PACKAGENAME}.${VERSION}" 
    '''
  }
}}
}
