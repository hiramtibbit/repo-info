## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:4ba24c4d4d45cf0842c5171b9bf87d29d37e9e29fa91acb856bda82d32aececa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:913181cc33b1a927f2af7dc458682b0aa54480cfbbec5efc7445ccc51c84cd63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496707335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cc7b624ec3dc18d8b2d5fbc6f81ce3d9ef7a37a4c4600d9fbebf0d8ab9d7f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c770475ccb55ee441dd84ad2c25d3ebf5d8f2e21d04b8469e36e0cf82a1e443`  
		Last Modified: Tue, 12 Mar 2019 01:31:23 GMT  
		Size: 103.7 MB (103694894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:e1ea0f8a0fdcb35c847bdf55a80609eeaaf697fdd13473bf636fdd30b9372179
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.6 MB (433582102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384e5c1da25713649291007f2efd59c9bce2ab1877ed1836cb077f2f2e54e2ab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:48 GMT
ADD file:e5db96b75b2cf1774c68ea6ee2d87d8e6b4246f6eb2298de3432baea84a4ffff in / 
# Tue, 12 Mar 2019 12:44:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:53 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:12:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:12:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:12:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:13:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:13:58 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:13:59 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:14:17 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:14:18 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 13:16:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:16:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:16:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:16:49 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:18:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:20:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:43be3b8c2f5742fcf4a72ad20ccd9c3bac3c85e4c21e2064b283dfbc434a1257`  
		Last Modified: Fri, 22 Feb 2019 23:21:19 GMT  
		Size: 38.5 MB (38499261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68a6f066cb58f4d2f6410e25e54adeb14293449915440e1d9f7f58fa890901a2`  
		Last Modified: Tue, 12 Mar 2019 12:46:24 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edb7db6e5c5b7c5188163bef447c091ef9f9e12f4055e478e1aca8ba439b44f`  
		Last Modified: Tue, 12 Mar 2019 12:46:24 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5ea7717896e6cc1cfd54f4dc3fa532cca4b66bf7c737170d20d724196aa693`  
		Last Modified: Tue, 12 Mar 2019 12:46:24 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cc3ccf293746a6fde443fd27786dc422734c57ef942c194bad7160434f5e09`  
		Last Modified: Tue, 12 Mar 2019 13:48:37 GMT  
		Size: 15.0 MB (14955547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c85f722789c3fe228b0fb7e3242c14dd0e3ef837941e5e92fb64fdc033977e`  
		Last Modified: Tue, 12 Mar 2019 13:48:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2a6828791529f386c765daa54046a1d5e7cac7efe49461fae7f30a37aaa8b69`  
		Last Modified: Tue, 12 Mar 2019 13:48:30 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fbf772f98ba611d857ac41c1c2ba05656fad4ad0bbe44a70d08b845e22a389`  
		Last Modified: Tue, 12 Mar 2019 13:48:47 GMT  
		Size: 40.9 MB (40930925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3edbf62c110e267796ffd88a69645514b677f9e398bb0e64243d70834a3adb9`  
		Last Modified: Tue, 12 Mar 2019 13:48:31 GMT  
		Size: 621.2 KB (621193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66abc20f6de30c399750ff144be72867d9ec1cd94814a80028e30b0533ba5e5`  
		Last Modified: Tue, 12 Mar 2019 13:49:23 GMT  
		Size: 164.6 MB (164617924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1996ab16c44cd366f4086b84f6b7b2cd3d65a10f2da58fe3b85c9b766dda36`  
		Last Modified: Tue, 12 Mar 2019 13:48:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bcd1ebe5b5382253f163103e00731be3a108cb09644db088b6079bcd5ed0e5a`  
		Last Modified: Tue, 12 Mar 2019 13:49:58 GMT  
		Size: 83.9 MB (83861272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee016ae0c04341e1eefd449c6b1d126556bfd5a9b93040552132f847cfd8856`  
		Last Modified: Tue, 12 Mar 2019 13:50:36 GMT  
		Size: 90.1 MB (90075626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13c2f9db76d83b5daf5bf2786623cfe5a1ddeee32ec13c0da47e525bf3918b05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443770712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62a26c4fb02de832a4bf9989aedc3f284028da83452206f84888c708e57da0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b672c9b9d4ea2b67b2e6265ff33fdc61eb29065499e846461b31576b369b65ac`  
		Last Modified: Tue, 29 Jan 2019 18:58:57 GMT  
		Size: 93.9 MB (93900857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
