#!groovy

node('ub16x86'){
	currentBuild.result = "SUCCESS"
	try{
		stage('Get clone'){
		   checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/PajonYang/LinuxCI']]])
		}
		stage('Build'){

			echo "Building ......" 
			echo "Packing compression"
			sh 'tar -zcvf /root/workspace/jenkins.tar /root/workspace/Jenkins_pipe'
		}
		stage('Unit Testing'){

			echo "Testing ......"      
		}
		stage('Delivery'){

			echo "Delivery ......" 
			sh 'ssh 10.217.249.76 mkdir -p /root/share/$BUILD_NUMBER'
			sh 'scp /root/workspace/jenkins.tar root@10.217.249.76:/root/share/$BUILD_NUMBER'
			sh 'ssh 10.217.249.76 ls -al /root/share/$BUILD_NUMBER'
			//sshPublisher(publishers: [sshPublisherDesc(configName: 'Cent7x64_02-SSH', transfers: [sshTransfer(excludes: '', execCommand: 'ls -al  /root/', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/root/share', remoteDirectorySDF: false, removePrefix: '/root/workspace', sourceFiles: '/root/workspace/Jenkins_pipe')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
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

                mail	to: 'v-peiy@microsoft.com', 		
                        subject: 'Jenkins mail - Build successful',
                        body: 'Project build successful - Sent from Jenkins'	                                   
       		}
	}
	catch (err){
		currentBuild.result = "FAILURE"
			mail	to: 'v-peiy@microsoft.com', 		
                                subject: 'Jenkins mail - Build fail',
                                body: 'project build error is here: ${env.BUILD_URL} - Sent from Jenkins'
		throw err
	}
}
