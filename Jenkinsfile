pipeline {
  agent any
stages {
stage('Checkout'){
  steps{
  checkout scm
 
    git branch: master, url: 'https://github.com/adilforms/Nodejssample'
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
