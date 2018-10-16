## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:04b50be2dba5f79b18cd69724570bfca644c954fe4b7c46e26f3d0dd5bce947b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:307ac1df03af853704ae1b8ff51e807728f8eb643e49bf58cb0fcdd06046c7d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.2 MB (389241127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e60ef12300c25a4f92dffde182a84b7362c5ce1689a97a29436cbec3f603b15d`
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
# Tue, 16 Oct 2018 04:35:07 GMT
ENV ROS_DISTRO=melodic
# Tue, 16 Oct 2018 04:36:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:36:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Oct 2018 04:36:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Oct 2018 04:36:28 GMT
CMD ["bash"]
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
	-	`sha256:a09e96aa297a1fb4c2754b68ab091a070f95d1dd690069ed95b45bd26573a950`  
		Last Modified: Tue, 16 Oct 2018 04:46:21 GMT  
		Size: 268.5 MB (268519108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dac3d6c88f164a0ec7c40f9575ccddaf344d82d52da79f2ff8cd09f361c7c6ee`  
		Last Modified: Tue, 16 Oct 2018 04:45:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:85db06cdaac9df4dad24aff420796407676affe2255b96535c0ed2f90898efdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337848038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2908ea7bbc93605582292daaeb80e0676f2620b44dea0d34a7682cc980b9fedd`
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
# Wed, 05 Sep 2018 19:51:04 GMT
ENV ROS_DISTRO=melodic
# Wed, 05 Sep 2018 20:00:28 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 20:01:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 20:01:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 20:01:11 GMT
CMD ["bash"]
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
	-	`sha256:d1e095f4ebfc58fbc0e9ca060686e26159e7083364a2415e5cc4e17422fb6b83`  
		Last Modified: Wed, 05 Sep 2018 20:41:33 GMT  
		Size: 222.7 MB (222710108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d983a971d341024ea176f029f0af9393f7e958ffb1637a7b2d17263017492cb2`  
		Last Modified: Wed, 05 Sep 2018 20:39:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
