const express = require('express');
const router = require('./router/router');
const app = express();
const cors = require('cors');
const port = 3000;
// 允许所有来源访问
app.use(function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});
app.use(cors({
  origin: '*', // 更改为你的前端服务器地址
  allowedHeaders: ['X-Folder-Name', 'Content-Type','nav-id','nav-table'], // 允许的自定义请求头
  credentials: true // 如果需要携带Cookie，请设置为true
}));
// 用于解析application/json
app.use(express.json());

// 用于解析application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));
app.use('/api', router);

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
