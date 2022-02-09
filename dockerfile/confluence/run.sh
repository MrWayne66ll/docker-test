docker run -d --name confluence \
	--restart always \
	-p 8090:8090 \
	-e TZ="Asia/Shanghai" \
	-m 4G \
	my-confluence:latest