docker run -d --name confluence \
	--restart always \
	-p 8090:8090 \
	-e TZ="Asia/Shanghai" \
	-m 4G \
	-v /data/confluence/data:/var/atlassian/application-data/confluence \
	my-confluence:latest
