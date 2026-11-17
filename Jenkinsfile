pipeline { 
    agent any
    
    stages {

        stage('pull scm git ') {
            steps {
                git branch: 'main', url: 'https://github.com/teja0434/ABC_Batch14/'
            }
        }
        stage('compile ') {
            steps {
                sh 'mvn compile'
            }
        }

        stage('build') {
            steps {
                 sh 'mvn clean install'
            }
        }

        
    }

  post {

    success {
        emailext(
            to: 'teja.abc.reports@gmail.com',
            subject: "SUCCESS: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
            body: """
Build Successful

Job Name: ${env.JOB_NAME}
Build Number: ${env.BUILD_NUMBER}
Build URL: ${env.BUILD_URL}
"""
        )
    }

    failure {
        emailext(
            to: 'teja.abc.reports@gmail.com',
            subject: "FAILURE: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
            body: """
Build Failed

Job Name: ${env.JOB_NAME}
Build Number: ${env.BUILD_NUMBER}
Build URL: ${env.BUILD_URL}
"""
        )
    }
}

  


}
