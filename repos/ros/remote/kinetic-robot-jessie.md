## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:2e12914f8e54289507feb5dbc2ce226c776dfd96c301de05294e7e457b6a799b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:7d6d3c0c93627c48c41f01abfd9ce86d75c71b0002e4715b4aaf097763ea2a0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.0 MB (436966229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ccea59babad9c0df1dadcc507b35bc52467488f7eec3ef61c1c57e860cd7645`
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
# Wed, 14 Mar 2018 21:36:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:0bc62cab8c6aefb4a1307db0c1c4e44cbaa23b8da8197195e831681e29775df6`  
		Last Modified: Wed, 14 Mar 2018 22:41:24 GMT  
		Size: 61.8 MB (61810699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ec796ffa3b070dd3bcd47d37290e0d0c1776014625720642847698d3454df5a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.1 MB (384077366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5182ad46d642c9ee5a458231eb940d0a7e121305f29e9e8f5f1093bbd2624e33`
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
# Thu, 15 Mar 2018 03:42:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:9357d27c810763606254a2d8ac965daf1286b6932bbb7309b0fd04753b7f0cfc`  
		Last Modified: Thu, 15 Mar 2018 04:43:35 GMT  
		Size: 57.4 MB (57382494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
