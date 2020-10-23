# kscript-docker

Image for running scripts via [kscript](https://github.com/holgerbrandl/kscript) in docker

Usage:

```shell
cd <folder with ur script>
docker run -i -v $(pwd):/home -w /home m9ffk4/kscript \
kscript <options> <script>
```

p.s https://github.com/holgerbrandl/kscript#run-with-docker this not working in my case
