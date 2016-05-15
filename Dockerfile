# 时速云使用文档
# 使用时速云 [代码构建] 和 [持续集成]
# Version:2.0.0

FROM node
MAINTAINER TenxCloud Team <service@tenxcloud.com>

# Add files
RUN apt-get install git

RUN apt-get install gitbook

RUN git clone https://github.com/tenxcloud/tenxcloud_doc

WORKDIR /tenxcloud_doc

# Expose ports
EXPOSE 3002

RUN chmod +x run.sh
RUN chmod +x build_doc.sh

# Define default command.
CMD ["./run.sh"]