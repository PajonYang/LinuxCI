def workspace;
node('Ubuntu16_x86'){
        stage('Get clone'){
             checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/PajonYang/LinuxCI']]]) 
             workspace =pwd()
            }
        stage('Build'){
        //执行部署脚本
            echo "Building ......"
        }
        stage('Unit Testing'){
        //测试部署脚本
            echo "Tesing ......"
            //sh 'test01.sh'
        }
        stage('Delivery'){
        //交付部署脚本
            echo "Delivery ......" 
        }   
        post {
                always {
                        echo 'This will always run!'
                }
                success {
                        echo 'This will run only if successful!'
                }
                failure {
                        echo 'This will run only if failed!'
                }
                changed {
                        ehco 'This will run only if the state of Pipeline has changed!'
                }
        }
}

