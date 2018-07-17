## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:5686b1609ce10f891e049102c5db58ab8e5776a946979b0978f4565ca04914b4
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
$ docker pull ros@sha256:df5eab13a77d2c9cbd7e8beaa51ed4e7c07f23b91d2dd73fff2055ae165cc34d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337793492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:769c51798864c60ca82d939cdbfc2e5e5f0310616e18ab00611c4867a9f4837e`
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
# Wed, 27 Jun 2018 17:28:11 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Jun 2018 17:39:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:39:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Jun 2018 17:39:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Jun 2018 17:39:44 GMT
CMD ["bash"]
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
	-	`sha256:e453fcf1921ccb1cd57257e14292fb092f63c2c4f4f37a86b0af078a0e26e488`  
		Last Modified: Wed, 27 Jun 2018 18:15:43 GMT  
		Size: 222.7 MB (222656410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf53ff93caa782daaab7dd8a12194ab18d207e9d4fff48065e80031faa17edcf`  
		Last Modified: Wed, 27 Jun 2018 18:14:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
