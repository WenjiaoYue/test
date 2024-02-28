ENV http_proxy=http://child-jf.intel.com:912
ENV https_proxy=http://child-jf.intel.com:912

# 使用Node.js 18基础镜像
FROM node:18

# 更新软件包列表并安装git
RUN apt-get update && apt-get install -y git

# Clone the ChatGPT-Langchain repository from GitHub
RUN git clone https://github.com/WenjiaoYue/test.git /app

# 设置容器内的工作目录
WORKDIR /app

# 使用npm安装依赖项
RUN npm install

# 暴露端口
EXPOSE 5173

# 指定要运行应用程序的命令
CMD ["npm", "start"]
