FROM cptactionhank/atlassian-confluence:latest

USER root

# 将代理破解包加入容器
COPY "atlassian-agent.jar" /opt/atlassian/confluence/

# 设置启动加载代理包
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/confluence/atlassian-agent.jar ${CATALINA_OPTS}"' >> /opt/atlassian/confluence/bin/setenv.sh && echo 'java -jar atlassian-agent.jar -d -m test@test.com -n test-name -p conf -o http://127.0.0.1 -s B7Q7-82IY-XBLM-RDHA' >> /opt/atlassian/confluence/do-atlassian-agent.sh
