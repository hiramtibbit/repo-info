## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:fffb4b29305ffc36a3604ec377615a3453af8eade0b84b6aea399cb675aa5753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:af4ec6795a4f3820a2a99ac7355f31c67ea161356bfeedb7ce6708934bc9a632
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **932.5 MB (932512516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ca857c5ce3ca628eba1c58d7f34ee6388d1edb3def83388d525ca37e0919af`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:26:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:26:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Oct 2018 04:26:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Oct 2018 04:27:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:27:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 04:27:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Oct 2018 04:27:32 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Oct 2018 04:27:32 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Oct 2018 04:28:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:28:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Oct 2018 04:28:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Oct 2018 04:28:49 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:29:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:34:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92621335313bdf29cf5d4406ff53c827bde17e6936b190b93487a1944925805`  
		Last Modified: Tue, 16 Oct 2018 04:40:47 GMT  
		Size: 21.1 MB (21073344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30add05bdc21dc6892959670bda987c92184067f30e99fc9b3e7d5f3c78ba33d`  
		Last Modified: Tue, 16 Oct 2018 04:40:40 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b835ded999bbd4710a8b78b722c5eb36806004e976f7fbe01455967e3b176a`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c212122530d83f220c9e4e19a88eb803d2bfc723530364bcc0a272a2f3721175`  
		Last Modified: Tue, 16 Oct 2018 04:40:56 GMT  
		Size: 53.5 MB (53504624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660f51cf7f33d9235a49e4ca68e2345e88ebb06d90b82c22da722173b2d96489`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 827.6 KB (827575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa8a1c8be596fe006445a557edb8133d8cb3c4f21e6084eac789541a60b1fb5`  
		Last Modified: Tue, 16 Oct 2018 04:41:51 GMT  
		Size: 251.1 MB (251089418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81de363d219aa809174a9b10bf14e7cc8fd7d8904698d956330e703b6730b7`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c3a232b4a1dd17c876dedd248637f8efdf03df96d127105c5f7ac355879d2`  
		Last Modified: Tue, 16 Oct 2018 04:42:36 GMT  
		Size: 122.2 MB (122230341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41759746b07ff7549c3f35a8d7837f1c71e3ae323c516a4d32e1991563285c5b`  
		Last Modified: Tue, 16 Oct 2018 04:44:57 GMT  
		Size: 438.5 MB (438470739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9a61b9e3b052a8283b95f4c43568a7d3885d941e7d5c8a318b7f1dd31a1994aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **815.7 MB (815690451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2e1c774e1b615b19e14bafcc61108e4f7531f712dcff4f87f356643f74e304`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:12:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:12:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 19:12:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 19:14:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:14:19 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 19:14:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 19:15:07 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 19:15:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 05 Sep 2018 19:24:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:24:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 19:24:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 19:24:48 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:28:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:50:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2b999e6626b77886e3c38e8a785a7e1a7e36e0039445255654d5bc5ad24d76`  
		Last Modified: Wed, 05 Sep 2018 20:30:40 GMT  
		Size: 19.7 MB (19730993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac738c1923ba135a921c240522fdce8b7030d13698f3f0904005bbea14ee354`  
		Last Modified: Wed, 05 Sep 2018 20:29:12 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f424c24b55fa5004b2452d07e0a983ea358de7216774776775ad9a9c919767d7`  
		Last Modified: Wed, 05 Sep 2018 20:29:09 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ce9c4049ae683de69beffcf613062f883f5de22797cf56c118afff6a7e4e5a`  
		Last Modified: Wed, 05 Sep 2018 20:31:42 GMT  
		Size: 51.5 MB (51465804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e1ffb408b178aa6dcc279a4dd049a621c4035340001992130302a183cece83`  
		Last Modified: Wed, 05 Sep 2018 20:29:12 GMT  
		Size: 811.0 KB (810967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da38415276ff7fd267f1623bb9559ed90d906ba58a54deb60977b117ed7e81f`  
		Last Modified: Wed, 05 Sep 2018 20:33:51 GMT  
		Size: 206.0 MB (206009753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bac2fdbb948a8f7acb0f5a8cde5d1fe6f1ef9ab504432386d0c01ed7149c647`  
		Last Modified: Wed, 05 Sep 2018 20:29:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba51884f4662bbc8c84b501f5d2e3c77ded491da5288a22fd548708f49184e`  
		Last Modified: Wed, 05 Sep 2018 20:35:45 GMT  
		Size: 116.0 MB (116024392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575791016507f61d34803d200590a406440a10ea22fd36133df64476e16c2f09`  
		Last Modified: Wed, 05 Sep 2018 20:39:20 GMT  
		Size: 378.5 MB (378518377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
