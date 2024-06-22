const express = require('express');
const router = express.Router();

//数据库配置
const db = require('../db/db')

// 产品接口逻辑
router.get('/', (req, res) => {
  res.send('You have accessed the product interface');
});


router.get('/nav', (req, res) => {//导航栏预览api
  db.queryTables((err, results) => {//调用db.js方法
    if (err) {
      console.error('查询错误: ' + err.stack);
      return res.status(500).send('数据库查询失败');
    }
    let anvres = {
      code: 0,
      msg: 'Success',
      data: results
    }
    res.json(anvres);
  });
  // res.send('You have accessed the product interface');
});



//返回指定类型的商品数据
router.get('/showclass', (req, res) => {
  const refig = req.query.refig
  const nav = req.query.nav
  // res.send({
  //   code:200,
  //   msg:"",
  //   refig:refig
  // })
  const class_tables = {
    "iphone": "iphone_table",
    "computer": "computer_table",
    "flat": "flat_table",
    "router": "router_table",
    "household": "household_table",
    "earphone": "earphone_table"
  };
  // console.log(class_tables[refig])
  let query1 = `SELECT * FROM ${class_tables[refig]}`;
  let query2 = `SELECT COUNT(*) AS count FROM ${class_tables[refig]}`;
  if (nav) {
    query1 = `SELECT * FROM nav_${nav}`;
    query2 = `SELECT COUNT(*) AS count FROM nav_${nav}`;
  }
  db.showtable_class(query1, query2)
    .then(response => {
      res.json({
        code: 0,
        msg: 'Success',
        count: response.count,
        data: response.rows,

      });
    })
    .catch(err => {
      console.error('Error querying flat_table:', err);
      res.status(500).json({
        code: 1,
        msg: 'Error querying flat_table',
        data: null
      });
    });
});


//单个商品轮播图图片数据返回
router.get('/individualproducts', (req, res) => {
  //获取get参数值
  const refig = req.query.refig
  const id = req.query.id
  const class_tables = {
    "iphone": "iphone_detail_table",
    "computer": "computer_detail_table",
    "flat": "flat_detail_table",
    "router": "router_detail_table",
    "household": "household_detail_table",
    "earphone": "earphone_detail_table"
  };
  // console.log(class_tables[refig],id)
  const query1 = `SELECT * FROM ${class_tables[refig]} where ${refig}_id=${id}`;
  const query2 = `SELECT COUNT(*) AS count FROM ${class_tables[refig]} where ${refig}_id=${id}`;
  db.showtable_class(query1, query2)
    .then(response => {
      res.json({
        code: 0,
        msg: 'Success',
        count: response.count,
        data: response.rows,

      });
    })
    .catch(err => {
      console.error('Error querying flat_table:', err);
      res.status(500).json({
        code: 1,
        msg: 'Error querying flat_table',
        data: null
      });
    });

})



//单个商品基本信息
//单个商品轮播图图片数据返回
router.get('/Information', (req, res) => {
  //获取get参数值
  const refig = req.query.refig
  const id = req.query.id
  const class_tables = {
    "iphone": "iphone_table",
    "computer": "computer_table",
    "flat": "flat_table",
    "router": "router_table",
    "household": "household_table",
    "earphone": "earphone_table"
  };
  // console.log(class_tables[refig],id)
  const query1 = `SELECT * FROM ${class_tables[refig]} where id=${id}`;
  const query2 = `SELECT COUNT(*) AS count FROM ${class_tables[refig]} where id=${id}`;
  db.showtable_class(query1, query2)
    .then(response => {
      res.json({
        code: 0,
        msg: 'Success',
        count: response.count,
        data: response.rows,

      });
    })
    .catch(err => {
      console.error('Error querying flat_table:', err);
      res.status(500).json({
        code: 1,
        msg: 'Error querying flat_table',
        data: null
      });
    });

})



//查询商品详情图返回给前端json
router.get('/detaildiagram', (req, res) => {
  //获取get参数值
  const refig = req.query.refig
  const id = req.query.id
  const class_tables = {
    "iphone": "iphone_images_table",
    "computer": "computer_images_table",
    "flat": "flat_images_table",
    "router": "router_images_table",
    "household": "household_images_table",
    "earphone": "earphone_images_table"
  };
  // console.log(class_tables[refig],id)
  const query1 = `SELECT * FROM ${class_tables[refig]} where ${refig}_id=${id}`;
  const query2 = `SELECT COUNT(*) AS count FROM ${class_tables[refig]} where ${refig}_id=${id}`;
  db.showtable_class(query1, query2)
    .then(response => {
      res.json({
        code: 0,
        msg: 'Success',
        count: response.count,
        data: response.rows,

      });
    })
    .catch(err => {
      console.error('Error querying flat_table:', err);
      res.status(500).json({
        code: 1,
        msg: 'Error querying flat_table',
        data: null
      });
    });

})



//返回轮播图
router.get('/indexcarouselimages', (req, res) => {
  // console.log(class_tables[refig],id)
  const query1 = `SELECT * FROM carousel_images`;
  const query2 = `SELECT COUNT(*) AS count FROM carousel_images`;
  db.showtable_class(query1, query2)
    .then(response => {
      res.json({
        code: 0,
        msg: 'Success',
        count: response.count,
        data: response.rows,

      });
    })
    .catch(err => {
      console.error('Error querying flat_table:', err);
      res.status(500).json({
        code: 1,
        msg: 'Error querying flat_table',
        data: null
      });
    });

})

//随机返回18个数据
router.get('/suijidata', async (req, res) => {
  try {
    const data = await db.suijidata();
    res.json(data);
  } catch (error) {
    res.status(500).json({
      code: 1,
      msg: "Error",
      error: error.message
    });
  }
});


//插入购物车
router.post('/charugouquche', (req, res) => {
  console.log(req.body)
  const { id, account_id, Model, src, Price, quantity } = req.body;
  console.log(id)
  db.charugouwuche(id, account_id, Model, src, Price, quantity, (err, result) => {
    if (err) {
      console.log("500")
      res.status(500).json({ error: 'Error registering user' });
    } else {
      res.json({ code: 0, result });
      console.log(200)
    }
  });

});


//查询购物车数据
router.get('/showgouwuche', (req, res) => {
  // const id = req.query.id
  const account_id = req.query.account_id


  const sql = `SELECT * FROM product where account_id=${account_id}`;
  db.showgouwuche(sql, (result) => {
    res.json(result);
  });
});

//删除购物车数据接口

router.delete('/deleteproduct', (req, res) => {
  console.log("test")
  const { id, account_id } = req.body;

  db.deleteProduct(id, account_id, (result) => {
    res.status(result.code).json(result);
  });
});



//分页查询数据表
router.get('/select/table', (req, res) => {
  const class_tables = {
    "iphone": "iphone_table",
    "computer": "computer_table",
    "flat": "flat_table",
    "router": "router_table",
    "household": "household_table",
    "earphone": "earphone_table"
  };
  const refig = req.query.refig;
  const page = parseInt(req.query.page, 10);
  const limit = parseInt(req.query.limit, 10);

  const offset = (page - 1) * limit;

  const countQuery = `SELECT COUNT(*) AS count FROM ${class_tables[refig]}`;
  const dataQuery = `SELECT * FROM ${class_tables[refig]}  LIMIT ${limit} OFFSET ${offset}`;

  db.selectTable(countQuery, [class_tables[refig]], (countResults) => {
    if (!countResults || countResults.length === 0) {
      // 处理没有结果的情况
      return res.status(404).json({ code: 404, msg: 'No results found', count: 0, data: [] });
    }
    const totalRows = countResults[0].count;

    db.selectTable(dataQuery, [class_tables[refig], limit, offset], (dataResults) => {
      res.json({
        code: 0,
        msg: 'Success',
        count: totalRows,
        data: dataResults
      });
    });
  });
});

///分页查询详情图
router.get('/select/tableimages', (req, res) => {
  const class_tables = {
    "iphone": "iphone_images_table",
    "computer": "computer_images_table",
    "flat": "flat_images_table",
    "router": "router_images_table",
    "household": "household_images_table",
    "earphone": "earphone_images_table"
  };
  const refig = req.query.refig;
  const page = parseInt(req.query.page, 10);
  const limit = parseInt(req.query.limit, 10);

  const offset = (page - 1) * limit;

  const countQuery = `SELECT COUNT(*) AS count FROM ${class_tables[refig]}`;
  const dataQuery = `SELECT * FROM ${class_tables[refig]}  LIMIT ${limit} OFFSET ${offset}`;

  db.selectTable(countQuery, [class_tables[refig]], (countResults) => {
    if (!countResults || countResults.length === 0) {
      // 处理没有结果的情况
      return res.status(404).json({ code: 404, msg: 'No results found', count: 0, data: [] });
    }
    const totalRows = countResults[0].count;

    db.selectTable(dataQuery, [class_tables[refig], limit, offset], (dataResults) => {
      res.json({
        code: 0,
        msg: 'Success',
        count: totalRows,
        data: dataResults
      });
    });
  });
});


//分页查询主图
router.get('/select/tablemainimages', (req, res) => {
  const class_tables = {
    "iphone": "iphone_detail_table",
    "computer": "computer_detail_table",
    "flat": "flat_detail_table",
    "router": "router_detail_table",
    "household": "household_detail_table",
    "earphone": "earphone_detail_table"
  };
  const refig = req.query.refig;
  const page = parseInt(req.query.page, 10);
  const limit = parseInt(req.query.limit, 10);

  const offset = (page - 1) * limit;

  const countQuery = `SELECT COUNT(*) AS count FROM ${class_tables[refig]}`;
  const dataQuery = `SELECT * FROM ${class_tables[refig]}  LIMIT ${limit} OFFSET ${offset}`;

  db.selectTable(countQuery, [class_tables[refig]], (countResults) => {
    if (!countResults || countResults.length === 0) {
      // 处理没有结果的情况
      return res.status(404).json({ code: 404, msg: 'No results found', count: 0, data: [] });
    }
    const totalRows = countResults[0].count;

    db.selectTable(dataQuery, [class_tables[refig], limit, offset], (dataResults) => {
      res.json({
        code: 0,
        msg: 'Success',
        count: totalRows,
        data: dataResults
      });
    });
  });
});

//查询商品总数返回
router.get('/countrecords',async (req, res) => {
  try {
    const records = await db.countRecords();
    res.json(records);
  } catch (error) {
    res.status(500).json({ error: 'Error counting records' });
  }
});


module.exports = router;
