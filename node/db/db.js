const mysql = require('mysql');

// 创建数据库连接配置
const db = {
  host: 'localhost', // 数据库地址
  user: 'root', // 数据库用户名
  password: '', // 数据库密码
  database: 'shopping' // 数据库名称
}
// 用于保存数据连接实例
var connection = null;
var pingInterval;
// 如果数据连接出错，则重新连接
function handleError(err) {
  logger.info(err.stack || err);
  connect();
}
// 建立数据库连接
function connect() {
  if (connection !== null) {
      connection.destroy();
      connection = null;
  }
  connection = mysql.createConnection(db);
  connection.connect(function (err) {
      if (err) {
          console.error('连接错误: ' + err.stack);
          return;
        }
        console.log('连接成功');
  });
  connection.on("error", handleError);
  // 每个小时ping一次数据库，保持数据库连接状态
  clearInterval(pingInterval);
  pingInterval = setInterval(() => {
      console.log('ping...');
      connection.ping((err) => {
          if (err) {
              console.log('ping error: ' + JSON.stringify(err));
          }
      });
  }, 110000);
}
connect();
function queryTables(callback) {//查询导航栏图片
  const queries = [
    `SELECT * FROM nav_iphone`,
    `SELECT * FROM nav_flat`,
    `SELECT * FROM nav_computer`,
    `SELECT * FROM nav_earphone`,
    `SELECT * FROM nav_router`,
    `SELECT * FROM nav_household`
  ];

  const results = {};

  queries.forEach((sql, index) => {
    connection.query(sql, (err, rows) => {
      if (err) {
        callback(err);
        return;
      }
      results[sql.match(/FROM (\w+)/)[1]] = rows; // 使用正则表达式提取表名
      if (Object.keys(results).length === queries.length) {
        callback(null, results);
      }
    });
  });
}

function updatenav(sql) {//修改导航预览图图片接口
  connection.query(sql, (err, results, fields) => {
    if (err) {
      console.error('Error executing query: ', err);
      return;
    }
    console.log('Query results: ', results);
  });
}
function showtable_class(sql1, sql2) {//查询语句
  return Promise.all([
    new Promise((resolve, reject) => {

      connection.query(sql1, (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results);
        }
      });
    }),
    new Promise((resolve, reject) => {

      connection.query(sql2, (err, results) => {
        if (err) {
          reject(err);
        } else {
          resolve(results[0].count);
        }
      });
    })
  ]).then(results => {
    return {
      rows: results[0],
      count: results[1]
    };
  });
}


//随机返回18个数据
async function suijidata() {
  try {
    const promises = [];

    // 查询 6 个数据表，每个表 3 条数据
    for (const table of ['iphone_table', 'computer_table', 'flat_table', 'router_table', 'household_table', 'earphone_table']) {
      const sql = `SELECT * FROM \`${table}\` ORDER BY RAND() LIMIT 3`;
      promises.push(new Promise((resolve, reject) => {
        connection.query(sql, (err, results) => {
          if (err) {
            reject(err);
          } else {
            resolve(results);
          }
        });
      }));
    }

    // 等待所有查询完成
    const results = await Promise.all(promises);

    // 关闭数据库连接


    // 返回结果
    return {
      code: 0,
      msg: "Success",
      count: 18,
      data: results
    };
  } catch (error) {
    return {
      code: 1,
      msg: "Error",
      error: error.message
    };
  }
}





//注册账户
function enroll(account, password, name, callback) {
  const sql = 'INSERT INTO users (account, password, name) VALUES (?, ?, ?)';
  const values = [account, password, name];

  connection.query(sql, values, (err, result) => {
    if (err) {
      callback(err, null);
    } else {
      callback(null, { message: 'User registered successfully', userId: result.insertId });
    }
  });
};


//LoGIn
function login(sql, params) {
  return new Promise((resolve, reject) => {
    connection.query(sql, params, (err, results) => {
      if (err) {
        reject(err);
        return;
      }
      resolve(results);
    });
  });
};



///插入购物车
function charugouwuche(id, account_id, Model, src, Price, quantity, callback) {
  const sql = 'SELECT * FROM product WHERE id = ? AND account_id = ?';
  const values = [id, account_id];

  connection.query(sql, values, (err, results) => {
    if (err) {
      callback(err, null);
      return;
    }

    if (results.length > 0) {
      // 如果存在记录，则修改quantity
      const sqlUpdate = 'UPDATE product SET quantity = quantity + ? WHERE id = ? AND account_id = ?';
      const valuesUpdate = [quantity, id, account_id];

      connection.query(sqlUpdate, valuesUpdate, (err, result) => {
        if (err) {
          callback(err, null);
        } else {
          callback(null, { message: 'Product quantity updated successfully', id: id, account_id: account_id });
        }
      });
    } else {
      // 如果不存在记录，则插入新记录
      const sqlInsert = 'INSERT INTO product (id, account_id, Model, src, Price, quantity) VALUES (?, ?, ?, ?, ?, ?)';
      const valuesInsert = [id, account_id, Model, src, Price, quantity];

      connection.query(sqlInsert, valuesInsert, (err, result) => {
        if (err) {
          callback(err, null);
        } else {
          callback(null, { message: 'Product added successfully', id: id, account_id: account_id });
        }
      });
    }
  });
};

//查询购物车记录
// 封装查询函数
function showgouwuche(sql, callback) {
  connection.query(sql, (error, results, fields) => {
    if (error) {
      return callback({
        code: 500,
        msg: 'Internal Server Error',
        count: 0,
        data: null
      });
    }

    // 假设我们总是返回数据列表
    const response = {
      code: 200,
      msg: 'Success',
      count: results.length,
      data: results
    };

    callback(response);
  });
}

// 封装删除产品的函数
function deleteProduct(id, accountId, callback) {
  // 构造SQL删除语句
  const sql = `DELETE FROM product WHERE id = ? AND account_id = ?`;

  // 执行SQL语句
  connection.query(sql, [id, accountId], (error, results, fields) => {
    if (error) {
      return callback({
        code: 500,
        msg: 'Internal Server Error',
        data: null
      });
    }

    // 判断删除是否成功
    if (results.affectedRows > 0) {
      callback({
        code: 200,
        msg: 'Product deleted successfully',
        data: results
      });
    } else {
      callback({
        code: 404,
        msg: 'Product not found',
        data: null
      });
    }
  });
}

//分页查询数据
function selectTable(sql, params, callback) {
  connection.query(sql, params, (err, results) => {
    if (err) throw err;
    callback(results);
  });
}


//查询所有用户
const queryAllUsers = (callback) => {
  connection.query('SELECT * FROM users', (err, results, fields) => {
    if (err) {
      return callback(err, null);
    }
    callback(null, results);
  });
};

///////////轮播图上传
const insertImagecarousel = (id, filePath, callback) => {
  const sql = 'INSERT INTO carousel_images (id, src) VALUES (?, ?)';
  console.log(filePath)
  connection.query(sql, [id, filePath], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};
//更新轮播图
const updateImagecarousel = (id, filePath, callback) => {
  const sql = 'UPDATE carousel_images SET src = ? WHERE id = ?';
  console.log(filePath)
  connection.query(sql, [filePath, id], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};
//删除轮播图
const deletetImagecarousel = (id, callback) => {
  const sql = 'DELETE FROM carousel_images WHERE id = ?';
  connection.query(sql, [id], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};




function insertData(id, src) {
  return new Promise((resolve, reject) => {
    pool.execute(
      'INSERT INTO carousel_images (id,  src) VALUES (?, ?)',
      [id, src],
      (error, results) => {
        if (error) {
          reject(error);
        } else {
          resolve(results);
        }
      }
    );
  });
}

//插入商品
function insertproduct(id, price, category, model, context, imageName, callback) {
  // 注意：动态生成表名可能不是一个好的做法，因为它可能会导致安全问题。
  // 如果可能的话，考虑使用固定的表名，并在表中处理不同的category。
  const tableName = category + '_table'; // 假设category是安全的，不会导致SQL注入
  const sql = `INSERT INTO ?? (id, Price, category, Model, context, src) VALUES (?, ?, ?, ?, ?, ?)`;
  const values = [tableName, id, price, category, model, context, imageName];

  console.log(sql, values);
  connection.query(sql, values, (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
}
//更新商品
function updateproduct(id, price, category, model, context, imageName, callback) {
  // 注意：动态生成表名可能不是一个好的做法，因为它可能会导致安全问题。
  // 如果可能的话，考虑使用固定的表名，并在表中处理不同的category。
  const tableName = category + '_table'; // 假设category是安全的，不会导致SQL注入
  const sql = `UPDATE ?? SET Price = ?, Model = ?, context = ?, src = ? WHERE id = ?`;
  const values = [tableName, price, model, context, imageName, id];

  console.log(sql, values);
  connection.query(sql, values, (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
}
//删除商品
const deletetproduct = (id, category, callback) => {
  const tableName = category + '_table';
  const sql = 'DELETE FROM ?? WHERE id = ?';
  connection.query(sql, [tableName, id], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};







//详情图检查id
const checkIdExists = (id, category, callback) => {
  const query = 'SELECT * FROM ' + category + '_table WHERE id = ?';
  console.log(query)
  connection.query(query, [id], (error, results) => {
    if (error) {
      // 如果查询过程中发生错误，调用回调函数并传递错误
      return callback(error, null);
    }
    // 如果找到记录，调用回调函数并传递true
    callback(null, results.length > 0);
  });
};

// 详情图插入数据到数据库
function inserttableimages(id, category, imageName, callback) {
  const query = `INSERT INTO ${category}_images_table (${category}_id, detail_src) VALUES (${id}, "${imageName}")`;
  console.log(query)
  connection.query(query, (error, results) => {
    if (error) {
      callback(error, null);
    } else {
      callback(null, results.insertId);
    }
  });
}
//更新详情图
function updatetableimages(id, category, imageName, callback) {
  const query = `UPDATE ${category}_images_table SET detail_src = "${imageName}" WHERE id =${id}`;
  console.log(query);
  connection.query(query, (error, results) => {
    if (error) {
      callback(error, null);
    } else {
      callback(null, results.affectedRows); // 返回受影响的行数
    }
  });
}
//删除详情图
const deletetableimages = (id, category, callback) => {
  const tableName = category + '_images_table';
  const sql = 'DELETE FROM ?? WHERE id = ?';
  connection.query(sql, [tableName, id], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};





//主图
//主图检查id
// const checkIdExistsmain = (id, category,callback) => {
//   const query = 'SELECT * FROM '+category+'_table WHERE id = ?';
//   console.log(query)
//   connection.query(query, [id], (error, results) => {
//     if (error) {
//       // 如果查询过程中发生错误，调用回调函数并传递错误
//       return callback(error, null);
//     }
//     // 如果找到记录，调用回调函数并传递true
//     callback(null, results.length > 0);
//   });
// };

// 主图插入数据到数据库
function inserttableimagesmain(id, category, imageName, callback) {
  const query = `INSERT INTO ${category}_detail_table (${category}_id, detail_src) VALUES (${id}, "${imageName}")`;
  console.log(query)
  connection.query(query, (error, results) => {
    if (error) {
      callback(error, null);
    } else {
      callback(null, results.insertId);
    }
  });
}
//更新主图
function updatemainimage(id, category, imageName, callback) {
  const query = `UPDATE ${category}_detail_table SET detail_src = "${imageName}" WHERE id =${id}`;
  console.log(query);
  connection.query(query, (error, results) => {
    if (error) {
      callback(error, null);
    } else {
      callback(null, results.affectedRows); // 返回受影响的行数
    }
  });
}
//删除主图
const deletemainimage = (id, category, callback) => {
  const tableName = category + '_detail_table';
  const sql = 'DELETE FROM ?? WHERE id = ?';
  connection.query(sql, [tableName, id], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};



//更新预览框
const updateImagenav = (id, category, filePath, text, Price, callback) => {
  const sql = `UPDATE nav_${category} SET src = ?,text = ?,Price = ? WHERE id = ?`;
  console.log(filePath)
  connection.query(sql, [filePath, text, Price, id], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};





//更改地址
const updateuseraddress = (account, address, callback) => {
  const sql = `UPDATE users SET address = ? WHERE account = ?`;
  connection.query(sql, [ address, account], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};
//更新用户表
const updateuser = (account, password, name, address, callback) => {
  const sql = `UPDATE users SET password = ?,name = ?,address = ? WHERE account = ?`;
  connection.query(sql, [password, name, address, account], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};
//删除用户
const deleteuser = (account,callback) => {
  const sql = `DELETE FROM users WHERE account = ?`;
  connection.query(sql, [account], (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results);
  });
};




//生成订单号函数
function generateUniqueOrderNumber() {
  const timestamp = new Date().getTime();
  const random = Math.floor(Math.random() * 10000); // 生成一个0到9999之间的随机数
  return `${timestamp}-${random}`;
}
//插入订单号
function insertOrder(account_id, order_date, order_amount, callback) {
  const order_number = generateUniqueOrderNumber();

  const query = 'INSERT INTO orders (account_id, order_number, order_date, order_amount) VALUES (?, ?, ?, ?)';
  const values = [account_id, order_number, order_date, order_amount];

  connection.query(query, values, (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results.insertId);
  });
}
//生成订单后需要进行删除product表的指定account的数据
function deletAllproduct(account_id,callback) {


  const query = 'DELETE FROM product WHERE account_id = ?';
  const values = [account_id];

  connection.query(query, values, (error, results) => {
    if (error) {
      return callback(error, null);
    }
    callback(null, results.insertId);
  });
}
//查询所有订单基于account_id的订单
const selectallorders = (account_id,callback) => {
  connection.query(`SELECT * FROM orders where account_id = ${account_id}`, (err, results, fields) => {
    if (err) {
      return callback(err, null);
    }
    callback(null, results);
  });
};
//查询所有订单
const selectallallallorders = (callback) => {
  connection.query(`SELECT o.*, u.address
FROM orders o
INNER JOIN users u ON o.account_id = u.account;`, (err, results, fields) => {
    if (err) {
      return callback(err, null);
    }
    callback(null, results);
  });
};


//查询商品并返回总数
// 查询多个表的记录数
const countRecords = () => {
  const queries = [
    'SELECT COUNT(*) AS count FROM iphone_table',
    'SELECT COUNT(*) AS count FROM flat_table',
    'SELECT COUNT(*) AS count FROM computer_table',
    'SELECT COUNT(*) AS count FROM earphone_table',
    'SELECT COUNT(*) AS count FROM router_table',
    'SELECT COUNT(*) AS count FROM household_table'
  ];

  return new Promise((resolve, reject) => {
    const results = {};
    queries.forEach((sql, index) => {
      connection.query(sql, (err, rows) => {
        if (err) {
          return reject(err);
        }
        results[sql.match(/FROM (\w+)/)[1]] = rows[0].count; // 使用正则表达式提取表名并获取记录数
        if (Object.keys(results).length === queries.length) {
          resolve(results);
        }
      });
    });
  });
};

// 导出连接对象
// module.exports = connection;

module.exports = {
  queryTables,
  updatenav,
  showtable_class,
  suijidata,
  enroll,
  login,
  charugouwuche,
  showgouwuche,
  deleteProduct,
  selectTable,
  queryAllUsers,
  insertImagecarousel, insertData, insertproduct, checkIdExists, inserttableimages, inserttableimagesmain,
  updateImagecarousel,
  deletetImagecarousel,
  updateproduct,
  deletetproduct,
  updatetableimages,
  deletetableimages,
  updatemainimage,
  deletemainimage,
  updateImagenav,
  updateuser,
  deleteuser,
  updateuseraddress,
  insertOrder,
  deletAllproduct,
  selectallorders,
  selectallallallorders,
  countRecords
};
