# ベースイメージとしてNode.js 18を使用します
FROM node:18

# 作業ディレクトリをコンテナ内の/appに設定します
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピーします
COPY package*.json ./

# 依存関係をインストールします
RUN npm install

# アプリケーションのソースコードをコピーします
COPY . .

# アプリケーションがリッスンするポートを公開します
EXPOSE 8080

# コンテナ起動時に実行するコマンドを定義します
CMD [ "npm", "start" ]