pipeline {
  agent any 
 withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'adilforms',
usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD']]) {

sh 'echo uname=$USERNAME pwd=$PASSWORD'  
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
         docker login --username $USERNAME --password $PASSWORD
    docker push adilforms/"${PACKAGENAME}.${VERSION}" 
    '''
  }
}}
}
