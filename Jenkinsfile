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
        cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: '/root/workspace/Jenkins_Pipeline/', sortingMethod: 'ALPHABETICAL'
}
