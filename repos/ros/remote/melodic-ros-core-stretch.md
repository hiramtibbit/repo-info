## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:1fc20fb4a25050ffb7662fb2c1f516818c9eb27dbb998194e9bee4c448dc64c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:14126ea54f718bf02e2ea33dd35d5c10e8c0bb3d32a0ba649cca4f667b9e498d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.2 MB (389210222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedd0dce941d6c58bcc432e0ba145c55d529d1a21dbbe8c34a68b738f1dd5b86`
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
# Tue, 17 Jul 2018 08:56:46 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 08:58:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:58:58 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:58:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:58:58 GMT
CMD ["bash"]
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
	-	`sha256:2c616dfac725e650a4056657a39be6ab7fff5d45d0a4f79856b5d8f781293bb4`  
		Last Modified: Tue, 17 Jul 2018 09:48:44 GMT  
		Size: 268.5 MB (268530397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7224e97c4a448019977efefab0543594c4e7c670be4dc0d6c99b938b5f6bfa4`  
		Last Modified: Tue, 17 Jul 2018 09:47:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:865d108b2f9b14a6e96daf17b4386b0097d441b074fc7d5558b90765d0de19d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337802899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8028d1c9b5931866ac8e841ab4e72dc14c8b7e33a9d808ac41556989802866`
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
# Tue, 17 Jul 2018 20:28:32 GMT
ENV ROS_DISTRO=melodic
# Tue, 17 Jul 2018 20:37:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:37:42 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 20:37:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 20:37:47 GMT
CMD ["bash"]
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
	-	`sha256:be035a45614b2f7a453954d10779d3eae38fe7552554f5903deeed2bfd51575c`  
		Last Modified: Tue, 17 Jul 2018 21:12:06 GMT  
		Size: 222.7 MB (222683279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0e0d5ed13da7fd7a1a0e08bd921730b092b789950ed5523c396e44e3988784`  
		Last Modified: Tue, 17 Jul 2018 21:10:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
