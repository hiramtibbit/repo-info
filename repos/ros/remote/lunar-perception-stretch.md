## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:5108f9008ab94cd586f2dbff9ac2d1f36d3818d82752f179f63f638c2ba0f2b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:eb2f9e0021a8e4cb7bbdb5169adffcce48aaba0a92fcbb713a18517daf8763b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **932.4 MB (932427545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d91efa6a8e69cb328650a66100244635cd355a12a550de5bcf70f15bc780210`
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
# Tue, 17 Jul 2018 08:35:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1bac019b987c341ab6131317901bef3a8077b5e97d96ff8dc15cbc25a3c7eebd`  
		Last Modified: Tue, 17 Jul 2018 09:37:50 GMT  
		Size: 438.4 MB (438437031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2a3c4c9ead5561403c0210b39177f1b08b0bd4f378099d04f9ab97347720b705
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **815.6 MB (815649992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55218358f412e500d48907ca1c8e2b9faedc7310b856a1c1fbe5e7e659585066`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 16:47:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Jun 2018 16:47:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Jun 2018 16:52:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:52:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 16:52:05 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Jun 2018 16:52:51 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Jun 2018 16:52:52 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Jun 2018 17:00:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:01:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Jun 2018 17:01:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Jun 2018 17:01:09 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 17:05:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:27:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021385a58df3162f2007ef8af908051a20c3fa53fec10f43a788db7f1e95be0`  
		Last Modified: Wed, 27 Jun 2018 18:06:11 GMT  
		Size: 19.7 MB (19731685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5769ea981ce493dc799d6608c89759038f65b3cbc395223a0e014abf93f3d04b`  
		Last Modified: Wed, 27 Jun 2018 18:05:38 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659f7514745c7ac182096b3895f8b6c740088ca6dd2c439eddfdd4c1f3882e93`  
		Last Modified: Wed, 27 Jun 2018 18:05:35 GMT  
		Size: 5.0 KB (4973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca431ff9b9fa3a1ad491d449302d25428908498e00329fb3906e0c8d60e67ad`  
		Last Modified: Wed, 27 Jun 2018 18:07:00 GMT  
		Size: 51.5 MB (51500966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4645f46ca09160f0b6635c1979be7e17f62b6b97adef31f61f45a46f95566c`  
		Last Modified: Wed, 27 Jun 2018 18:05:36 GMT  
		Size: 782.1 KB (782096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ed567a5fc8c4ee5814fd0a161ae51147079c1c23adc231a798a75be1d012ac`  
		Last Modified: Wed, 27 Jun 2018 18:08:43 GMT  
		Size: 206.0 MB (205979681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f4fa41eb70487cc6cc843095ede957a3b9809917e8c56c7f4cc3201c2d823b`  
		Last Modified: Wed, 27 Jun 2018 18:05:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11612a97309d24990ed2b9abd0e635abe9c14429e61a32ad822f989acd50b817`  
		Last Modified: Wed, 27 Jun 2018 18:09:53 GMT  
		Size: 116.0 MB (116023162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469d171dbf33f3a1761745e6e09d71006eb7091cee0929d5c90a78bd4e29be51`  
		Last Modified: Wed, 27 Jun 2018 18:13:48 GMT  
		Size: 378.5 MB (378510067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
