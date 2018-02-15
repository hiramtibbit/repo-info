## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:7c0b5e35d46d93156f8407fcdc663b87b12679f36b66fc63767f53190e877761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c623e894f4056afe1910e37551498a6a82b24780bfe4aee53a3c29386270811c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552440262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fecc5b2c2afff84bc34636138427c13d758973a17b5f3aa5bf8cee96981979`
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
# Thu, 15 Feb 2018 11:46:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:b4103a252750ef6d4b9dadf6d5f02e640e88b40794ffece1e4df5eca6fe6d5fd`  
		Last Modified: Thu, 15 Feb 2018 12:34:50 GMT  
		Size: 60.4 MB (60427154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:afc0dd12e1d8ecc9743533b6d07ad5c6151f93b48b2f3f0cea686f61ef4c2b82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492537217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359517d50ffc19ab84049b5c55cca1e4d78580cd4d2850a7fd47bfa61a4d62c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:05:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb8962fce1bd9df59c74a224d844ef6e32ed6cda3dfa3a7338403c9a4a533ec`  
		Last Modified: Fri, 15 Dec 2017 20:42:11 GMT  
		Size: 57.5 MB (57498927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
