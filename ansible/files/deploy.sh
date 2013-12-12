TOMCAT_IP="webapp-{{id}}.aws.xebiatechevent.info"
CATALINA_BASE="/home/ec2-user/catalina_base"
ssh -oStrictHostKeyChecking=no -i /home/jenkins/.ssh/gatling-gar.pem ec2-user@$TOMCAT_IP '/home/ec2-user/shutdown.sh'
ssh -oStrictHostKeyChecking=no -i /home/jenkins/.ssh/gatling-gar.pem ec2-user@$TOMCAT_IP "rm -rf $CATALINA_BASE/webapps/*;rm -rf $CATALINA_BASE/temp/*"
scp -oStrictHostKeyChecking=no -i /home/jenkins/.ssh/gatling-gar.pem /home/jenkins/.m2/repository/com/xebia/tinyapp/0.0.1-SNAPSHOT/tinyapp-0.0.1-SNAPSHOT.war ec2-user@$TOMCAT_IP:$CATALINA_BASE/webapps/tinyapp.war
ssh -oStrictHostKeyChecking=no -i /home/jenkins/.ssh/gatling-gar.pem ec2-user@$TOMCAT_IP '/opt/apache-tomcat/tomcat8/bin/startup.sh'
echo "war deployed"
