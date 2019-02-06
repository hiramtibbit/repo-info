## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:949c2ae0ded076d4517b015b25f36fce6c09a88862fa72221b9137226e335725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:1efdf2f314bb8f619e1327c5fa6b69fe6091c2ba37cf2a2a6fdd66f1a982f4ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.3 MB (933266309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb55c8ccb8a6f46e02ac09faafa467459acd3ef0e154798630c29256468fe4a6`
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
# Wed, 06 Feb 2019 07:21:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:93bf99582cf349446d0241060d1f9a89302d23a02479773fdfb3dccbde5bca18`  
		Last Modified: Wed, 06 Feb 2019 07:50:25 GMT  
		Size: 438.5 MB (438478278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fb8877e7d7699aef74227be195151a14203e8ba22cc67a3d5ee8557adff76a00
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.4 MB (816412992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3421c114f3ccfc6afd7cf7a43cd74051619c5e684d930fac29b76bce6ddf3c9b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:04:59 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:49:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 16:49:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 16:51:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:51:01 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 16:51:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 16:51:41 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:51:42 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 17:00:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:00:37 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 17:00:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 17:00:38 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 17:04:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:23:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394ae40b1c7c44334bbb4bd812fd8f53c9976d70ec59977ec32c8c272ea50cd3`  
		Last Modified: Wed, 23 Jan 2019 11:32:54 GMT  
		Size: 19.7 MB (19745787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfc11516b4e74dd7a4eb69d38128ab52ed1903e764f25a4fd42cc8e1b988502`  
		Last Modified: Tue, 29 Jan 2019 19:06:47 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2b4e738a6aaca15aaee02e3554d4958260e96dd232f6ef5b156783d6cc035f`  
		Last Modified: Tue, 29 Jan 2019 19:06:45 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336a1965c7f9a6b0435731d031eddd18ebd11b16eb282fbf4da9b1c67f6a3b0d`  
		Last Modified: Tue, 29 Jan 2019 19:07:14 GMT  
		Size: 51.5 MB (51492899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8246a01c5d5b962a08d1239f1b9b09a972bf669719d065bb3b9335a58e3a6f`  
		Last Modified: Tue, 29 Jan 2019 19:06:47 GMT  
		Size: 605.1 KB (605135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925fcff8a5f9b512a9a9ec9c6aca0bc7d827768dfe8a6f28dacb54a0a6ae0b76`  
		Last Modified: Tue, 29 Jan 2019 19:08:17 GMT  
		Size: 206.0 MB (206038817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6492203bf3b6728eb330754445c084244fa664dee10b4720e41b7687a0131ca`  
		Last Modified: Tue, 29 Jan 2019 19:06:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d46905144b0188d53a1f2f5b0f8c2cadfea08e06cf69c1516046edc181a03c`  
		Last Modified: Tue, 29 Jan 2019 19:09:07 GMT  
		Size: 116.9 MB (116872288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48ca412e56c1e55a1f4637962d27e88f66b00bb5a70a2928249d9b20302da14`  
		Last Modified: Tue, 29 Jan 2019 19:12:08 GMT  
		Size: 378.5 MB (378525877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
