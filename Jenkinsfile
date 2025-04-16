properties([
    pipelineTriggers([
        cron('* * * * *')  // Runs at 2 AM daily
    ])
])


node {
	def mavenHome= tool name: 'maven-3.9.9'	
	stage('git check-out'){
        sh 'echo " Taking the code from github"'
        git branch: 'test-1', credentialsId: 'db882271-4e7f-4b68-ae8f-db45f8e9cf66', 
        url: 'https://github.com/Idea-Better-5g/demo-java.git'
    }
    stage('compile'){
        sh 'echo " Compile the code "'
        sh "${mavenHome}/bin/mvn compile"
    }
    stage('Build '){
        sh 'echo " Build the Artifacts "'
        sh "${mavenHome}/bin/mvn clean package"
    }
}
