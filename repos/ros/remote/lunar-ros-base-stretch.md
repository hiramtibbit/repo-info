## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:2918d7ff74006432eea7a8ebe6d3968ce12644c8293e5c8108519491348692d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:dd88c9b17bf6fb8cf4dc23b29c11b213a5c43f38ec17b63a46eb2a817a25256f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.0 MB (495006969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9231dd560bb5b55d3bc9a5b24c1464fbf93562a767067501c01e16e5e8b7ea2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:49:08 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:50:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:50:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:50:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:50:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:51:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9000e58abb18ea709b21b3f074c8d3ac269c3d2c60cab1db1cf46a8978fe6e`  
		Last Modified: Sat, 29 Dec 2018 01:25:15 GMT  
		Size: 251.1 MB (251127331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9264b7e775cf55e8099c1d57e10933bf3f8f0ee2f6d8d986d398209b506f3a75`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e14e9b797f3b54922a946a5a2e4bc2906d621281fbe189355ebc07a4bbb856`  
		Last Modified: Sat, 29 Dec 2018 01:25:46 GMT  
		Size: 123.1 MB (123068191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0a21a4486e9eb07caeb7a2b7cff616947bac9cfa81c13c2ce6e5539942999658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438127442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78be321ec5295c57773120d25dedba5757a85e1b8ef7714e0dce374a4c08a46`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:08:04 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 14:21:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:21:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 14:21:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:27:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6436b7237a980c1e737bd71436755837154e465d8157fb8464eaefa78fcb2c`  
		Last Modified: Sat, 29 Dec 2018 16:14:10 GMT  
		Size: 206.0 MB (206040541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530ffa8ae1fa2e3be00cd37282134d5ca1941bb7e14f97bc9f3e959f3f028806`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b230a3bb1d493c73c2464c05c25bde3bb95e09c4bd21a91949188d69a4b611d8`  
		Last Modified: Sat, 29 Dec 2018 16:15:18 GMT  
		Size: 116.9 MB (116873615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
