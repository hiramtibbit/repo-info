## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:4f54b03cd153a9380b6595058c5bee43e8873a2b7bcdb74258de5a9bc7c5c76c
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
$ docker pull ros@sha256:0a49e8a8c3129024da38559549dac3e7472107f86584de45938d808ac834d59c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326888800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d53b351cdcd5fe0680ac5c28fc53f09ef64b6d95e7ab5bd244f7f10f83d3d313`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:21:38 GMT
ADD file:387c83918422a6546379c4d84818ca3949fcd63aec058da562b08c947a9ed571 in / 
# Mon, 30 Apr 2018 23:21:40 GMT
CMD ["bash"]
# Tue, 01 May 2018 02:11:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 02:11:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 02:11:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 02:15:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 02:15:10 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 02:15:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 02:15:57 GMT
RUN rosdep init     && rosdep update
# Tue, 01 May 2018 02:15:57 GMT
ENV ROS_DISTRO=kinetic
# Tue, 01 May 2018 02:24:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 02:24:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 01 May 2018 02:24:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 01 May 2018 02:24:28 GMT
CMD ["bash"]
# Tue, 01 May 2018 02:31:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:363cfded2ef3921ef972c85cafc77cf16cdcfddfd49782ad4540cb73fd5e57a2`  
		Last Modified: Mon, 30 Apr 2018 23:41:06 GMT  
		Size: 51.4 MB (51446854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7a2a3cbb8c886cf7c35daf23d56278fc9499b3b84427b815e340c6887de68a`  
		Last Modified: Tue, 01 May 2018 04:26:53 GMT  
		Size: 30.6 MB (30605699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcd199936fb38824d9edb1fe626cd6602c09b30bea28174aea5bef68daa118e`  
		Last Modified: Tue, 01 May 2018 04:26:35 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:896aa3393399d42c7b2513ef0a598903572e2881f613996c6b250a420ab18248`  
		Last Modified: Tue, 01 May 2018 04:26:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92024a1019d1ee147846532d332bed467cccac21fbb32e68d24a858c64468d9e`  
		Last Modified: Tue, 01 May 2018 04:27:04 GMT  
		Size: 44.2 MB (44200595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd8d64ceeefcdf37e5c25337d971162dc1d26f34b52aea871d3f04801f302ea`  
		Last Modified: Tue, 01 May 2018 04:26:35 GMT  
		Size: 835.1 KB (835089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49e44792201bb6b813560c52bb75d2569453ee19650eca1c9970cc3b17a8035`  
		Last Modified: Tue, 01 May 2018 04:27:54 GMT  
		Size: 130.8 MB (130755608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4126f23fd7e56bb39f16154e0a83877ba1583879e414f01dbe74c40d586a1d27`  
		Last Modified: Tue, 01 May 2018 04:26:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddf5f34b92669ab45562b8a143a62ff1852daf1351621e1d1ea56fbb3fa806b`  
		Last Modified: Tue, 01 May 2018 04:28:44 GMT  
		Size: 69.0 MB (69043117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
