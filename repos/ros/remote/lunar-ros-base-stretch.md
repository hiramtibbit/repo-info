## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:f4a4592e6693181c1c47307dd1fd35bd6e5174e1eeabc384bfbd1ee854f3e373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:45a539a5d18ca807de75e9a35cf313adc05225550e76377efaa5d2e16b678cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.0 MB (491969002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294bd4c567a407d2c90504775146545cb7a829292f9976e9db901da7d875c136`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 12:52:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 12:52:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sun, 29 Apr 2018 12:52:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sun, 29 Apr 2018 12:52:42 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 12:52:42 GMT
ENV LANG=C.UTF-8
# Sun, 29 Apr 2018 12:52:42 GMT
ENV LC_ALL=C.UTF-8
# Sun, 29 Apr 2018 12:52:54 GMT
RUN rosdep init     && rosdep update
# Sun, 29 Apr 2018 12:52:54 GMT
ENV ROS_DISTRO=lunar
# Sun, 29 Apr 2018 12:54:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 12:54:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sun, 29 Apr 2018 12:54:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sun, 29 Apr 2018 12:54:29 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 13:15:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080d14fa56ef128c193fd94edf1e5eb031d02ae97b680588c7248e5e84304f13`  
		Last Modified: Sun, 29 Apr 2018 14:48:05 GMT  
		Size: 6.9 MB (6859072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604921583c4f613ebee4eb24564ca607566b8b48206868b48c018443567dd0b2`  
		Last Modified: Sun, 29 Apr 2018 14:48:03 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631afcce8e2d86cf9596b3823955679a3e770120d1da140a494003c85bf577b7`  
		Last Modified: Sun, 29 Apr 2018 14:48:00 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b0b4ce522ec73ddd931386acbe825b6203543509a3d76c51e649cb124d5ca1`  
		Last Modified: Sun, 29 Apr 2018 14:48:25 GMT  
		Size: 64.9 MB (64857453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea215428a3b38a4f7bc2be7aad6084d16a82bb84f706aebde2d34120ffc5190`  
		Last Modified: Sun, 29 Apr 2018 14:48:01 GMT  
		Size: 833.5 KB (833530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26629a9af11703b4ed3e40e78cb5403156db690083566f39f679a55e75c6fb67`  
		Last Modified: Sun, 29 Apr 2018 14:49:00 GMT  
		Size: 251.9 MB (251873129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b853450ebbc6b17d4b77840bb123c679eebd84b027b38915296bef615ae43600`  
		Last Modified: Sun, 29 Apr 2018 14:48:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63863f0fc73e348d8df8c2777a8ca0d09df3991f247fd340c53ae4264056544d`  
		Last Modified: Sun, 29 Apr 2018 15:01:25 GMT  
		Size: 122.2 MB (122225868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4d3c94bfb1fa3bb8b5e046ba2f8a4806561d8a61ef561caf4cf0e5ff1f191996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.1 MB (435129565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b95d94a4fe9849a429cc3cc742e4f8cbff789953b9cacda1b0c3cc38391902`
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
# Tue, 01 May 2018 03:36:07 GMT
ENV ROS_DISTRO=lunar
# Tue, 01 May 2018 03:46:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:46:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 01 May 2018 03:46:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 01 May 2018 03:46:14 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:51:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:f8018c896d8c469869af751ab6dedae7d929c8c1eecd50bd607c44492245c688`  
		Last Modified: Tue, 01 May 2018 04:44:18 GMT  
		Size: 206.8 MB (206795100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f80d568803a6e955c93890cfbb1629933a150a5d0a54e78f081bf2731b724`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59bacdd92efa26460f246475e05ca8c1d323676766477354f6c57571d53fa9`  
		Last Modified: Tue, 01 May 2018 04:45:14 GMT  
		Size: 116.0 MB (116022523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
