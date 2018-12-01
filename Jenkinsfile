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
    echo 'bTesting'
  sh 'npm test'
  }
  
}
stage('Publish') {
  steps {
    echo 'publishing'
  }
  
}
}
}
