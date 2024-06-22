const express = require('express');
const router = express.Router();

// 导入各个子路由
const userRoutes = require('./user');//用户接口 登录 注册 删除
const productRoutes = require('./Product');//产品接口
const fileimage = require('./fileimage')
// 使用子路由
router.use('/user', userRoutes);
router.use('/product', productRoutes);
router.use('/fileimage', fileimage)
module.exports = router;
