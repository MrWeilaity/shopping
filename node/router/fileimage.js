const express = require('express');
const multer = require('multer');
const path = require('path');
const fs = require('fs');
const router = express.Router();
const db = require('../db/db')
const { v4: uuidv4 } = require('uuid');
const upload = multer({ dest: 'shopping/img/carousel_images/' });
const product = multer({ dest: 'shopping/img/main/' });
const upload_imagesll = multer({ dest: 'shopping/img/detail/' });
const navupload = multer({ dest: 'shopping/img/nav/' });
//插入轮播图
router.post('/insertImagecarousel', upload.single('image'), (req, res) => {
  const { id } = req.body;
  const image = req.file;

  if (!image) {
    return res.status(400).send('没有上传图片');
  }

  // 生成UUID
  const uuid = uuidv4();
  const extension = path.extname(image.originalname);
  const newImageName = `${uuid}${extension}`;
  const newImagePath = path.join('shopping/img/carousel_images/', newImageName);

  // 重命名图片
  fs.renameSync(image.path, newImagePath);
  db.insertImagecarousel(id, `./img/carousel_images/${newImageName}`, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '图片上传成功', filePath: `./img/carousel_images/${newImageName}` });
  });
  // 插入数据库

});
//修改轮播图
router.post('/updateImagecarousel', upload.single('image'), (req, res) => {
  const { id } = req.body;
  const image = req.file;

  if (!image) {
    return res.status(400).send('没有上传图片');
  }

  // 生成UUID
  const uuid = uuidv4();
  const extension = path.extname(image.originalname);
  const newImageName = `${uuid}${extension}`;
  const newImagePath = path.join('shopping/img/carousel_images/', newImageName);

  // 重命名图片
  fs.renameSync(image.path, newImagePath);
  db.updateImagecarousel(id, `./img/carousel_images/${newImageName}`, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '更新成功', filePath: `./img/carousel_images/${newImageName}` });
  });
  // 插入数据库

});
//删除轮播图
router.delete('/deletetImagecarousel', (req, res) => {
  const { id } = req.body;

  db.deletetImagecarousel(id, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '删除成功' });
  });
  // 插入数据库

});



//插入商品
router.post('/insertproduct', product.single('image'), (req, res) => {
  const { Price, category, Model, id, context } = req.body;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  const image = req.file;

  if (!image) {
    return res.status(400).send('没有上传图片');
  }
  console.log(Price, category, Model, id, context)
  // 生成UUID
  const uuid = uuidv4();
  const extension = path.extname(image.originalname);
  const newImageName = `${uuid}${extension}`;
  const newImagePath = path.join(`shopping/img/main/${cate}/`, newImageName);

  // 创建文件夹
  fs.mkdirSync(path.dirname(newImagePath), { recursive: true });

  // 重命名图片
  fs.renameSync(image.path, newImagePath);

  // 插入数据库




  db.insertproduct(id, Price, category, Model, context, `./img/main/${cate}/${newImageName}`, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '图片上传成功', filePath: `./img/main/${cate}/${newImageName}` });
  });
});
//更新商品
router.post('/updateproduct', product.single('image'), (req, res) => {
  const { Price, category, Model, id, context, src } = req.body;
  console.log(Price, category, Model, id, context, src)
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  const image = req.file;

  if (!image) {//执行没有图片的更新
    console.log("没有图片")
    db.updateproduct(id, Price, category, Model, context, src, (error, results) => {
      if (error) {
        return res.status(500).send(error);
      }
      return res.status(200).json({ message: '信息更改成功' });
    });

  } else {
    //执行有图片的更新
    // 生成UUID
    const uuid = uuidv4();
    const extension = path.extname(image.originalname);
    const newImageName = `${uuid}${extension}`;
    const newImagePath = path.join(`shopping/img/main/${cate}/`, newImageName);

    // 创建文件夹
    fs.mkdirSync(path.dirname(newImagePath), { recursive: true });

    // 重命名图片
    fs.renameSync(image.path, newImagePath);

    // 插入数据库




    db.updateproduct(id, Price, category, Model, context, `./img/main/${cate}/${newImageName}`, (error, results) => {
      if (error) {
        return res.status(500).send(error);
      }
      return res.status(200).json({ message: '图片信息更改成功' });
    });

  }

});
//删除商品
router.delete('/deletetproduct', (req, res) => {
  const { id, category } = req.body;
  db.deletetproduct(id, category, (error, results) => {
    if (error) {
      return res.status(500).send(error);
    }
    res.json({ message: '删除成功' });
  });
  // 插入数据库

});








//插入详情图
router.post('/inserttableimages', upload_imagesll.single('image'), (req, res) => {
  console.log(req.body)
  const { id, category } = req.body;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  const image = req.file;

  if (!image) {
    return res.status(400).send('没有上传图片');
  }
  db.checkIdExists(id, category, (error, exists) => {
    if (error) {
      return res.status(100).json({ error: 'Internal Server Error', message: error.message });
    }

    if (exists) {

      //在这里进插入图片操作
      // 保存图片并获取新的文件名
      const uuid = uuidv4();
      const extension = path.extname(image.originalname);
      const newImageName = `${uuid}${extension}`;
      const newImagePath = path.join(`shopping/img/detail/${cate}/`, newImageName);

      // 创建文件夹
      fs.mkdirSync(path.dirname(newImagePath), { recursive: true });

      // 重命名图片
      fs.renameSync(image.path, newImagePath);
      db.inserttableimages(id, category, `./img/detail/${cate}/${newImageName}`, (error, insertId) => {
        if (error) {
          return res.status(500).send('Database error');
        }
        res.status(200).json({ message: '图片上传成功', filePath: `./img/detail/${cate}/${newImageName}` });
      });
      // 如果ID已存在，可以返回错误或者进行其他操作

    } else {
      return res.status(300).json({ error: '没有此id', message: 'ID already exists' });
    }
  });

});
//更新详情图
router.post('/updatetableimages', upload_imagesll.single('image'), (req, res) => {
  console.log(req.body)
  const { id, category } = req.body;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  const image = req.file;

  if (!image) {
    return res.status(400).send('没有上传图片');
  }
  //在这里进插入图片操作
  // 保存图片并获取新的文件名
  const uuid = uuidv4();
  const extension = path.extname(image.originalname);
  const newImageName = `${uuid}${extension}`;
  const newImagePath = path.join(`shopping/img/detail/${cate}/`, newImageName);

  // 创建文件夹
  fs.mkdirSync(path.dirname(newImagePath), { recursive: true });

  // 重命名图片
  fs.renameSync(image.path, newImagePath);
  db.updatetableimages(id, category, `./img/detail/${cate}/${newImageName}`, (error, insertId) => {
    if (error) {
      return res.status(500).send('Database error');
    }
    res.status(200).json({ message: '图片上传成功' });
  });
  // 如果ID已存在，可以返回错误或者进行其他操作

});
//删除详情图
router.delete('/deletetableimages', (req, res) => {

  const { id, category } = req.body;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  console.log(id, category)
  db.deletetableimages(id, category, (error, insertId) => {
    if (error) {
      return res.status(500).send('Database error');
    }
    res.status(200).json({ message: '删除成功' });
  });
  // 如果ID已存在，可以返回错误或者进行其他操作

});



//insertmainimage
//添加主图
router.post('/insertmainimage', product.single('image'), (req, res) => {
  console.log(req.body)
  const { id, category } = req.body;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  const image = req.file;

  if (!image) {
    return res.status(400).send('没有上传图片');
  }
  db.checkIdExists(id, category, (error, exists) => {
    if (error) {
      return res.status(100).json({ error: 'Internal Server Error', message: error.message });
    }

    if (exists) {

      //在这里进插入图片操作
      // 保存图片并获取新的文件名
      const uuid = uuidv4();
      const extension = path.extname(image.originalname);
      const newImageName = `${uuid}${extension}`;
      const newImagePath = path.join(`shopping/img/main/${cate}/`, newImageName);

      // 创建文件夹
      fs.mkdirSync(path.dirname(newImagePath), { recursive: true });

      // 重命名图片
      fs.renameSync(image.path, newImagePath);
      db.inserttableimagesmain(id, category, `./img/main/${cate}/${newImageName}`, (error, insertId) => {
        if (error) {
          return res.status(500).send('Database error');
        }
        res.status(200).json({ message: '图片上传成功', filePath: `./img/main/${cate}/${newImageName}` });
      });
      // 如果ID已存在，可以返回错误或者进行其他操作

    } else {
      return res.status(300).json({ error: '没有此id', message: 'ID already exists' });
    }
  });

});
//更新主图
router.post('/updatemainimage', product.single('image'), (req, res) => {
  console.log(req.body)
  const { id, category } = req.body;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  const image = req.file;

  if (!image) {
    return res.status(400).send('没有上传图片');
  }


  //在这里进插入图片操作
  // 保存图片并获取新的文件名
  const uuid = uuidv4();
  const extension = path.extname(image.originalname);
  const newImageName = `${uuid}${extension}`;
  const newImagePath = path.join(`shopping/img/main/${cate}/`, newImageName);

  // 创建文件夹
  fs.mkdirSync(path.dirname(newImagePath), { recursive: true });

  // 重命名图片
  fs.renameSync(image.path, newImagePath);
  db.updatemainimage(id, category, `./img/main/${cate}/${newImageName}`, (error, insertId) => {
    if (error) {
      return res.status(500).send('Database error');
    }
    res.status(200).json({ message: '修改成功' });
  });
  // 如果ID已存在，可以返回错误或者进行其他操作



});
//删除主图
router.delete('/deletemainimage', (req, res) => {

  const { id, category } = req.body;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  console.log(id, category)
  db.deletemainimage(id, category, (error, insertId) => {
    if (error) {
      return res.status(500).send('Database error');
    }
    res.status(200).json({ message: '删除成功' });
  });
  // 如果ID已存在，可以返回错误或者进行其他操作

});

//更新预览图
router.post('/updateImagenav', navupload.single('image'), (req, res) => {
  const { id, category, filePath, text, Price } = req.body;
  const image = req.file;
  let cate = category
  if (cate == 'computer') {
    cate = 'Computer'
  }
  if (!image) {//没有图片
    db.updateImagenav(id, category, filePath, text, Price, (error, results) => {
      if (error) {
        return res.status(500).send(error);
      }
      res.json({ message: '更新成功' });
    });
  } else {//上传了图片
    // 生成UUID
    const uuid = uuidv4();
    const extension = path.extname(image.originalname);
    const newImageName = `${uuid}${extension}`;
    const newImagePath = path.join(`shopping/img/nav/${cate}/`, newImageName);

    // 重命名图片
    fs.renameSync(image.path, newImagePath);
    db.updateImagenav(id, category, `./img/nav/${cate}/${newImageName}`, text, Price, (error, results) => {
      if (error) {
        return res.status(500).send(error);
      }
      res.json({ message: '更新成功', filePath: `./img/nav/${cate}/${newImageName}` });
    });



  }


  // 插入数据库

});


module.exports = router;
