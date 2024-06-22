# shopping
前端购物网站+layui后台管理系统+node.js后端
# 运行说明
1.修改shopping文件夹和admin文件夹下的html文件里面的请求路径，比如原来是这样http://x.x.x.x:3000/api/product/indexcarouselimages 
  把域名修改成你运行环境的域名，本地修改成127.0.0.1，服务器的话修改成服务器的域名或者ip
2.导入数据库，在数据库新建shopping数据库，直接在shopping数据库下导入sql,注意修改数据库字符集规则，根据自己数据库的字符集进行选择，数据方面上有一小点差异，不影响
3.后端依赖安装，进入到node目录，打开cmd，输入npm install 命令，没有node环境先安装环境
4.修改node/db/db.js文件下的数据库的用户名和密码
5.启动服务，在根文件夹下启动服务，不要进入到子目录，就是这个文本文件当前的目录下启动服务，cmd输入node node/index.js 后面这个是index.js文件的位置
6.shopping文件夹下是前端页面，admin是后台管理系统，入口文件都是index.html
