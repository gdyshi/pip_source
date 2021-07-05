# pip_source

# run

```
mkdir /home/pipmirror
docker run --name pip-source -p 8083:80 -v /home/pipmirror:/srv/pypi pypa/bandersnatch
```
