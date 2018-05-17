def workspace;
node('Ubuntu16_x86'){
        stage('Get clone'){
             checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/PajonYang/LinuxCI']]]) 
             workspace =pwd()
            }
        stage('Deploy'){
        //执行部署脚本
            echo "Deploying ......"
            echo "`pwd`"
        }
        stage('Test01'){
        //测试部署脚本
            echo "Tesing ......"
            sh 'test01.sh'
        }
        stage('Delivery'){
        //交付部署脚本
            echo "Delivery ......" 
        }
}
