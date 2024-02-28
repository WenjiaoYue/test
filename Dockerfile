FROM node:18-alpine

# 设置工作目录为 Git 仓库根目录
WORKDIR /usr/src/app

# 将 package.json 和 package-lock.json 复制到工作目录
COPY package*.json ./

# 安装依赖
RUN npm install

# 将所有文件复制到工作目录
COPY . .

# 构建 SvelteKit 应用
RUN npm run build

# 暴露应用程序运行的端口
EXPOSE 5173

# 运行应用程序
CMD ["npm", "run", "dev"]



