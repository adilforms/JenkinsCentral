pipeline {
  agent {
  docker {image 'node:7-alphine'}
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
  stage('Docker-Build'){
  steps {
    echo 'building Docker image'
    
   
    WORKDIR /app
    COPY package.json /app
    RUN npm install
    copy . /app
    CMD node myapp.js
    EXPOSE 3009
    
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
   
    docker build -t adilforms/helloworld.1.0.0 .
     docker login --username adilforms --password Rimsha@548
    docker push adilforms/helloworld.1.0.0
    '''
  
  }
}
}
}
