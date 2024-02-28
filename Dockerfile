# 使用Node.js 18基础镜像
FROM node:18

# 安装git
RUN apt-get update && apt-get install -y git

# Clone the ChatGPT-Langchain repository from GitHub
RUN git clone https://github.com/WenjiaoYue/test.git 

# 设置容器内的工作目录
WORKDIR /test

# 使用npm安装依赖项
RUN npm install


# 暴露端口（如有必要，调整端口号）
EXPOSE 5173

# 指定要运行应用程序的命令
CMD ["npm", "run", "dev"]
