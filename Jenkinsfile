pipeline {
  agent any
stages {
stage('Checkout'){
        checkout scm
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
   
    docker build -t adilforms/the-example-app.nodejs .
         docker login --username adilforms --password Rimsha@548
    docker push adilforms/the-example-app.nodejs   
    '''
  }
}}
}
