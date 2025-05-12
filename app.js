const http = require("http");

const host = "0.0.0.0"; // Dockerコンテナ内でリッスンするすべてのアドレス
const port = 8080;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain");
  res.end("Hello, World from Docker!\n");
});

server.listen(port, host, () => {
  console.log(`Server running at http://${host}:${port}/`);
});
