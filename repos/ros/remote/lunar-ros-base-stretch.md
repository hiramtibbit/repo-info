## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:a34c553c14ee8601fb0c9ee0ed517fc30079ca9aba8a553b24c21e4dadf1052e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:f9ac0c647987d6b57833233e7a00de1d0709bd89641fc3d4f3945b39171e584a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.0 MB (492013108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8adb9e2b82b59285e3218972362b883fad3f16cc7a414547aeb6f9ff0006590`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:45:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca81767dc349c71990259c0d871cea8bada6fbe94774c901a28e5867ce7ebe69`  
		Last Modified: Thu, 15 Feb 2018 12:34:10 GMT  
		Size: 122.2 MB (122213973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:39c7b6960cfeaec32df8fc38b37c2082cd28f32bb4c85a3be64f733fa0da2d04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435243978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae2a1c26e95205e5b15eec4f8627aaf5394c8ea71a7df22fa3a3bf4f14a0e70`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:19:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 04:19:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 04:21:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:21:38 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 04:21:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 04:22:26 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 04:22:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Feb 2018 04:32:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 04:32:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 04:32:10 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:36:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1aa9de31195f13a194a89e8cab460e42e89785da4de296ee67f49a473151502`  
		Last Modified: Fri, 16 Feb 2018 05:02:17 GMT  
		Size: 6.8 MB (6793887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bd0f2d5b7b2d1640ece1997ec9b4c0ba35182ab50e9b76c7a5dd5b1036fb7a`  
		Last Modified: Fri, 16 Feb 2018 05:02:13 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d0729a045cc054a9c5ef1740283f8a4a96ca631ec59e91a6ac8bdaac8463e`  
		Last Modified: Fri, 16 Feb 2018 05:02:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc43d45db2b7da99f77fed625e4a05a21f6562e263528fb36a038982f6ded28`  
		Last Modified: Fri, 16 Feb 2018 05:02:47 GMT  
		Size: 61.9 MB (61941610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603fdd990e3bdef118a53a405a6364271e640a935f1a6486cbee20ccfc5d39b3`  
		Last Modified: Fri, 16 Feb 2018 05:02:11 GMT  
		Size: 785.5 KB (785511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61e469bd70b92ebd66aba2e25058603d6bc147542ca8709ca21b14b80dd10f`  
		Last Modified: Fri, 16 Feb 2018 05:03:38 GMT  
		Size: 206.8 MB (206769329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937262db05ad615818da854a8f99c96962bc7eb1c78647951dfb515a968ef62`  
		Last Modified: Fri, 16 Feb 2018 05:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494a24671515648e678840d16acdaf9bbb398b9dac822beff545deffd65512c`  
		Last Modified: Fri, 16 Feb 2018 05:04:38 GMT  
		Size: 116.0 MB (116029937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
