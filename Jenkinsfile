pipeline {
  agent any
stages {
stage('Checkout'){
  steps{
  checkout([$class: 'GitSCM',
            branches: [[name: 'master'],
           extensions: [[$class: 'CleanBeforeCheckout']],
                         userRemoteConfigs: [[url: 'https://github.com/adilforms/Nodejssample.git']] 
                        ])
  }
}
stage('Build'){
  steps {
    echo 'building'
  }
}
stage('Test'){ steps {
    echo 'building'
  }
  
}
stage('Publish') {
  steps {
    echo 'building'
  }
  
}
}
}
