# Docker

Build the image via the following command:
$ docker build -t stompleetest .

Launch the container from the stompleetest image in detached mode via the following command:
$ docker run -p 8000:80 -d stompleetest
