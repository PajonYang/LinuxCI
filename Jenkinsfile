#!groovy

node('Ubuntu16_x86'){
	currentBuild.result = "SUCCESS"
	try{
		stage('Get clone'){
		   checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/PajonYang/LinuxCI']]])
		}
		stage('Build'){

			echo "Building ......" 
		}
		stage('Unit Testing'){

			echo "Testing ......"      
		}
		stage('Delivery'){

			echo "Delivery ......" 
		}
		stage('Error shown'){

			try{
				//sh 'exit 1'
			}
			catch (exc) {
				echo 'Something failed'
			throw exc
			}
		}
		stage('Cleanup'){
                echo 'cleanup'
                //sh 'rm -rf Jenkins_Pipeline'

                mail	to: 'v-peiy@microsoft.com' 		
                        subject: 'project build successful',
                        body: 'project build successful'	                                   
       		}
	}
	catch (err){
		currentBuild.result = "FAILURE"
			mail	to: 'v-peiy@microsoft.com' 		
                                subject: 'project build failed',
                                body: 'project build error is here: ${env.BUILD_URL}'
		throw err
	}
}
