const express = require('express');
const router = express.Router();
const db = require('../db/db')
// 用户接口逻辑
router.get('/', (req, res) => {
  res.send('User API');
});

//
// 注册API路由
router.post('/enroll', (req, res) => {
  console.log(req.body)
  const { cellphone, nickname, password } = req.body;

  // 构造SQL插入语句
  const sql = 'INSERT INTO users (account, password, name) VALUES (?, ?, ?)';
  const values = [cellphone, password, nickname];

  // 执行SQL语句
  // 调用db.js中的registerUser函数
  db.enroll(cellphone, password, nickname, (err, result) => {
    if (err) {
      console.log("500")
      res.status(500).json({ error: 'Error registering user' });
    } else {
      res.json({ code: 0, result });
      console.log(200)
    }
  });
});



//login
router.post('/login', async (req, res) => {
  const { username, password } = req.body;
  console.log(username, password)
  try {
    const results = await db.login('SELECT * FROM users WHERE account = ?', [username]);
    console.log(results)
    if (results.length === 0) {
      res.status(401).send('User not found');
      return;
    }

    const user = results[0];
    console.log(results)
    // 这里应该有一个密码验证的过程
    if (password === user.password) {
      res.status(200).send({ message: 'Login successful', user });
    } else {
      res.status(401).send('Invalid password');
    }
  } catch (err) {
    res.status(500).send('Error executing query');
  }
});
//管理员登录
router.post('/adminlogin', async (req, res) => {
  const { username, password } = req.body;
  console.log(username, password)
  try {
    const results = await db.login('SELECT * FROM administrators WHERE account = ?', [username]);
    console.log(results)
    if (results.length === 0) {
      res.status(401).send('User not found');
      return;
    }

    const user = results[0];
    console.log(results)
    // 这里应该有一个密码验证的过程
    if (password === user.password) {
      res.status(200).send({ message: 'Login successful', user });
    } else {
      res.status(401).send('Invalid password');
    }
  } catch (err) {
    res.status(500).send('Error executing query');
  }
});


//查询所有用户
router.get('/allusers', (req, res) => {
  db.queryAllUsers((err, users) => {
    if (err) {
      return res.json({
        code: 1,
        msg: '查询失败',
        count: 0,
        data: []
      });
    }
    res.json({
      code: 0,
      msg: '查询成功',
      count: users.length,
      data: users
    });
  });
});
//更新地址
router.post('/updateuseraddress', (req, res) => {
  const { account, address } = req.body
  db.updateuseraddress(account, address, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '更新成功' });
  });
});
//更新用户表
router.post('/updateuser', (req, res) => {
  const { account, password, name, address } = req.body.dd
  db.updateuser(account, password, name, address, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '更新成功' });
  });
});
//删除用户表
router.delete('/deleteuser', (req, res) => {
  const { account } = req.body
  db.deleteuser(account, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '删除成功' });
  });
});



//插入订单
router.post('/insertOrder', (req, res) => {
  const { account_id, order_amount } = req.body
  console.log(account_id, order_amount)
  db.insertOrder(account_id, new Date(), order_amount, (error, orderId) => {
    if (error) {
      console.error('插入订单失败:', error);
    } else {
      console.log('订单插入成功，订单ID:', orderId);
      db.deletAllproduct(account_id, (error, orderid) => {

        if (error) {
          console.log("删除购物车失败")

        } else {
          res.json({ msg: "请求成功" })
        }
      })
    }
  });


})
//查询该account_id的订单
router.get('/selectallorders', (req, res) => {
  const account_id = req.query.account
  console.log(account_id)
  db.selectallorders(account_id, (error, results) => {
    if (error) {
      res.status(500).json({
        code: 0,
        msg: 'Error querying flat_table',
        data: null
      });

    } else {
      res.status(200).json({
        code: 0,
        msg: 'succe',
        data: results
      });
    }
  })

})

//查询所有订单
router.get('/selectallallallorders', (req, res) => {
  db.selectallallallorders((error, results) => {
    if (error) {
      res.status(500).json({
        code: 0,
        msg: 'Error querying flat_table',
        data: null
      });

    } else {
      res.status(200).json({
        code: 0,
        msg: 'succe',
        data: results
      });
    }
  })

})
module.exports = router;
