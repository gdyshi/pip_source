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
