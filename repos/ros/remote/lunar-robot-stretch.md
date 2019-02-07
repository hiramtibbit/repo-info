## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:8a95de41cbeca3d8f00f1bffae2e37a929992bd975b474a1244ac20c7ac751b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c77367e4c1e418cd97159052d9a30fecb98030a38cece25b9189586f7d69eca2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.2 MB (555223522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c4a721108b8b1c990fccee03ea6bfbc25e40b89e218bded38f99105ae011f9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:14:59 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 07:16:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:16:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:16:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:16:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:18:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68baf72e8ba443800f1ff0069851de3e97a38a7eef93d6d2cf13c85e73a19b`  
		Last Modified: Wed, 06 Feb 2019 07:47:22 GMT  
		Size: 251.1 MB (251128017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c488be7369bf0aed2d37f8873147956b908fb099c994ae9dba336557ebec9e6`  
		Last Modified: Wed, 06 Feb 2019 07:46:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13871473463f04306accc38a2cee53300e0a27fe4e06436dfa7ea807fb71218`  
		Last Modified: Wed, 06 Feb 2019 07:47:59 GMT  
		Size: 123.1 MB (123068749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b15cea029e219ee4a521b2ff8026fd3eede7a72f99bffd090ba5ae7efc7239a`  
		Last Modified: Wed, 06 Feb 2019 07:48:25 GMT  
		Size: 60.4 MB (60435491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6e1624a56f57754b2f8e2bb98629f82de505c37140cdea0991ee2f5f2b0dca17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495406611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7ebe968e3ab1bb49ec457f03a87eb4a361a0731e682d74200c3f1361435593`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 22:45:18 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 22:54:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:54:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 22:54:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 22:54:39 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:58:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:05:17 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61dd65081544de6e3749d82a90082437eada9af5aad0a72906d736729112c3`  
		Last Modified: Thu, 07 Feb 2019 01:29:15 GMT  
		Size: 206.0 MB (206040091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5557521b1ece35714e75aa3acbdaf4588ce6cc25d299ad2ffa61bd943423afe`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd856ba03f1a3e82906e00edd841696997f5b025ab983cb74a01064d2c8790e9`  
		Last Modified: Thu, 07 Feb 2019 01:30:45 GMT  
		Size: 116.9 MB (116872032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f849927102afc5b0e114be2ab2c5436d0dc80e7193a262109f2bb41b675fbc9f`  
		Last Modified: Thu, 07 Feb 2019 01:31:27 GMT  
		Size: 57.5 MB (57517192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
