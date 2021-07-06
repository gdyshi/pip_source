# pip_source

# run

```
mkdir /home/pipmirror
docker run --name pip-source -p 8083:80 -v /home/pipmirror:/srv/pypi gdyshi/pip-source
```

# 更新pip

```
docker exec -it pip-source bash
python /bandersnatch/src/runner.py 3600
```

# 客户端使用
在 pip 配置文件 ~/.pip/pip.conf 中设置 extra-index-url

```
[global]
extra-index-url = http://localhost:8080/simple/
```

linux系统配置文件路径为： `~/.pip/pip.conf`;
windows系统配置文件路径为： `% APPDATA%/pip/pip.ini`。windows下无此文件，可手动创建此文件

# 参考
- [win10 环境下如何修改 Python pip 的更新源？](https://www.zhihu.com/question/38341743)
