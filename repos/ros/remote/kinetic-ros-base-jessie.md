## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:15c2daceee79ce284577943e2d0a50deb91834340380901010895c3c644deda3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:5e33664f867214391af6f415a3bb0cf9f8d24b88e4953c4f08ef22e3ce48697a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.3 MB (375314210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4087b6d98628a7c89649e3ade7af963d3d41d25962f04e21635463cb2ba2a5f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 11:38:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 11:38:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sun, 29 Apr 2018 11:38:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Sun, 29 Apr 2018 11:39:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 11:39:23 GMT
ENV LANG=C.UTF-8
# Sun, 29 Apr 2018 11:39:24 GMT
ENV LC_ALL=C.UTF-8
# Sun, 29 Apr 2018 11:39:34 GMT
RUN rosdep init     && rosdep update
# Sun, 29 Apr 2018 11:39:34 GMT
ENV ROS_DISTRO=kinetic
# Sun, 29 Apr 2018 11:41:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 11:41:03 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sun, 29 Apr 2018 11:41:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sun, 29 Apr 2018 11:41:03 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 12:03:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d60a181a06cbf2bcddc55f20e5949d305d375380054ddd3de009f892d2a3cfa`  
		Last Modified: Sun, 29 Apr 2018 13:59:50 GMT  
		Size: 32.1 MB (32064780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ed488f593599d63b4b709628aa232d0c3f0d992416d991e8186acc9e041164`  
		Last Modified: Sun, 29 Apr 2018 13:59:33 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32b003c326984b7c7805a1dda7cf8aa4134c44ed1e473caccc4801d25aaf37d`  
		Last Modified: Sun, 29 Apr 2018 13:59:30 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c0d2e25b775c18c5250edb64b3be9cf9a14357fbb4455cef70bb92ab0fdfba`  
		Last Modified: Sun, 29 Apr 2018 13:59:59 GMT  
		Size: 46.5 MB (46490223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b515e594aae777c47cb4a5ade45e2efb19839aaaf5f1ce5c919a8dd4fb4dd39`  
		Last Modified: Sun, 29 Apr 2018 13:59:31 GMT  
		Size: 833.5 KB (833544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f473b1e79f378a5775ff288d088f9a9a49d5fc06d22814417d5bbfd27a83bb33`  
		Last Modified: Sun, 29 Apr 2018 14:00:36 GMT  
		Size: 157.5 MB (157453133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dab08742a3970e063c5d718d39258c023181c716a912e06892c9e55b17c4dc8`  
		Last Modified: Sun, 29 Apr 2018 13:59:30 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdd8d7a6e9651b3e8051ad2ec4a58319990f873755eb1c7d501ca1cc3559c08`  
		Last Modified: Sun, 29 Apr 2018 14:17:39 GMT  
		Size: 84.2 MB (84208129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bdab5bb1090feabbb52b09a17c46c6ee4c4012c1d9b3703846c2bc5576da211f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326694872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172c19b7b6bce803966cfe916d98121bab487fdd32436e2a863ba6b9d2fdccd4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:21:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:21:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:23:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:23:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:23:46 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 03:24:29 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 03:24:30 GMT
ENV ROS_DISTRO=kinetic
# Thu, 15 Mar 2018 03:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 03:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 03:34:22 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:38:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdecaf83a2dc043ec9b4a68daabc132d1a90ff3fbf01c1a064587d30491a42c`  
		Last Modified: Thu, 15 Mar 2018 04:39:19 GMT  
		Size: 32.1 MB (32148326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02dbc95a6b63d5ad91d2bfb3368793d17b23a4ec6f7fa4bfb22365afd243f38`  
		Last Modified: Thu, 15 Mar 2018 04:38:40 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cccd7a322e3a6a5af36ddeb1f4ff18b5104fef568d75f2ca66694d9554b06c`  
		Last Modified: Thu, 15 Mar 2018 04:38:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ba11b1e2be0d06bc01dffc5a2d86b55d465b7f7d3956e16eaa93412a8fc71a`  
		Last Modified: Thu, 15 Mar 2018 04:39:48 GMT  
		Size: 44.2 MB (44199411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b440a772bc9a8f40ae2ff52bcdfb2428df53e7c2c2f336488375db04de97b5c`  
		Last Modified: Thu, 15 Mar 2018 04:38:39 GMT  
		Size: 791.2 KB (791225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de2b847be09b30de338b3243f90b9fa8f31e42017fc6d539853e3be0d49a180`  
		Last Modified: Thu, 15 Mar 2018 04:40:53 GMT  
		Size: 130.6 MB (130572832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69732b3768e76c4789f520935246c8c953f66e99c79c434b227a46575376571a`  
		Last Modified: Thu, 15 Mar 2018 04:38:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a754abaefbe8acfc7ceca96d5d5b9a80047f8119e2de54f9007399213a69e367`  
		Last Modified: Thu, 15 Mar 2018 04:42:19 GMT  
		Size: 69.0 MB (69047774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
