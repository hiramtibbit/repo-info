## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:b786a44b827341366984846a74b6b0355cf5e0234e063fa706a571754423fdc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:6d9512408d8ed7e21aa1a06652f6a69e7ea6d181fda99e2bab08e89d4dc8fa05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472270238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7048247ec77f60e3efe68bf18f7eb8972228e57cd8fd31c6b1cfbc82d5d84bf9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:42:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:08 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:56:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:56:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:56:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:56:43 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:56:43 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:56:57 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:56:57 GMT
ENV ROS_DISTRO=melodic
# Fri, 26 Apr 2019 23:58:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:58:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:58:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:58:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:59:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:00:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f529587767531e9fc1cf637575758c9cf031dbd6fe57f9fd9c9dafb16d9e75`  
		Last Modified: Fri, 26 Apr 2019 23:57:04 GMT  
		Size: 836.5 KB (836503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a50c137e4556e8b796520091ec146835e50943e76b5d74e8f46bcdaaa4b46e`  
		Last Modified: Fri, 26 Apr 2019 23:57:08 GMT  
		Size: 14.9 MB (14913068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e320fb5e90499e5cdf9ae026b366723b10efa4f060215ea23f49f06a88485f4`  
		Last Modified: Sat, 27 Apr 2019 00:18:22 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac1f83235fbd7da1cb47548d64be1de3740d555d2173b661bc0300dce985a89`  
		Last Modified: Sat, 27 Apr 2019 00:18:21 GMT  
		Size: 5.4 KB (5417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2816cd72b653c36bf1b5f37ffc54380851e36f0d4c5462560680080692ee0f1`  
		Last Modified: Sat, 27 Apr 2019 00:18:35 GMT  
		Size: 49.4 MB (49413916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13a877ea63ce0eb91a584da8c938e52fa3e6f620bf819d3923081da41fab6d7`  
		Last Modified: Sat, 27 Apr 2019 00:18:21 GMT  
		Size: 653.8 KB (653845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b3fd04730491d9c99129158456955ff720481ef8bce03c8e4fdb1698b14788`  
		Last Modified: Sat, 27 Apr 2019 00:19:23 GMT  
		Size: 260.8 MB (260790949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd21ec45e8efb734be5ac1585c60dab9edbe25e89cc37f9836336b639e432643`  
		Last Modified: Sat, 27 Apr 2019 00:18:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a051e7d98b24e3f129168458a837d2e5cfec22e2d639a81313b250e5fb689268`  
		Last Modified: Sat, 27 Apr 2019 00:19:49 GMT  
		Size: 70.6 MB (70635381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052cb17dd1da9c72cec93522b269cc8070fadb3620988cce6c1a157e34d60cc2`  
		Last Modified: Sat, 27 Apr 2019 00:20:08 GMT  
		Size: 37.8 MB (37811906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:1aa365f872356394817e4616afe0fac8b43fd1120d894f64a87fa1c5e7bcb9fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.3 MB (419306769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca5464aa49406dadce3f9c81f52689319192a49af44d8f5552e6afe08136082`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:07:41 GMT
ADD file:91508eaa9a6ca65f915c4c00be38f2a22643d2260f00f045a24ac8b60e6d8a37 in / 
# Sat, 27 Apr 2019 12:07:43 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:07:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:07:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:07:48 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:33:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:33:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:59:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:59:34 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 13:00:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:00:38 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 13:00:38 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 13:01:02 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 13:01:02 GMT
ENV ROS_DISTRO=melodic
# Sat, 27 Apr 2019 13:04:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:04:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 13:04:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 13:04:14 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 13:05:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 13:06:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3447b717941c494b64a85e7ecccee1d14c35bf5ea462ff4d41b19fd4e52b14d3`  
		Last Modified: Sat, 27 Apr 2019 12:10:26 GMT  
		Size: 31.8 MB (31834541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a139bc00a591c79c7e0680c016ac154be3c94f5865a5fdb6a80b3c13b25512c`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a88e45a0742cc3bc6d8942ffd7c58de9eed96d6c69501ff3eb3a1141039e17`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc408458c70328a71f67544fa9f11ab0f7c03eb1e3a0b657480a6cc85724f3d8`  
		Last Modified: Sat, 27 Apr 2019 12:10:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5423ee1bd8f5c9451336dbdce73b09719ac6cde55d9414e417e7e8628e589e8`  
		Last Modified: Sat, 27 Apr 2019 13:22:09 GMT  
		Size: 837.4 KB (837350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad439ee27ff59326237df135dec18206e6af2aba74148ddeae9ec74f0c6210a2`  
		Last Modified: Sat, 27 Apr 2019 13:22:12 GMT  
		Size: 13.2 MB (13240919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74890d55bff0e82775fc833a32cf22d74331ff89f13055978992ddf2d395209e`  
		Last Modified: Sat, 27 Apr 2019 13:22:07 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efb91b653db592e84c22f8bced7699d154e4ce11be8b11e403d07f39fe1c5c5`  
		Last Modified: Sat, 27 Apr 2019 13:22:06 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d311471b2219d8be570c87ce5e910c1a900b948af2d60b7ee46e896fd35cbc41`  
		Last Modified: Sat, 27 Apr 2019 13:22:23 GMT  
		Size: 45.0 MB (45021510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d99e29bc67af7fe9d8282cb99c20bcd81f9c581dbbaeb5b12437038a90cfe133`  
		Last Modified: Sat, 27 Apr 2019 13:22:07 GMT  
		Size: 653.9 KB (653877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dea8f56d819841bd6e6a3bb628e4d319eb435feecce6c958bf2e2fbfb37fbc2`  
		Last Modified: Sat, 27 Apr 2019 13:23:15 GMT  
		Size: 232.2 MB (232205106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038155619938e7727d2e4d7e50db4f5788c2080830b11c0199b35d0b089352c9`  
		Last Modified: Sat, 27 Apr 2019 13:22:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8bf5aff40de217df73735a6a222a2391efa21feb1da9afdab020888c292588`  
		Last Modified: Sat, 27 Apr 2019 13:23:45 GMT  
		Size: 62.1 MB (62102860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401b14d342494ddb38f62a31381f3b0d8681ea012a9d7ea13e40461f2f7200e4`  
		Last Modified: Sat, 27 Apr 2019 13:24:10 GMT  
		Size: 33.4 MB (33401998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:dd8042d253a3262ba531715d801c0971008011c69e4ce54d3dcb672265e4a4da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.3 MB (400322038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:769a29c9e39d3c66fb985606727c5216844cdb2756799278996459815bece1a2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:56:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:58:08 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:58:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 11:58:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:00:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:00:15 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:00:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:00:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:00:52 GMT
ENV ROS_DISTRO=melodic
# Sat, 27 Apr 2019 12:12:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:13:01 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:13:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:13:02 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:18:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:21:31 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98e34995b036f53b3392426068fa765f0ed8274f534b5f7b7a538492948ab96`  
		Last Modified: Sat, 27 Apr 2019 13:33:55 GMT  
		Size: 836.9 KB (836912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0896ce2881583c2f568616c25c8b31ce692f50f9bb8c6594d821508b1d023d1a`  
		Last Modified: Sat, 27 Apr 2019 13:34:34 GMT  
		Size: 13.8 MB (13842975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f05bed1babc3e2d70064f4ef0da41f40133d11d201f4f50ab30b853cf8984e`  
		Last Modified: Sat, 27 Apr 2019 13:33:23 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577e0eab1fb8e52bca342f77b42bea61e02ea9875d1a39b457c67fc7cb921290`  
		Last Modified: Sat, 27 Apr 2019 13:33:20 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1425e6981a6f1a126c700252db4d589975d4618db3e1a1dd28216bd4d5600516`  
		Last Modified: Sat, 27 Apr 2019 13:36:33 GMT  
		Size: 47.6 MB (47612283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6803332a3aeaff6977828ce6ef007e5da85b3c52f5dd996ae052d40a9f44427c`  
		Last Modified: Sat, 27 Apr 2019 13:33:22 GMT  
		Size: 653.9 KB (653912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1dcb23e5f847ac6574dcc13da1e0c0e1574ddad404c3ae0e553e0c02640ec4b`  
		Last Modified: Sat, 27 Apr 2019 13:41:32 GMT  
		Size: 202.9 MB (202861090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16b10cef938fc6ef172faf2ccf018a4260bc4e2414d34cd9c9953dd206b2556`  
		Last Modified: Sat, 27 Apr 2019 13:33:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907b74375d24e438f43b5a20bb5bf5811739a5fe07473221535dfe86c7f97917`  
		Last Modified: Sat, 27 Apr 2019 13:43:09 GMT  
		Size: 65.6 MB (65578029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef649b66a1110d4450f308d6d6e65c4a095b2b18102e18608e6b4a7330700be1`  
		Last Modified: Sat, 27 Apr 2019 13:43:43 GMT  
		Size: 35.6 MB (35584887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
