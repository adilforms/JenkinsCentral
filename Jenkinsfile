pipeline {
  agent any
stages {
stage('Checkout'){
  try {
    checkout scm
  } catch(e) {
    println "trying fallback method of checout"
    git branch: master, url: 'https://github.com/adilforms/Nodejssample', credentialsID: 'adilforms'
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
