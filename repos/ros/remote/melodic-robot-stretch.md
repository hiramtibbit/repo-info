## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:3526cbb77547415f9c3e49be63e9bbd430b33209b1378bbcefe82f42b746452a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9db04c8bd51ef49ea0aae62a2fae831b254182292ba66de6d529000b435a6e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **551.1 MB (551100829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa86d00f78a2033f309f9414f81cb69116db79331f0ff857cf54d6a21c2c7a9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:22:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:22:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Jun 2018 23:22:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Jun 2018 23:23:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:23:00 GMT
ENV LANG=C.UTF-8
# Tue, 05 Jun 2018 23:23:01 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Jun 2018 23:23:22 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Jun 2018 23:56:58 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Jun 2018 23:59:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:59:27 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 05 Jun 2018 23:59:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Jun 2018 23:59:27 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 00:01:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 00:02:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa09059316a6e28771affaf1f74ec4bfc58e3b354884ed50b2f3b04876b62a1`  
		Last Modified: Wed, 06 Jun 2018 00:28:40 GMT  
		Size: 6.9 MB (6859099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9409b6b97707c1714e085db435f4c2f0220121a43f324af7dbfe041c4a5cc390`  
		Last Modified: Wed, 06 Jun 2018 00:28:38 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f733673ba26a0c6f67a03a9f351a438f153d770691683a2715e55f3cef73d`  
		Last Modified: Wed, 06 Jun 2018 00:28:35 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290adae64d98bf687bf7340f7735900fbf1194eebf13f18db1c6c71989a07a74`  
		Last Modified: Wed, 06 Jun 2018 00:29:03 GMT  
		Size: 64.9 MB (64915987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506a8b7b9061eb54578c00fa2581bd221c9b35345b500f09ff94518b68cf352b`  
		Last Modified: Wed, 06 Jun 2018 00:28:35 GMT  
		Size: 866.5 KB (866499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ba9435ec81d5918d015fa99d88d68dd6303181991d3e41963eb9a14b712ad2`  
		Last Modified: Wed, 06 Jun 2018 00:42:13 GMT  
		Size: 269.4 MB (269361349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755aa88b88c7476b4de38f2ca63a0adfa4af727e7bac67560c4abc4c8f565001`  
		Last Modified: Wed, 06 Jun 2018 00:40:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16e215f0e70a4440db8e0665530bcf61be26e3d63cc9e6d0f89ff15ffccefd5`  
		Last Modified: Wed, 06 Jun 2018 00:43:01 GMT  
		Size: 108.5 MB (108461667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a154a7e6f7507a99437d4aa5b552f8966b00fa0ddaa01ceb49a441ee976a8302`  
		Last Modified: Wed, 06 Jun 2018 00:43:30 GMT  
		Size: 55.3 MB (55316278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d3a1add55f1c96f4cbdb22b2e3533ffc7bd9844da283925ec27d537ce07962bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.3 MB (491329194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9b4c75f86ed0c1c6315458c4ed0c8417b62a8c4d9dcd953fd196576dc0a51e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 09:54:49 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 15:27:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:27:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 15:27:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 15:27:41 GMT
CMD ["bash"]
# Fri, 25 May 2018 15:30:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:34:01 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff3cd1cf2d3e46a7f8fe4a2e5e91ff0815a51d5c87cfd81a1b8932dea453b8`  
		Last Modified: Fri, 25 May 2018 15:55:33 GMT  
		Size: 223.5 MB (223512365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5879828040241eb3667bd05cbfcc6b14911bf87255edd35c912781995caeb5`  
		Last Modified: Fri, 25 May 2018 15:54:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54d9a16ffc723b2aa54654d720d702140f7b6d858968eec2cd9e827e41f469`  
		Last Modified: Fri, 25 May 2018 15:56:23 GMT  
		Size: 102.9 MB (102929185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fa089504aa363c45e5180df89bbcfbf602523ffcbfa02177ec0ef846edf8cf`  
		Last Modified: Fri, 25 May 2018 15:57:28 GMT  
		Size: 52.6 MB (52575703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
