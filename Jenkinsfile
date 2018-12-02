pipeline {
  agent 
 
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
    withCredentials([string(credentialsId: '7a9b0ed7-6ffe-42b2-aca0-4c06e69e3619', variable: 'Password')]){
    sh '''#!/bin/bash -el
    echo 'publishing'
    docker build -t adilforms/helloworld.1.0.0 .
    docker login --username adilforms --password $Password
    docker push adilforms/helloworld.1.0.0
    '''
  }
  }
}
}
}
