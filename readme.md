node{

stage('Source Checkout'){
    
    git url: 'https://github.com/KeeYoungYoon/svc-project.git'
    sh 'chmod 755 ./container_check.sh'
    sh './container_check.sh'
}
stage('Build Maven'){
   
    sh 'mvn install'
}
stage('Build Docker Image'){
   
    sh 'docker build . --tag skcc_svc_project:0.0.1'
}
stage('Docker Run!'){
    
    sh 'docker run -d -p 8080:8080 skcc_svc_project:0.0.1'
}
}
