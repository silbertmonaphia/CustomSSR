#用法示范:  

请保证你的/home/ss/下有rss_normal.json 和rss_18+.json  
不然你得自己去改rsstart.sh脚本  
```
cd /home  
sudo git clone -b	manyuser  https://github.com/silbertmonaphia/CustomSSR.git  
sudo ln -s /home/CustomSSR/rsstart.sh /usr/bin/rsstart  
rsstart   
```
#简单配置说明  

rss_normal.json和rss_18+.json格式都如下(来源官网wiki)  
```
{
    "server":"0.0.0.0",
    "server_ipv6": "::",
    "server_port":8388,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"mypassword",
    "timeout":300,
    "udp_timeout": 60,
    "method":"aes-256-cfb",
    "protocol": "auth_aes128_md5",
    "protocol_param": "",
    "obfs":"http_simple",
    "obfs_param": "",
    "fast_open": false,
    "workers": 1

}
```  
一般情况下，只需要修改以下五项即可：  
```
"server":"0.0.0.0",        //服务器地址
"server_port":8388,        //端口
"password":"password",     //密码
"method":"aes-256-cfb",    //加密方式
"protocol": "auth_aes128_md5",    //协议
```  

关于更多shadowsocksR的使用，请移步[官方github地址](https://github.com/shadowsocksr/shadowsocksr)
