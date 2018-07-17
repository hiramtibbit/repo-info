## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:b975e1e806ba6d053e5426fd90eb5dc4c99d95f7b95dc7d4754bb5b9a16d2887
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:53c813a5330480f69900ddff5576aee9221614efd78db57f0ba06e758c6ee46f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.4 MB (554431739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c239d3635667d9ac13be4b9b1724060318dd275f9b4cb721102e7a63b332923`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:24:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:24:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:24:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:25:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:25:02 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:25:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:25:19 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:25:20 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 08:27:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:27:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:27:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:27:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:28:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:30:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ebae7fd092a66d0d9a42a5613c6cc852ffe1fbae412317b94c8c74de308d22`  
		Last Modified: Tue, 17 Jul 2018 09:31:16 GMT  
		Size: 21.1 MB (21066196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b432d0f523f751fe8b15956f7939577edab4816852ff2e9193f6117aee5fa3`  
		Last Modified: Tue, 17 Jul 2018 09:31:07 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b75c9599f61f91c9f69702d8e6e251a93b69f987f5e8773920a2af73bba27b`  
		Last Modified: Tue, 17 Jul 2018 09:31:04 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c28f0aa49f17add878a9dbecb0b7f6c00cffaad6b2b46f4e951ec3b59f80403`  
		Last Modified: Tue, 17 Jul 2018 09:31:30 GMT  
		Size: 53.5 MB (53502933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b979d5446117f08301a9111f4c76c1ae9ff4ffd4324c45453e9bb96afa7331f`  
		Last Modified: Tue, 17 Jul 2018 09:31:06 GMT  
		Size: 794.1 KB (794116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24f615ac30b41247380ad772d840018d77ed47bf0a4ef92422c41b9cc102a61`  
		Last Modified: Tue, 17 Jul 2018 09:32:42 GMT  
		Size: 251.1 MB (251081509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34ce160d6956522ced11d80f8505df145e0c20630d079b2c01faf18d46e8152`  
		Last Modified: Tue, 17 Jul 2018 09:31:05 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353dd14465380884612b813edc5cbec21b0dfb23259ba28e0ea51c4e9affaa5`  
		Last Modified: Tue, 17 Jul 2018 09:33:56 GMT  
		Size: 122.2 MB (122229180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613e920e875919be3d0489d9a0713f2a2cda42b4567717ecff081f2800f800a3`  
		Last Modified: Tue, 17 Jul 2018 09:34:41 GMT  
		Size: 60.4 MB (60441225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:966f4ff11bb97a416d6f243cc78cd100401817be8a43c93dd4ad9a7515a548bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.7 MB (494665364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411ea03757a2cdef591bed7608fee5ff10565d5742a7f2f6e4772a4562a06703`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 19:40:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:40:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 19:40:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 19:41:51 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 19:41:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 19:42:55 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 19:42:55 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 19:54:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 19:54:25 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 19:54:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 19:54:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 20:00:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:06:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:247d4c44f71d4be482c02fcf1b92b2c2fe291b5521c9e97a14ef18e94373ef6d`  
		Last Modified: Tue, 17 Jul 2018 21:01:22 GMT  
		Size: 19.7 MB (19731106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d7b09efff2ece5ecbeae72fd76e399a37b14251a4c8329626669ba981e9f9`  
		Last Modified: Tue, 17 Jul 2018 21:00:30 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1094f909edceaf93e034e225b86dda0fe27065b2b0200cf3b4fd332f56521c0`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263b442182e43276514fd2a98a3fdf21541d94c3199925aa906a14eaf1b340b7`  
		Last Modified: Tue, 17 Jul 2018 21:02:18 GMT  
		Size: 51.5 MB (51463775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f91cf8896e6ff5974ac156a936c4d9c329b56635e6ff5b349056c5fb6c20772d`  
		Last Modified: Tue, 17 Jul 2018 21:00:29 GMT  
		Size: 794.6 KB (794625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee3882d4da36d117c3ab74ec9bf7fcf73043379d68adc8e1a6eca10207db8d1`  
		Last Modified: Tue, 17 Jul 2018 21:04:44 GMT  
		Size: 206.0 MB (206001147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ca20c442a62eff879a20fa1e5cd24e601556e54de2f0dd0cc2bd90126b4893`  
		Last Modified: Tue, 17 Jul 2018 21:00:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fabb4b28b02c3faccb9aa57502156d0a5de60be34d0845cfdf6c967051e1e0d3`  
		Last Modified: Tue, 17 Jul 2018 21:06:09 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18c4e51a1409bfdbfcec3e44feec92341b51ecbe86a69889d9c7257338985a5`  
		Last Modified: Tue, 17 Jul 2018 21:06:56 GMT  
		Size: 57.5 MB (57521182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
