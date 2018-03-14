## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:b3452c2c3e7395c8d7b483060f9b1d29585287ed774597df74b355f632512e26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:0a0eb367e01e69d977b28f502d1e5305bba3dbfea8ac57fa24bbee621a193397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.2 MB (375155530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54e3f0e3e574cbbbee639aa60dd59f0cab77961de8f97c6d617c39a8a6458b52`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:17:59 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:18:00 GMT
ENV ROS_DISTRO=kinetic
# Wed, 14 Mar 2018 21:19:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 14 Mar 2018 21:19:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 14 Mar 2018 21:19:12 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:34:36 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fd0ed538aff4cea06fd22e2bcc262e1b429f7f9057b965486f850a1bef7a8c`  
		Last Modified: Wed, 14 Mar 2018 22:30:11 GMT  
		Size: 33.8 MB (33769365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53035766b684074f76f3c897ce99949a5b608c1c60f4e3c6df6f2adf4bb73c24`  
		Last Modified: Wed, 14 Mar 2018 22:29:50 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc77fc633fcf00ed5251633500acb5452f023c056f6001d601b0e6463a12fd5`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78b9d1f0a82fb634af87976054cbeb126e818c7a9abebef9976a3b0fbc7823`  
		Last Modified: Wed, 14 Mar 2018 22:30:17 GMT  
		Size: 46.5 MB (46485716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d0227ca73fa81232de4ad08eaba86c041582bee7cd46c32921144aaf443019`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 791.2 KB (791204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60901d675f8203d2f195cbbc68e2030a10628a3fc772cae69e73e8883babebab`  
		Last Modified: Wed, 14 Mar 2018 22:30:48 GMT  
		Size: 157.3 MB (157281850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42a5d65e19fdfb03685f6d8964143aec7871bd770ff6f9985cc400a8481b6d0`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af47caea1f1be1964d70ffec10d6455be1ba26d30589c08625bb8a4796572372`  
		Last Modified: Wed, 14 Mar 2018 22:37:14 GMT  
		Size: 84.2 MB (84217036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5acea99f843c96fd13aa12f35b7d6f8c07f3284eb227ed3d362ec81affbbb418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326681080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6010fcd69ef830e55b6c881ed64e33aaec1b775936f8d65526c71a26b41f9e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:41:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 03:41:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 03:47:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:47:46 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 03:47:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 03:48:32 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 03:48:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 03:56:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:56:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 03:56:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 03:56:57 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:02:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aa057fedf755e9ec4b8bbda90ba4c3aa28ff2a213c14be0092f284a2ad477e`  
		Last Modified: Fri, 16 Feb 2018 04:57:46 GMT  
		Size: 32.1 MB (32147702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8a391b0e806554445a1c65fa7a4fcbc86c96b543323664233e5e03e92866c`  
		Last Modified: Fri, 16 Feb 2018 04:57:35 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376c35cf8baa4bce06d5c39aec405e46743f8b5d5dccda18f9b7858c4ec670c`  
		Last Modified: Fri, 16 Feb 2018 04:57:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434b028f18d3eeb71c74226ed6de9416cdead676cf4b6ed5a7639e8aedc44af0`  
		Last Modified: Fri, 16 Feb 2018 04:58:03 GMT  
		Size: 44.2 MB (44196897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a22f3660e6f9aa066e85b3da0774bdf8965c0f3033aec97727fb0d441a5728`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 785.5 KB (785508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fe01f1e86fe37f6694630b72dd6b3b49ba9c5e7129d03b21be07726742ed85`  
		Last Modified: Fri, 16 Feb 2018 04:58:41 GMT  
		Size: 130.6 MB (130562401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c8d956079491a11e5ef4be0aa97ea808030e5a2d96bb8b7a6e79adc950b9b`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24593235cb2b1057477711845c028388c7b34db82d4829c9eb1d07e6c1c4fdf1`  
		Last Modified: Fri, 16 Feb 2018 04:59:23 GMT  
		Size: 69.1 MB (69052881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
