<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:indigo`](#rosindigo)
-	[`ros:indigo-perception`](#rosindigo-perception)
-	[`ros:indigo-perception-trusty`](#rosindigo-perception-trusty)
-	[`ros:indigo-robot`](#rosindigo-robot)
-	[`ros:indigo-robot-trusty`](#rosindigo-robot-trusty)
-	[`ros:indigo-ros-base`](#rosindigo-ros-base)
-	[`ros:indigo-ros-base-trusty`](#rosindigo-ros-base-trusty)
-	[`ros:indigo-ros-core`](#rosindigo-ros-core)
-	[`ros:indigo-ros-core-trusty`](#rosindigo-ros-core-trusty)
-	[`ros:kinetic`](#roskinetic)
-	[`ros:kinetic-perception`](#roskinetic-perception)
-	[`ros:kinetic-perception-xenial`](#roskinetic-perception-xenial)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-robot-xenial`](#roskinetic-robot-xenial)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic-ros-base-xenial`](#roskinetic-ros-base-xenial)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-core-xenial`](#roskinetic-ros-core-xenial)
-	[`ros:latest`](#roslatest)
-	[`ros:lunar`](#roslunar)
-	[`ros:lunar-perception`](#roslunar-perception)
-	[`ros:lunar-perception-stretch`](#roslunar-perception-stretch)
-	[`ros:lunar-perception-xenial`](#roslunar-perception-xenial)
-	[`ros:lunar-robot`](#roslunar-robot)
-	[`ros:lunar-robot-stretch`](#roslunar-robot-stretch)
-	[`ros:lunar-robot-xenial`](#roslunar-robot-xenial)
-	[`ros:lunar-ros-base`](#roslunar-ros-base)
-	[`ros:lunar-ros-base-stretch`](#roslunar-ros-base-stretch)
-	[`ros:lunar-ros-base-xenial`](#roslunar-ros-base-xenial)
-	[`ros:lunar-ros-core`](#roslunar-ros-core)
-	[`ros:lunar-ros-core-stretch`](#roslunar-ros-core-stretch)
-	[`ros:lunar-ros-core-xenial`](#roslunar-ros-core-xenial)
-	[`ros:melodic`](#rosmelodic)
-	[`ros:melodic-perception`](#rosmelodic-perception)
-	[`ros:melodic-perception-bionic`](#rosmelodic-perception-bionic)
-	[`ros:melodic-perception-stretch`](#rosmelodic-perception-stretch)
-	[`ros:melodic-robot`](#rosmelodic-robot)
-	[`ros:melodic-robot-bionic`](#rosmelodic-robot-bionic)
-	[`ros:melodic-robot-stretch`](#rosmelodic-robot-stretch)
-	[`ros:melodic-ros-base`](#rosmelodic-ros-base)
-	[`ros:melodic-ros-base-bionic`](#rosmelodic-ros-base-bionic)
-	[`ros:melodic-ros-base-stretch`](#rosmelodic-ros-base-stretch)
-	[`ros:melodic-ros-core`](#rosmelodic-ros-core)
-	[`ros:melodic-ros-core-bionic`](#rosmelodic-ros-core-bionic)
-	[`ros:melodic-ros-core-stretch`](#rosmelodic-ros-core-stretch)

## `ros:indigo`

```console
$ docker pull ros@sha256:4902211e8fa9a85e4cd095ab5ec0971145b76b26807a1cc1d8bd40acec5cf601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:8c186814fa0c015c7ee013d5572c8190f613429a1bf7df293cfb811987c06a29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313816317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074185c2fcf3e302d47a3f88cae71c73ed2df155bcfb400c98ecb09323f0097e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:86c39ea048f671b67b9cb7a95222591c8304bd0495056f72d859806c2a919818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284833032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6250ae76dab8800c9789868191939397e737b83679cf59372263d99d56fc47dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:24:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d585d2d2531298d0665b0df1d42ced9115ee2ab622c81a70a7d624b761369`  
		Last Modified: Sat, 29 Dec 2018 14:06:31 GMT  
		Size: 40.4 MB (40388916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:9f5dd7754830f3e8ff426b6f1ecc39bab8cb258ee0e7577696c39cda825efa9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:bff34af7e0f15a13037b51c479139a5d6c36a4a162a3773cd741fa398602646e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.1 MB (550073451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a98304cfd96923d10b4b78c2288a240ac61335c87cd02089d8b882cd19de6b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:33:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8b3da81b92822d4fda0dcf7249be2cf900d9f25e972250c2b5979aa63936bc`  
		Last Modified: Sat, 29 Dec 2018 01:17:34 GMT  
		Size: 236.3 MB (236257134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:18011e85e6dfa77f8460c0b9b7ff9d63aac230748b67942c72fe48ef9889a266
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496668122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe34c7999aba84e07525109323e1a360ea51330d3a745d4752627c5a83c238d3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:24:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:29:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d585d2d2531298d0665b0df1d42ced9115ee2ab622c81a70a7d624b761369`  
		Last Modified: Sat, 29 Dec 2018 14:06:31 GMT  
		Size: 40.4 MB (40388916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0798f58b7402c98811c71268eda5c62b1c5db6e67a7d8ff21f5262740dea1505`  
		Last Modified: Sat, 29 Dec 2018 14:07:56 GMT  
		Size: 211.8 MB (211835090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:9f5dd7754830f3e8ff426b6f1ecc39bab8cb258ee0e7577696c39cda825efa9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:bff34af7e0f15a13037b51c479139a5d6c36a4a162a3773cd741fa398602646e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.1 MB (550073451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a98304cfd96923d10b4b78c2288a240ac61335c87cd02089d8b882cd19de6b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:33:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8b3da81b92822d4fda0dcf7249be2cf900d9f25e972250c2b5979aa63936bc`  
		Last Modified: Sat, 29 Dec 2018 01:17:34 GMT  
		Size: 236.3 MB (236257134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:18011e85e6dfa77f8460c0b9b7ff9d63aac230748b67942c72fe48ef9889a266
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496668122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe34c7999aba84e07525109323e1a360ea51330d3a745d4752627c5a83c238d3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:24:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:29:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d585d2d2531298d0665b0df1d42ced9115ee2ab622c81a70a7d624b761369`  
		Last Modified: Sat, 29 Dec 2018 14:06:31 GMT  
		Size: 40.4 MB (40388916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0798f58b7402c98811c71268eda5c62b1c5db6e67a7d8ff21f5262740dea1505`  
		Last Modified: Sat, 29 Dec 2018 14:07:56 GMT  
		Size: 211.8 MB (211835090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:3b4050683271a6a8c0b0aa483963c3bb3cfc5eb5bace38f1df315b730d61319a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:13de70f0ed611f2636cd4e3748cbd5f2ed4a0505bd150b2f942705ae7422bda4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332847287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59572fcb956f904939d6cc1d5f1e420a23e455b9b94c8d719c0d980c8d0eee2e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:30:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ffa2f5c672ce38611b892c909a58809ac442bea9316b21ea314ae08f8fcda`  
		Last Modified: Sat, 29 Dec 2018 01:16:34 GMT  
		Size: 19.0 MB (19030970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:12db2605eabfbebe0ee4df0e1527b5d52ce03af680afbd7ad59438a0d709f533
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302520874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68f55c7eb34fd701adc1637abff07463f12b68d0e010439646bf2b77e7e7e840`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:24:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:20 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d585d2d2531298d0665b0df1d42ced9115ee2ab622c81a70a7d624b761369`  
		Last Modified: Sat, 29 Dec 2018 14:06:31 GMT  
		Size: 40.4 MB (40388916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a42d82157b103986912230176108eee0cd34409b8fc3667f4acafa157a7d428`  
		Last Modified: Sat, 29 Dec 2018 14:06:45 GMT  
		Size: 17.7 MB (17687842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:3b4050683271a6a8c0b0aa483963c3bb3cfc5eb5bace38f1df315b730d61319a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:13de70f0ed611f2636cd4e3748cbd5f2ed4a0505bd150b2f942705ae7422bda4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332847287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59572fcb956f904939d6cc1d5f1e420a23e455b9b94c8d719c0d980c8d0eee2e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:30:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf6ffa2f5c672ce38611b892c909a58809ac442bea9316b21ea314ae08f8fcda`  
		Last Modified: Sat, 29 Dec 2018 01:16:34 GMT  
		Size: 19.0 MB (19030970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:12db2605eabfbebe0ee4df0e1527b5d52ce03af680afbd7ad59438a0d709f533
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302520874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68f55c7eb34fd701adc1637abff07463f12b68d0e010439646bf2b77e7e7e840`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:24:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:20 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d585d2d2531298d0665b0df1d42ced9115ee2ab622c81a70a7d624b761369`  
		Last Modified: Sat, 29 Dec 2018 14:06:31 GMT  
		Size: 40.4 MB (40388916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a42d82157b103986912230176108eee0cd34409b8fc3667f4acafa157a7d428`  
		Last Modified: Sat, 29 Dec 2018 14:06:45 GMT  
		Size: 17.7 MB (17687842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:4902211e8fa9a85e4cd095ab5ec0971145b76b26807a1cc1d8bd40acec5cf601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:8c186814fa0c015c7ee013d5572c8190f613429a1bf7df293cfb811987c06a29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313816317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074185c2fcf3e302d47a3f88cae71c73ed2df155bcfb400c98ecb09323f0097e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:86c39ea048f671b67b9cb7a95222591c8304bd0495056f72d859806c2a919818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284833032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6250ae76dab8800c9789868191939397e737b83679cf59372263d99d56fc47dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:24:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d585d2d2531298d0665b0df1d42ced9115ee2ab622c81a70a7d624b761369`  
		Last Modified: Sat, 29 Dec 2018 14:06:31 GMT  
		Size: 40.4 MB (40388916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:4902211e8fa9a85e4cd095ab5ec0971145b76b26807a1cc1d8bd40acec5cf601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:8c186814fa0c015c7ee013d5572c8190f613429a1bf7df293cfb811987c06a29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313816317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074185c2fcf3e302d47a3f88cae71c73ed2df155bcfb400c98ecb09323f0097e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:29:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086173ef5afa68cfe78ea0d953483c75812470041329b9f04e118ddc513456b9`  
		Last Modified: Sat, 29 Dec 2018 01:16:22 GMT  
		Size: 46.8 MB (46776553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:86c39ea048f671b67b9cb7a95222591c8304bd0495056f72d859806c2a919818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284833032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6250ae76dab8800c9789868191939397e737b83679cf59372263d99d56fc47dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:24:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468d585d2d2531298d0665b0df1d42ced9115ee2ab622c81a70a7d624b761369`  
		Last Modified: Sat, 29 Dec 2018 14:06:31 GMT  
		Size: 40.4 MB (40388916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:158bdc0f77a9e08d5a34a39b9ceb3a6b3d7f4972fb0c63f8db663374304b8a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:43128e33c720dc3941861d81dafd43a82b5456ab3ad538b6659e55f963e41d54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267039764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b7e164bef730b253178e80f9d3a4f5a9e2bec7d796a4ad2f23354501ac619db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:447e2e151f3741991d24bda78a2257edafc284fdbc565323f0f176e910fd3b98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244444116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc1de4b9dadc49b2736fbb55eb7ca6ca79576e02e73ed9a2e25f88dc1dd7b4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:158bdc0f77a9e08d5a34a39b9ceb3a6b3d7f4972fb0c63f8db663374304b8a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:43128e33c720dc3941861d81dafd43a82b5456ab3ad538b6659e55f963e41d54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267039764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b7e164bef730b253178e80f9d3a4f5a9e2bec7d796a4ad2f23354501ac619db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:45 GMT
ADD file:c860cba1b1cd5ee3b965d7ee8dee07308dc4d1429a8e0e9fd2196d2b41d8aa27 in / 
# Fri, 28 Dec 2018 23:24:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:24:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:24:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:24:47 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:26:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:26:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:26:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:27:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:27:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:27:20 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:27:20 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 00:29:05 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:29:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:29:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:29:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9b316e271c6053db26f20220c0e58149bc29688e748cc242e38689568ca67e59`  
		Last Modified: Mon, 24 Dec 2018 15:11:45 GMT  
		Size: 67.1 MB (67148528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dea703e2e1f1ccb3ffe844168b3c506120c4a88563ca2657ccdd414c5ea90b7e`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd50fddc64aed3615057b72ae4712ba6bcb90d3b2e97673bded147b12ba9c653`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d32d2e6dcde218d27789c141b58de9095b70c1e7b78fffc8c93c30cfc65ab5f`  
		Last Modified: Fri, 28 Dec 2018 23:26:32 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15eeedf084c617253f720fe895953b43fafea35b6c515e70ee7bae83930f1a60`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 18.0 MB (18036759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1822c51aca54855dbb703e86f0f30bdb7b74b4ed695941aaafaae13d8d5f9aa0`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09318eec9f7e5a685bfe7fa35ff323159da3a3a144831ddc7a833de217dc5f84`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 260.4 KB (260377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171536eee6925fb66d42f3bb6eb6ede030f8ae325fef0f06520942e8bd1012dc`  
		Last Modified: Sat, 29 Dec 2018 01:15:39 GMT  
		Size: 31.0 MB (30950561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f3123ac4b1da278b59c2e33e06d1a0809f7d065a8c0c0d90f0973c8a023c3c`  
		Last Modified: Sat, 29 Dec 2018 01:15:34 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02531d6be3b7ffaf979bafe1d396130095bf64695b8d10db49f3c640626212`  
		Last Modified: Sat, 29 Dec 2018 01:16:06 GMT  
		Size: 149.7 MB (149705132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbee4de6770145690d884f3b7a7561ce36ae729c4478a0ad36b664b7e8871d94`  
		Last Modified: Sat, 29 Dec 2018 01:15:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:447e2e151f3741991d24bda78a2257edafc284fdbc565323f0f176e910fd3b98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244444116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc1de4b9dadc49b2736fbb55eb7ca6ca79576e02e73ed9a2e25f88dc1dd7b4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:00:27 GMT
ADD file:ccfb4f586cc051b0ea16707850d69f8ebb25ee3865b96440c580dcdb4961ed6a in / 
# Sat, 29 Dec 2018 13:00:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:00:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:00:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:00:35 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:19:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:19:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:20:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:20:38 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:20:39 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:21:03 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:21:03 GMT
ENV ROS_DISTRO=indigo
# Sat, 29 Dec 2018 13:23:17 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:23:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3b3780be39e6db5542683000643520f095622729e6d2d5289e4b0e958ef895ac`  
		Last Modified: Mon, 24 Dec 2018 15:13:23 GMT  
		Size: 61.5 MB (61489466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab853d55593eb5b58c332bf2053e3d8dd1b7c01524df1154311d32a8d4ece6dc`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 76.8 KB (76773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d251c0054edab400602e357fb26b26052cb132aaa115967926140a93bbc8ac7`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a016dcf5aca9e72b6a208b1386467a1224ebf114a95bea75821a882ff7ee6d54`  
		Last Modified: Sat, 29 Dec 2018 13:02:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206a5ce9f801cf04287e2ee8b742ee0fd414d94503832ddce7fb273708ef3792`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 16.0 MB (15995825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcaf474e130603bd427517d660537b9287b891c943a3d4620fa4de1cd1220d9a`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604b25963e30cbb2726ea7269933ef74859372e3b018af983949a708fdc3d56`  
		Last Modified: Sat, 29 Dec 2018 14:05:24 GMT  
		Size: 260.3 KB (260347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6be134224bbbe5f2ab22f9364d27ef05425bf24477c510ca326c91ef0fc816b`  
		Last Modified: Sat, 29 Dec 2018 14:05:34 GMT  
		Size: 28.4 MB (28419918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db705df55f5ddb55f5d61a76b1e098d932687822e2dc71ade15a195c871e73c5`  
		Last Modified: Sat, 29 Dec 2018 14:05:23 GMT  
		Size: 852.0 KB (851969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc145d8f1136c90043f3fb07e3c88ab377920bdf6082fb3ad992d665554f11e`  
		Last Modified: Sat, 29 Dec 2018 14:06:12 GMT  
		Size: 137.3 MB (137335993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b91ebc7beb87d892b84942c593a6ea9aa6dc6f7ec73686b993d220b8d83245e`  
		Last Modified: Sat, 29 Dec 2018 14:05:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:5cdb691a34b72efcd0a4f099623ef741c796121f0bb0c3c896f49d9a4c8c0266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:5c11fc153d2713ece5b2bc5a1d55884c47d58be9264597176500ef053cb32db6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.8 MB (384763632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f91828bbf93f1daf0e692f10b7eae18703896211a0b09dfa8df29c6d62f569e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b16f43fb332f07175184f528af55676e343493b777921099d5da878920a217c`  
		Last Modified: Sat, 29 Dec 2018 01:19:00 GMT  
		Size: 85.7 MB (85690981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:a5755256c41025e8617133ed62333039d8c10d64e7c06764c21ba6dc05d58cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336244903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27be9a69244d6d79f6ef9521499ee538acafb9ec2f5496e9df5a7620b5ce0f06`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d639246e0da052ce100fa48d95f4a1cdc73751287813988305a1eff0b48b995b`  
		Last Modified: Sat, 29 Dec 2018 14:09:29 GMT  
		Size: 76.5 MB (76467967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694d9c4f68fca92238f063a35002acc22fa885dcc5fbf594ecc4dfec63d60a02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.4 MB (357364008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5046cd4c1c7f04274f4eb6d0ad6dcda2841352d9d8f871c44f2f586b62ec5db3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:0098abb21d4b6b518239d0f79d433080926022d79498cfc7cb213c07d0d08c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:f618f2e8e3642504bd1b0928e5663352bdd2fcc33e849f0ca947bf8e3d25be5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.5 MB (725472324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65cd0c7419fbf6fbd0dbd252f8edd01dd5ac6eebee4963cd5ad234ea40c66796`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:43:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b16f43fb332f07175184f528af55676e343493b777921099d5da878920a217c`  
		Last Modified: Sat, 29 Dec 2018 01:19:00 GMT  
		Size: 85.7 MB (85690981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60653deadeccfc93a8724db6f3ec82afd0f456ab530c6342c89495a06f8ee5c`  
		Last Modified: Sat, 29 Dec 2018 01:20:54 GMT  
		Size: 340.7 MB (340708692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:a1b9b071cd11cdb1fda5414fe9d38e51ccb29cb1a192b9a45625c0e81ffd1c42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (616981185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abb8c231d78d5ca15b01c115edf08ba7b2cdc25444743694d86bb6e32083890`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:41:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d639246e0da052ce100fa48d95f4a1cdc73751287813988305a1eff0b48b995b`  
		Last Modified: Sat, 29 Dec 2018 14:09:29 GMT  
		Size: 76.5 MB (76467967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c224d139d41c4e1a27e67f9f2de1567bba68ea3e16bcd01a678823bb03cb2`  
		Last Modified: Sat, 29 Dec 2018 14:11:44 GMT  
		Size: 280.7 MB (280736282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ab2d5bae861996908344ce2817d8c6021c9fc69639f6fb1047ff13df543b7a50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.6 MB (648603917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4067517fb150ea588d9437d53ec22f811ac21370cc862d78960adbc6ac554d87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:32:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f93df4d0bf77311b0369e82e6fe2cabe81c4afff5b7b1624d9239762d70e37`  
		Last Modified: Tue, 20 Nov 2018 12:45:16 GMT  
		Size: 291.2 MB (291239909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:0098abb21d4b6b518239d0f79d433080926022d79498cfc7cb213c07d0d08c25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f618f2e8e3642504bd1b0928e5663352bdd2fcc33e849f0ca947bf8e3d25be5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.5 MB (725472324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65cd0c7419fbf6fbd0dbd252f8edd01dd5ac6eebee4963cd5ad234ea40c66796`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:43:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b16f43fb332f07175184f528af55676e343493b777921099d5da878920a217c`  
		Last Modified: Sat, 29 Dec 2018 01:19:00 GMT  
		Size: 85.7 MB (85690981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e60653deadeccfc93a8724db6f3ec82afd0f456ab530c6342c89495a06f8ee5c`  
		Last Modified: Sat, 29 Dec 2018 01:20:54 GMT  
		Size: 340.7 MB (340708692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a1b9b071cd11cdb1fda5414fe9d38e51ccb29cb1a192b9a45625c0e81ffd1c42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (616981185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9abb8c231d78d5ca15b01c115edf08ba7b2cdc25444743694d86bb6e32083890`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:41:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d639246e0da052ce100fa48d95f4a1cdc73751287813988305a1eff0b48b995b`  
		Last Modified: Sat, 29 Dec 2018 14:09:29 GMT  
		Size: 76.5 MB (76467967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c224d139d41c4e1a27e67f9f2de1567bba68ea3e16bcd01a678823bb03cb2`  
		Last Modified: Sat, 29 Dec 2018 14:11:44 GMT  
		Size: 280.7 MB (280736282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ab2d5bae861996908344ce2817d8c6021c9fc69639f6fb1047ff13df543b7a50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.6 MB (648603917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4067517fb150ea588d9437d53ec22f811ac21370cc862d78960adbc6ac554d87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:32:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f93df4d0bf77311b0369e82e6fe2cabe81c4afff5b7b1624d9239762d70e37`  
		Last Modified: Tue, 20 Nov 2018 12:45:16 GMT  
		Size: 291.2 MB (291239909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:dd84b047b64e29d8d897149a54f13e577f09abad7e5a925231286362d6565fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:fe3fc1362ab3f1834776b25beab7be24bdf84b62bf3a2dfc64f99423957d57c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488405353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070bc101ae37c7d731e78699bdbdbde3adc0014a0f81fe63c57d56cecd6140c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:40:24 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b16f43fb332f07175184f528af55676e343493b777921099d5da878920a217c`  
		Last Modified: Sat, 29 Dec 2018 01:19:00 GMT  
		Size: 85.7 MB (85690981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c7f1d635adc6a65df8a5036687959f55db6dc03a7874f5fd10afd63cd021c4`  
		Last Modified: Sat, 29 Dec 2018 01:19:33 GMT  
		Size: 103.6 MB (103641721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:97ef7275cb5e8a8ffa84a7cafa73db54460c5737484331038522a5265da2e8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426262257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0042832e78d388d015ce137ff8376785befbc8a6426e6e6a4072918570278e3d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:37:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d639246e0da052ce100fa48d95f4a1cdc73751287813988305a1eff0b48b995b`  
		Last Modified: Sat, 29 Dec 2018 14:09:29 GMT  
		Size: 76.5 MB (76467967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718cabd5a3beb283efa7053536d3fbdb82475654f1b781cc7611248e8a247d44`  
		Last Modified: Sat, 29 Dec 2018 14:10:05 GMT  
		Size: 90.0 MB (90017354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:11ef2a0eb7c0e4a04ea63b4d2399315520ba1caa8059496ec1630cd6fe351426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.3 MB (451336794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2af2c6d8a213c88cd88f9a0a4f966657eb448366b782ed94d422a50b81cafe7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:20:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7d2df65811894cf924a03d9f8296199d336b352462784c66b077f7c853d2c`  
		Last Modified: Tue, 20 Nov 2018 12:42:55 GMT  
		Size: 94.0 MB (93972786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:dd84b047b64e29d8d897149a54f13e577f09abad7e5a925231286362d6565fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:fe3fc1362ab3f1834776b25beab7be24bdf84b62bf3a2dfc64f99423957d57c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488405353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070bc101ae37c7d731e78699bdbdbde3adc0014a0f81fe63c57d56cecd6140c9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:40:24 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b16f43fb332f07175184f528af55676e343493b777921099d5da878920a217c`  
		Last Modified: Sat, 29 Dec 2018 01:19:00 GMT  
		Size: 85.7 MB (85690981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c7f1d635adc6a65df8a5036687959f55db6dc03a7874f5fd10afd63cd021c4`  
		Last Modified: Sat, 29 Dec 2018 01:19:33 GMT  
		Size: 103.6 MB (103641721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:97ef7275cb5e8a8ffa84a7cafa73db54460c5737484331038522a5265da2e8f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426262257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0042832e78d388d015ce137ff8376785befbc8a6426e6e6a4072918570278e3d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:37:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d639246e0da052ce100fa48d95f4a1cdc73751287813988305a1eff0b48b995b`  
		Last Modified: Sat, 29 Dec 2018 14:09:29 GMT  
		Size: 76.5 MB (76467967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:718cabd5a3beb283efa7053536d3fbdb82475654f1b781cc7611248e8a247d44`  
		Last Modified: Sat, 29 Dec 2018 14:10:05 GMT  
		Size: 90.0 MB (90017354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:11ef2a0eb7c0e4a04ea63b4d2399315520ba1caa8059496ec1630cd6fe351426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.3 MB (451336794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2af2c6d8a213c88cd88f9a0a4f966657eb448366b782ed94d422a50b81cafe7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:20:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7d2df65811894cf924a03d9f8296199d336b352462784c66b077f7c853d2c`  
		Last Modified: Tue, 20 Nov 2018 12:42:55 GMT  
		Size: 94.0 MB (93972786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:5cdb691a34b72efcd0a4f099623ef741c796121f0bb0c3c896f49d9a4c8c0266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:5c11fc153d2713ece5b2bc5a1d55884c47d58be9264597176500ef053cb32db6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.8 MB (384763632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f91828bbf93f1daf0e692f10b7eae18703896211a0b09dfa8df29c6d62f569e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b16f43fb332f07175184f528af55676e343493b777921099d5da878920a217c`  
		Last Modified: Sat, 29 Dec 2018 01:19:00 GMT  
		Size: 85.7 MB (85690981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:a5755256c41025e8617133ed62333039d8c10d64e7c06764c21ba6dc05d58cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336244903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27be9a69244d6d79f6ef9521499ee538acafb9ec2f5496e9df5a7620b5ce0f06`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d639246e0da052ce100fa48d95f4a1cdc73751287813988305a1eff0b48b995b`  
		Last Modified: Sat, 29 Dec 2018 14:09:29 GMT  
		Size: 76.5 MB (76467967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694d9c4f68fca92238f063a35002acc22fa885dcc5fbf594ecc4dfec63d60a02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.4 MB (357364008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5046cd4c1c7f04274f4eb6d0ad6dcda2841352d9d8f871c44f2f586b62ec5db3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:5cdb691a34b72efcd0a4f099623ef741c796121f0bb0c3c896f49d9a4c8c0266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:5c11fc153d2713ece5b2bc5a1d55884c47d58be9264597176500ef053cb32db6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.8 MB (384763632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f91828bbf93f1daf0e692f10b7eae18703896211a0b09dfa8df29c6d62f569e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:38:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b16f43fb332f07175184f528af55676e343493b777921099d5da878920a217c`  
		Last Modified: Sat, 29 Dec 2018 01:19:00 GMT  
		Size: 85.7 MB (85690981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a5755256c41025e8617133ed62333039d8c10d64e7c06764c21ba6dc05d58cda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336244903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27be9a69244d6d79f6ef9521499ee538acafb9ec2f5496e9df5a7620b5ce0f06`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:36:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d639246e0da052ce100fa48d95f4a1cdc73751287813988305a1eff0b48b995b`  
		Last Modified: Sat, 29 Dec 2018 14:09:29 GMT  
		Size: 76.5 MB (76467967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694d9c4f68fca92238f063a35002acc22fa885dcc5fbf594ecc4dfec63d60a02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.4 MB (357364008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5046cd4c1c7f04274f4eb6d0ad6dcda2841352d9d8f871c44f2f586b62ec5db3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:cea6ac50e4d01dd3e050e09c6216f0ffd9d84ff337d0049b1ccd09eb6e2c4164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d91fe72d10b8741a520d98eb31f8247e0f02c046ed25d07cc2f31285ec93bd60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299072651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afb041971dce635de97584a4ff6b994b0da7b5803130d71c76cc68ff04c447b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:89c58d7bf25796faa384f91df32f18549ef1e33aac87afd08efef555d32bdb9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259776936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27db31fe797948eee572abe958dea902e1cf2cbb9dab5a60f735217cf0a7569e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:865ef18c64514ccf1baead6d848261c5f15f3f34f3079329a45df9bfed44062f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272074409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b285e6b0f980aff733a2aaaa5c3cf20ea1a1d44e5941a83df3914ef407d3aeb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:cea6ac50e4d01dd3e050e09c6216f0ffd9d84ff337d0049b1ccd09eb6e2c4164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:d91fe72d10b8741a520d98eb31f8247e0f02c046ed25d07cc2f31285ec93bd60
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299072651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2afb041971dce635de97584a4ff6b994b0da7b5803130d71c76cc68ff04c447b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:35:04 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 00:36:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:36:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:37:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:37:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a49af4029603bb1fcaaaaa76ba83c09a840cd01adb92d7916fb930fe1a109dc0`  
		Last Modified: Sat, 29 Dec 2018 01:18:32 GMT  
		Size: 193.2 MB (193217785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9951e6bad3236f56a5b48f7fa84a64508c0bf64eeae37ab28bbf811cab668ff`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:89c58d7bf25796faa384f91df32f18549ef1e33aac87afd08efef555d32bdb9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259776936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27db31fe797948eee572abe958dea902e1cf2cbb9dab5a60f735217cf0a7569e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:31:37 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 13:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:34:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:34:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f77bdce98d11a3e5a3a877c115fa9be6fc35942ce8d7ffe2daa225eb4146fe3d`  
		Last Modified: Sat, 29 Dec 2018 14:08:57 GMT  
		Size: 164.6 MB (164584991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2d51e1cf5fc6e3d3eea67617a93e0ff1ffc70298d6b15356937a7ee966507b`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:865ef18c64514ccf1baead6d848261c5f15f3f34f3079329a45df9bfed44062f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272074409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b285e6b0f980aff733a2aaaa5c3cf20ea1a1d44e5941a83df3914ef407d3aeb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:c37caf9d117c585fba02ece350f8e53ff67b4e914d06d91424be56565584999d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:57eb32a5591a04fc3af06fcb3195e13e10298877aa9d583b0884904f3a5a1a9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.1 MB (427146832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dc63f4e0e8c7de2d91f73dcc6e794f68dbd7539d92c75bf747691ec1a9a56a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:20be999a27b6f3dd05fe3a4af4404393a66b809bf54fb82d5a5156a1f84de028
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379635228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6001afde678c6b66cb25085f5bc1f64826c1aac5c41a66d8440fde2f3c67b034`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:09a994fec4bc6f015174bb510330db4a56300d38d388006be6ff4c65ccd43c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:ede432e70fddd1878d59e4a0e18c3ea1eda7bdfa569cf21d30b4b08e765daeb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.7 MB (384700183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c1335c475e5b0c420a99948651ac7b12d8ac5373b73b7cdf6f4d01adaa611f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:896cdd43ce0cd92d85f0cb93b9c5b822d0e6d78b6db1a0334a467848fe6df7b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336191162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46026fc480a66fe5740f0d78eeddd09e6919a1710d285ed23786afa0f23f0bcf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:46:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09018db95ffc6af27c32b5d60896419cbd60e040fbb4b5e8c77db904a7732a7`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 76.4 MB (76395573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79375bccf0494549fed369215998175b2ba431fd8691e6fac0b31727383525ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357285175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee20ac58f060c9d119c1fabf108d4e68343698291d3b54cbb7441e5d1c6778a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:f7e0f74516422f0fbfd6b74768e5f5e119001c6c142b3b5bdd64420273abf297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:5805a25f2ba2590b8c3a96ee9f7729e094cdca455b27b5f65415a222514612c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.9 MB (723850976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1e6bd3bb9bce027f04d19f86c32c6cd756ae98087c90e513c4544162b29997`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:47:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e57b5f1c8a1817b1ed5b64d9cbf92df88468cb4814f5d27fbceb8915d4afb3`  
		Last Modified: Sat, 29 Dec 2018 01:24:16 GMT  
		Size: 339.2 MB (339150793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:89fa95f445d16f14ce5a3ebd52c84c318830f83c67cbb30eed53bc90e24ebb63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.5 MB (616478527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95838b10749176778731531182f0fe50199ed3f5253f01932466502e46d8c7c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:46:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09018db95ffc6af27c32b5d60896419cbd60e040fbb4b5e8c77db904a7732a7`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 76.4 MB (76395573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b2f512027e99ba3751f3ae6f3b28751ae12c4e4b0b69cb77d54ac8ffbf49bf`  
		Last Modified: Sat, 29 Dec 2018 14:15:51 GMT  
		Size: 280.3 MB (280287365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:33b5bffa68662935fa04e83e32863848eaa3fa2df2380694e39a82d6918ee3e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647278127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d851b544c7248efbf7878a3740696b17778da2342c7503ef0f76c5e9e67de7b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:02:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e02f598954fc6af78e568afc166f1e5109e24d2d831b32a6309f5dde0a7552f`  
		Last Modified: Tue, 20 Nov 2018 12:51:13 GMT  
		Size: 290.0 MB (289992952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:4c2b5237f92a0b6dd4a9ddf2fa35c319d15c249d538799f1778beda2e2657450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:611033b8c5aaf037fb7820d664143b6a6b4037e1fd82752767eb100e01b5fe55
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.5 MB (933465231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf781fa7541ca9a9cca6ca3ba532cc0e9a5687692589432ebe4fd968e5499a8d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:49:08 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:50:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:50:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:50:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:50:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:51:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:55:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9000e58abb18ea709b21b3f074c8d3ac269c3d2c60cab1db1cf46a8978fe6e`  
		Last Modified: Sat, 29 Dec 2018 01:25:15 GMT  
		Size: 251.1 MB (251127331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9264b7e775cf55e8099c1d57e10933bf3f8f0ee2f6d8d986d398209b506f3a75`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e14e9b797f3b54922a946a5a2e4bc2906d621281fbe189355ebc07a4bbb856`  
		Last Modified: Sat, 29 Dec 2018 01:25:46 GMT  
		Size: 123.1 MB (123068191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ca6530fad6757d510dba57ae1935b63c63979292933538922e2614684dad31`  
		Last Modified: Sat, 29 Dec 2018 01:27:42 GMT  
		Size: 438.5 MB (438458262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b6fc5a09a09a0a199655635a6ccdb04f29161bb1f88804a5fd4a542f138f8f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **815.8 MB (815774021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08712611ad801aff23aa144c0265e354ec9dc79986c0987e73957c68b5dbe507`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:16:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:37:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136b4c81bea52dd4c17a8e03de70d50d5ddb35ac619b5d7e7fddfcce70156b8`  
		Last Modified: Sat, 17 Nov 2018 07:10:45 GMT  
		Size: 116.0 MB (116026783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959f2d0f26f5a9152344d9fcb831b31e27a22300cab898e332a33cbe6acd6a19`  
		Last Modified: Sat, 17 Nov 2018 07:14:12 GMT  
		Size: 378.5 MB (378530518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:f7e0f74516422f0fbfd6b74768e5f5e119001c6c142b3b5bdd64420273abf297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:5805a25f2ba2590b8c3a96ee9f7729e094cdca455b27b5f65415a222514612c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.9 MB (723850976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1e6bd3bb9bce027f04d19f86c32c6cd756ae98087c90e513c4544162b29997`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:47:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e57b5f1c8a1817b1ed5b64d9cbf92df88468cb4814f5d27fbceb8915d4afb3`  
		Last Modified: Sat, 29 Dec 2018 01:24:16 GMT  
		Size: 339.2 MB (339150793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:89fa95f445d16f14ce5a3ebd52c84c318830f83c67cbb30eed53bc90e24ebb63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.5 MB (616478527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95838b10749176778731531182f0fe50199ed3f5253f01932466502e46d8c7c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:46:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09018db95ffc6af27c32b5d60896419cbd60e040fbb4b5e8c77db904a7732a7`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 76.4 MB (76395573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0b2f512027e99ba3751f3ae6f3b28751ae12c4e4b0b69cb77d54ac8ffbf49bf`  
		Last Modified: Sat, 29 Dec 2018 14:15:51 GMT  
		Size: 280.3 MB (280287365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:33b5bffa68662935fa04e83e32863848eaa3fa2df2380694e39a82d6918ee3e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647278127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d851b544c7248efbf7878a3740696b17778da2342c7503ef0f76c5e9e67de7b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:02:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e02f598954fc6af78e568afc166f1e5109e24d2d831b32a6309f5dde0a7552f`  
		Last Modified: Tue, 20 Nov 2018 12:51:13 GMT  
		Size: 290.0 MB (289992952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:181c65c7576f50cc4e39c4b9245184d8d243d4948f25a6d42710ef8864129717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:e70631af6cfac6b20a87046a11f2b75d07c09327b45d1870d38a1a0598071f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488433595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e489418a434842c66866fb39d83c2b1bbc42a8d95eb9c77c6b2806da322a2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:46:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da29fa0cc90a2252fc87034635333cd36ec45737836a589bdb403abcee529885`  
		Last Modified: Sat, 29 Dec 2018 01:22:54 GMT  
		Size: 103.7 MB (103733412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:82c1b8b1c478671bdfacff96dbffbf650a7985c01028d469d24afc747765be44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426285092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8a7c4c5594912eda2bb470d6b8724078ae0116b74d38dd30a23674308eec33`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:46:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:48:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09018db95ffc6af27c32b5d60896419cbd60e040fbb4b5e8c77db904a7732a7`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 76.4 MB (76395573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ec8cac3f67aab42fe980121e40e30173581b507a497739b8fd48602a57533`  
		Last Modified: Sat, 29 Dec 2018 14:13:55 GMT  
		Size: 90.1 MB (90093930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:90c863d70719998b7c3bf0fde386ed8ef4d30650bcb5148fa75c4999ec7a9568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.4 MB (451362152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d337df1b410cfb179f2d6829c965514f731eb51839bad222b51b8e5b5942bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:51:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878892e2470bc4790dc82298db5336ad0b35e0f240f87b6ae46a98b1724b455b`  
		Last Modified: Tue, 20 Nov 2018 12:48:50 GMT  
		Size: 94.1 MB (94076977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:809b8880eb61c1489129701627968863f16cc52a9578390c83edf74a9ef29c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:3bd593d4f120ab70d70f85af68eb1cdd1f247c99672b26cf0aac115ced9b8227
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.4 MB (555449235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25072356640835575df36d3d659bf0bfba823fb48cbad162f317a2148e78e303`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:49:08 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:50:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:50:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:50:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:50:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:51:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:52:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9000e58abb18ea709b21b3f074c8d3ac269c3d2c60cab1db1cf46a8978fe6e`  
		Last Modified: Sat, 29 Dec 2018 01:25:15 GMT  
		Size: 251.1 MB (251127331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9264b7e775cf55e8099c1d57e10933bf3f8f0ee2f6d8d986d398209b506f3a75`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e14e9b797f3b54922a946a5a2e4bc2906d621281fbe189355ebc07a4bbb856`  
		Last Modified: Sat, 29 Dec 2018 01:25:46 GMT  
		Size: 123.1 MB (123068191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5660f6441997e4d32f03fca2aae5a488e6f240d1eb3c9fab8e5040f06d7a2d7e`  
		Last Modified: Sat, 29 Dec 2018 01:26:04 GMT  
		Size: 60.4 MB (60442266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:41d89ae5b391a090e09281a2947a80f44e9c7b9a668bb3c082fb5e435708f83d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.8 MB (494766656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1d2360f448430aef2b1cfed945d87e472e06f1eedf9bb6c28f1482cee1f956`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:16:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:20:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136b4c81bea52dd4c17a8e03de70d50d5ddb35ac619b5d7e7fddfcce70156b8`  
		Last Modified: Sat, 17 Nov 2018 07:10:45 GMT  
		Size: 116.0 MB (116026783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b22d2c9adcfa8a7ffd5955f440a8fed6e9956c19ad037100d4ea9785b350e4`  
		Last Modified: Sat, 17 Nov 2018 07:11:31 GMT  
		Size: 57.5 MB (57523153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:181c65c7576f50cc4e39c4b9245184d8d243d4948f25a6d42710ef8864129717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:e70631af6cfac6b20a87046a11f2b75d07c09327b45d1870d38a1a0598071f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488433595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e489418a434842c66866fb39d83c2b1bbc42a8d95eb9c77c6b2806da322a2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:46:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da29fa0cc90a2252fc87034635333cd36ec45737836a589bdb403abcee529885`  
		Last Modified: Sat, 29 Dec 2018 01:22:54 GMT  
		Size: 103.7 MB (103733412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:82c1b8b1c478671bdfacff96dbffbf650a7985c01028d469d24afc747765be44
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426285092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef8a7c4c5594912eda2bb470d6b8724078ae0116b74d38dd30a23674308eec33`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:46:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:48:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09018db95ffc6af27c32b5d60896419cbd60e040fbb4b5e8c77db904a7732a7`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 76.4 MB (76395573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378ec8cac3f67aab42fe980121e40e30173581b507a497739b8fd48602a57533`  
		Last Modified: Sat, 29 Dec 2018 14:13:55 GMT  
		Size: 90.1 MB (90093930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:90c863d70719998b7c3bf0fde386ed8ef4d30650bcb5148fa75c4999ec7a9568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.4 MB (451362152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d337df1b410cfb179f2d6829c965514f731eb51839bad222b51b8e5b5942bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:51:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878892e2470bc4790dc82298db5336ad0b35e0f240f87b6ae46a98b1724b455b`  
		Last Modified: Tue, 20 Nov 2018 12:48:50 GMT  
		Size: 94.1 MB (94076977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:09a994fec4bc6f015174bb510330db4a56300d38d388006be6ff4c65ccd43c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ede432e70fddd1878d59e4a0e18c3ea1eda7bdfa569cf21d30b4b08e765daeb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.7 MB (384700183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c1335c475e5b0c420a99948651ac7b12d8ac5373b73b7cdf6f4d01adaa611f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:896cdd43ce0cd92d85f0cb93b9c5b822d0e6d78b6db1a0334a467848fe6df7b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336191162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46026fc480a66fe5740f0d78eeddd09e6919a1710d285ed23786afa0f23f0bcf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:46:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09018db95ffc6af27c32b5d60896419cbd60e040fbb4b5e8c77db904a7732a7`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 76.4 MB (76395573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79375bccf0494549fed369215998175b2ba431fd8691e6fac0b31727383525ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357285175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee20ac58f060c9d119c1fabf108d4e68343698291d3b54cbb7441e5d1c6778a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:ce32ff83d11ff8b1f4ff04da38bb8712db4b0d151d07362800ae8b3df518196d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:dd88c9b17bf6fb8cf4dc23b29c11b213a5c43f38ec17b63a46eb2a817a25256f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.0 MB (495006969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9231dd560bb5b55d3bc9a5b24c1464fbf93562a767067501c01e16e5e8b7ea2f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:49:08 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:50:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:50:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:50:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:50:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:51:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9000e58abb18ea709b21b3f074c8d3ac269c3d2c60cab1db1cf46a8978fe6e`  
		Last Modified: Sat, 29 Dec 2018 01:25:15 GMT  
		Size: 251.1 MB (251127331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9264b7e775cf55e8099c1d57e10933bf3f8f0ee2f6d8d986d398209b506f3a75`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e14e9b797f3b54922a946a5a2e4bc2906d621281fbe189355ebc07a4bbb856`  
		Last Modified: Sat, 29 Dec 2018 01:25:46 GMT  
		Size: 123.1 MB (123068191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e3ca77b2bad1d835d05b62cc3b1421b6c4f840595168334d2152c48d7272f174
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.2 MB (437243503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcd1f5792ab16e8f5489989269a9a199b141f075bb5acf16f924c35354b11c7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:16:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136b4c81bea52dd4c17a8e03de70d50d5ddb35ac619b5d7e7fddfcce70156b8`  
		Last Modified: Sat, 17 Nov 2018 07:10:45 GMT  
		Size: 116.0 MB (116026783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:09a994fec4bc6f015174bb510330db4a56300d38d388006be6ff4c65ccd43c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:ede432e70fddd1878d59e4a0e18c3ea1eda7bdfa569cf21d30b4b08e765daeb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.7 MB (384700183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c1335c475e5b0c420a99948651ac7b12d8ac5373b73b7cdf6f4d01adaa611f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:45:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b832917dc5611aafcf63d284580ee036930541385699910416b379471801f257`  
		Last Modified: Sat, 29 Dec 2018 01:22:23 GMT  
		Size: 85.6 MB (85617629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:896cdd43ce0cd92d85f0cb93b9c5b822d0e6d78b6db1a0334a467848fe6df7b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336191162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46026fc480a66fe5740f0d78eeddd09e6919a1710d285ed23786afa0f23f0bcf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:46:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09018db95ffc6af27c32b5d60896419cbd60e040fbb4b5e8c77db904a7732a7`  
		Last Modified: Sat, 29 Dec 2018 14:13:18 GMT  
		Size: 76.4 MB (76395573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79375bccf0494549fed369215998175b2ba431fd8691e6fac0b31727383525ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357285175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee20ac58f060c9d119c1fabf108d4e68343698291d3b54cbb7441e5d1c6778a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:7690fc45e04f1a5f3624b6c9263d69b26dc201d0dac9b4597e3479968c5fbd15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:f8a52d6ba6249018fb026351650d239317026b7af7b4c92269e4d7cf5ff4781d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299082554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1f37eade028802774ff4bd90674c6ca181475e2150926c8cc2442d7d745ea8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:c187a9258825b5d040f052e5675f2337adb40407ad5731111ea183a604a2739d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259795589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94a92c4e715c71bd57f2bf5fa3dd35b12d8602a89fb97607620ab8551a1d94c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4350bc075d9d5ecfeadc8076208ea08a998f8349f71eea19442a07397a108d8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62ed66d8597176fc4f8e6b2e46616bd09a0714794c44ac0f870e2b544c2074`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:86fc6e30c1897da8c84473cf26c7139ceaf4a869ca2717c7d14d639c05e7f1aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:f75aa1df106b3ae1ed83612cd596e255a67255f700ce66938493d8ef1db922ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.9 MB (371938778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48443a43142f65026915911a1bec2aeef9645d6045371264ed5224d3da11b0b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:49:08 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:50:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:50:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:50:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:50:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f9000e58abb18ea709b21b3f074c8d3ac269c3d2c60cab1db1cf46a8978fe6e`  
		Last Modified: Sat, 29 Dec 2018 01:25:15 GMT  
		Size: 251.1 MB (251127331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9264b7e775cf55e8099c1d57e10933bf3f8f0ee2f6d8d986d398209b506f3a75`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e392caeb2abfc75ebb71a450c821f7427a4b95750a47ee77bfaf52018f40369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321216720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c217755a7b45c1b30dcf054d45ddb58577b7c987442388598206cea8ee1fbd6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:7690fc45e04f1a5f3624b6c9263d69b26dc201d0dac9b4597e3479968c5fbd15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f8a52d6ba6249018fb026351650d239317026b7af7b4c92269e4d7cf5ff4781d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299082554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1f37eade028802774ff4bd90674c6ca181475e2150926c8cc2442d7d745ea8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:52:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:34:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:34:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:34:49 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:34:50 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:35:04 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:43:41 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 00:44:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 00:44:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 00:44:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c1b1fd0cebdb0ce925afc03e989f9c4bd78fe8930eb4cf65988513899c9e95`  
		Last Modified: Sat, 29 Dec 2018 00:14:42 GMT  
		Size: 16.7 MB (16664889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca4dc987dbca731199e6c75bb4fbed9994a3a0e72a14322e9ebdfe6ed94caaa`  
		Last Modified: Sat, 29 Dec 2018 01:17:44 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b276a584c35b72ffe6c96e3ce1748b4917ebea1859eed833b7313c043da08cd1`  
		Last Modified: Sat, 29 Dec 2018 01:17:42 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9d3717648f296e48d9168e2d78090f3b40fcacb2aa880144196f9c556b483a`  
		Last Modified: Sat, 29 Dec 2018 01:17:56 GMT  
		Size: 44.9 MB (44874703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa8263dae61d0b2cc10d3908986bb8e87a32f4a27d0be9955639a332fdcb74b3`  
		Last Modified: Sat, 29 Dec 2018 01:17:43 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f049e7483e8efca96ca9673ee6c5771d5958b5070e2a90d149d71c49824173`  
		Last Modified: Sat, 29 Dec 2018 01:21:52 GMT  
		Size: 193.2 MB (193227688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8fa7fccbc957934141998d0ef24e6de2434f9b93aa236e21822c9d3fc5b06b6`  
		Last Modified: Sat, 29 Dec 2018 01:21:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:c187a9258825b5d040f052e5675f2337adb40407ad5731111ea183a604a2739d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259795589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d94a92c4e715c71bd57f2bf5fa3dd35b12d8602a89fb97607620ab8551a1d94c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:01:11 GMT
ADD file:a548af3995dd41a39b1a1aeac506f026837b99ca07d2c7ca3e609898da88aea3 in / 
# Sat, 29 Dec 2018 13:01:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 13:01:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 13:01:25 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:30:03 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:30:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:30:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:31:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:31:10 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:31:11 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:31:36 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:42:05 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:44:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:44:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:44:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6c1cca6d1f41fd6f196be4e59854a42e033d82850e4ef0a0c5aace708691fafb`  
		Last Modified: Fri, 21 Dec 2018 23:23:03 GMT  
		Size: 38.4 MB (38433270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a21ae303c45c24057e362fb67e5c3d1e83675e41381d79aa576a1492a77f0d66`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0e549b2071d2436bae100c44a1faabae5f7abf4152e4f2bfe0e4d4f3e505a`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d9d6cfece6fe729af1f97a8e32ed78884ae5ad4496b590f57fdbda38908c39`  
		Last Modified: Sat, 29 Dec 2018 13:02:57 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0583e45134571671a55cfca9472bea565bbf0c5c4d9a6f5fe3f91c9fe5ab97b0`  
		Last Modified: Sat, 29 Dec 2018 14:08:10 GMT  
		Size: 15.0 MB (14954818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d60cec477647e8d26ffbed595f3f71fbd7953be00c896517fa809e795530935`  
		Last Modified: Sat, 29 Dec 2018 14:08:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53db9e933c2c1a0989e5c2b5c2080bab24f734b2e9db2a9140d2d6a42f0513d`  
		Last Modified: Sat, 29 Dec 2018 14:08:03 GMT  
		Size: 5.5 KB (5545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95bd4a9e9a4f3ddc1c8ab9f3886eb697223c89894c89e61e937690a25ea32c5`  
		Last Modified: Sat, 29 Dec 2018 14:08:18 GMT  
		Size: 40.9 MB (40931540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fbbbd655c4fc1fd78d9238a683ed81d2ef63cd427b16db30152566138216f9`  
		Last Modified: Sat, 29 Dec 2018 14:08:02 GMT  
		Size: 852.0 KB (851964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c857b4c29a8592816e75f946d0cbd2307865364ec4291eef4374270b3b711330`  
		Last Modified: Sat, 29 Dec 2018 14:12:45 GMT  
		Size: 164.6 MB (164603644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd4d1922780ed061379323f5ee33f579aa37103ee10b18f77482f149fea610`  
		Last Modified: Sat, 29 Dec 2018 14:11:51 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4350bc075d9d5ecfeadc8076208ea08a998f8349f71eea19442a07397a108d8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62ed66d8597176fc4f8e6b2e46616bd09a0714794c44ac0f870e2b544c2074`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:c37caf9d117c585fba02ece350f8e53ff67b4e914d06d91424be56565584999d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:57eb32a5591a04fc3af06fcb3195e13e10298877aa9d583b0884904f3a5a1a9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.1 MB (427146832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dc63f4e0e8c7de2d91f73dcc6e794f68dbd7539d92c75bf747691ec1a9a56a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:20be999a27b6f3dd05fe3a4af4404393a66b809bf54fb82d5a5156a1f84de028
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379635228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6001afde678c6b66cb25085f5bc1f64826c1aac5c41a66d8440fde2f3c67b034`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:32bc8242214b07a5a6bb1786c2fd0ac4fc590c15cf50cb4d0f278d169f3163bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:2d4afb2ac978402bd8ac107cd33b473072945c0f7d3dd8cdba49f919fc7f9f35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.8 MB (785836231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b91845d907b0b9826a7b610c6658e98eb84bd4186fd37535affed32d1ac55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:08:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bc2f89225fd9f885ae803ddb9d5e5be3cd9905b887c02d5eb2d63e8ac4c2`  
		Last Modified: Sat, 29 Dec 2018 01:31:08 GMT  
		Size: 358.7 MB (358689399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:aceed6a2f74eba1abac1b114d8669b2da4f18fb63c624b42c1e6e2ed7654137f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.4 MB (688405516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2105be35f9535b6a3ac89db197a51c7c3d6a9e8b54db4c71d9a0da4a48606b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:04:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f546136b58390ef63442e156474a22abb1c1123f0276472e6beaeede56fd6fab`  
		Last Modified: Sat, 29 Dec 2018 14:19:58 GMT  
		Size: 308.8 MB (308770288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:066f66131e145b43ca0018ee214a274ae1e08e219d5a3b65ef7acb48efc1ec56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.8 MB (699840357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893d05a875c1e5d54b7c624585aca24f499265f831800067968269f7d403bc54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aea313e16e75fbf6ebf3c9b314914e45f58f5657c3222a6112eb639d598b7a`  
		Last Modified: Tue, 20 Nov 2018 12:57:28 GMT  
		Size: 341.6 MB (341589330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:32bc8242214b07a5a6bb1786c2fd0ac4fc590c15cf50cb4d0f278d169f3163bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:2d4afb2ac978402bd8ac107cd33b473072945c0f7d3dd8cdba49f919fc7f9f35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **785.8 MB (785836231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:925b91845d907b0b9826a7b610c6658e98eb84bd4186fd37535affed32d1ac55`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:08:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4641bc2f89225fd9f885ae803ddb9d5e5be3cd9905b887c02d5eb2d63e8ac4c2`  
		Last Modified: Sat, 29 Dec 2018 01:31:08 GMT  
		Size: 358.7 MB (358689399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:aceed6a2f74eba1abac1b114d8669b2da4f18fb63c624b42c1e6e2ed7654137f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.4 MB (688405516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2105be35f9535b6a3ac89db197a51c7c3d6a9e8b54db4c71d9a0da4a48606b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:04:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f546136b58390ef63442e156474a22abb1c1123f0276472e6beaeede56fd6fab`  
		Last Modified: Sat, 29 Dec 2018 14:19:58 GMT  
		Size: 308.8 MB (308770288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:066f66131e145b43ca0018ee214a274ae1e08e219d5a3b65ef7acb48efc1ec56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.8 MB (699840357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893d05a875c1e5d54b7c624585aca24f499265f831800067968269f7d403bc54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aea313e16e75fbf6ebf3c9b314914e45f58f5657c3222a6112eb639d598b7a`  
		Last Modified: Tue, 20 Nov 2018 12:57:28 GMT  
		Size: 341.6 MB (341589330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:15b87f5e87bf0b6b86e2babde56ae1289dfdd6f2ed8bf437a1e983d3b90fb5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:5b8fb6d3b8c523e571865692aa3b4767be98f000fa507accaca7032d8b4e1b1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.4 MB (879427985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0663167acd2e72afd8e40e34d44eb9acd49b469b88d084616d399217bcac6be2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 01:08:25 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:10:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:10:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:10:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:10:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:14:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3df96bc7b19fd692f2405fa4072f0491dab4df00b5ca0de8dbc7045290f85ad`  
		Last Modified: Sat, 29 Dec 2018 01:32:30 GMT  
		Size: 269.4 MB (269390831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd59a258931351113ffcac7d11fb2d328ccccdeb090f0093be24a9df5e700f`  
		Last Modified: Sat, 29 Dec 2018 01:31:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dd7e6b7dcbe2a7005b626b7230450d9fa843d325fd0ad3aa2bdd3c3cd34e7`  
		Last Modified: Sat, 29 Dec 2018 01:32:58 GMT  
		Size: 108.5 MB (108461056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4a3d1f4b5e6221cddbb3742d146f104af29910c4b4dd13e237c0c878b892e2`  
		Last Modified: Sat, 29 Dec 2018 01:34:45 GMT  
		Size: 380.8 MB (380764652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1ba0683a44eaac6567b80144aa40da363f8cbd49f28f42a9041792b8cd20a09f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.2 MB (796161073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb25c2245d577d87e8eed1ad0cd7ad1a68844089b5437fc3ac56285c2438a8f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:07:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f97ab40b2f0ff0bb8a3529bba7c732c2a9fd3c78fe3cdad14e0fb15a84597c9`  
		Last Modified: Sat, 17 Nov 2018 07:16:59 GMT  
		Size: 102.9 MB (102939373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e609d5deee22e0ccc6048140c08bc9abe328d30cda5275403c27a88d25b481f`  
		Last Modified: Sat, 17 Nov 2018 07:20:43 GMT  
		Size: 355.3 MB (355332922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:296127b237902ad9464fb34a0c53b9731bc42ccd14919798e4f51aab013ce900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:b095d060ab59c0aea391ec44dba5909dc228f5e2363f0483775537ee621e4b10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.7 MB (464739088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03643750b9d748f0542f79255c759e57cda43f3c54613199bd0cfa790ff03054`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:02:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e55eba41aa79822b507786288c4eb27ad21afd7b15c7def2dcee45f0ca8575`  
		Last Modified: Sat, 29 Dec 2018 01:29:27 GMT  
		Size: 37.6 MB (37592256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:9d25f4cf0cfd0f6ed6b49866c73aac48cd785ad839fb31c00fb7bc495cb7b3c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.9 MB (412859218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e34a05fd3be796c976cbb8e607541d8e7669ea8e0648d8453dfaa632e26892f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:00:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cff1df3866f8623097d7db9b3f6347c70ca9556a9962f6850aa7e5e0819fcf3`  
		Last Modified: Sat, 29 Dec 2018 14:18:08 GMT  
		Size: 33.2 MB (33223990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d74e8fe7c0b5bb18e39fe88fcef310595ceca4b694ecbae434aec536a87776a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393623946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cf187146ff4cb06c77077a3a75a26702d38bdc7ac89c601ff702a9d29c1bd4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:25:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcf67552c7847fdc01daa29f26f4b53796e56530191b326002a73a649dde503`  
		Last Modified: Tue, 20 Nov 2018 12:54:51 GMT  
		Size: 35.4 MB (35372919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:296127b237902ad9464fb34a0c53b9731bc42ccd14919798e4f51aab013ce900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:b095d060ab59c0aea391ec44dba5909dc228f5e2363f0483775537ee621e4b10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.7 MB (464739088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03643750b9d748f0542f79255c759e57cda43f3c54613199bd0cfa790ff03054`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:02:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e55eba41aa79822b507786288c4eb27ad21afd7b15c7def2dcee45f0ca8575`  
		Last Modified: Sat, 29 Dec 2018 01:29:27 GMT  
		Size: 37.6 MB (37592256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:9d25f4cf0cfd0f6ed6b49866c73aac48cd785ad839fb31c00fb7bc495cb7b3c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.9 MB (412859218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e34a05fd3be796c976cbb8e607541d8e7669ea8e0648d8453dfaa632e26892f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:00:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cff1df3866f8623097d7db9b3f6347c70ca9556a9962f6850aa7e5e0819fcf3`  
		Last Modified: Sat, 29 Dec 2018 14:18:08 GMT  
		Size: 33.2 MB (33223990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d74e8fe7c0b5bb18e39fe88fcef310595ceca4b694ecbae434aec536a87776a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393623946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cf187146ff4cb06c77077a3a75a26702d38bdc7ac89c601ff702a9d29c1bd4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:25:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcf67552c7847fdc01daa29f26f4b53796e56530191b326002a73a649dde503`  
		Last Modified: Tue, 20 Nov 2018 12:54:51 GMT  
		Size: 35.4 MB (35372919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:0164ae1bac0c1f1277e13c3ae1ff853ca44dc076adff7d49b2d27c386bd89242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:eeca7c25edbf139da1e5e39c90282e68a89b509ecbdb459b027bdc6badf23976
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.0 MB (553976885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b588451d0f4a863ba24b63c922671f82e736738017e1e2c3f15ea669252bba68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 01:08:25 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:10:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:10:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:10:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:10:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:12:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3df96bc7b19fd692f2405fa4072f0491dab4df00b5ca0de8dbc7045290f85ad`  
		Last Modified: Sat, 29 Dec 2018 01:32:30 GMT  
		Size: 269.4 MB (269390831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd59a258931351113ffcac7d11fb2d328ccccdeb090f0093be24a9df5e700f`  
		Last Modified: Sat, 29 Dec 2018 01:31:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dd7e6b7dcbe2a7005b626b7230450d9fa843d325fd0ad3aa2bdd3c3cd34e7`  
		Last Modified: Sat, 29 Dec 2018 01:32:58 GMT  
		Size: 108.5 MB (108461056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4094ece4a68f7f0f7caafb78966a14736a2c98ab38bd0bdaf1968992df56089`  
		Last Modified: Sat, 29 Dec 2018 01:33:19 GMT  
		Size: 55.3 MB (55313552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:eb039ececeaefa26ebe2447bd8669fd5a9e965137ea64fd338d905b48d1cd543
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.4 MB (493406214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7937e0cb99f35019247884eb64f6dba1e68d20ec5548c9758d583a598cc24d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:56:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f97ab40b2f0ff0bb8a3529bba7c732c2a9fd3c78fe3cdad14e0fb15a84597c9`  
		Last Modified: Sat, 17 Nov 2018 07:16:59 GMT  
		Size: 102.9 MB (102939373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d2b89f00b6ab9266d3f12e4c541ed13843cf5e8daa00af9ac127319b37dac4`  
		Last Modified: Sat, 17 Nov 2018 07:17:40 GMT  
		Size: 52.6 MB (52578063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:c37caf9d117c585fba02ece350f8e53ff67b4e914d06d91424be56565584999d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:57eb32a5591a04fc3af06fcb3195e13e10298877aa9d583b0884904f3a5a1a9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.1 MB (427146832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dc63f4e0e8c7de2d91f73dcc6e794f68dbd7539d92c75bf747691ec1a9a56a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:20be999a27b6f3dd05fe3a4af4404393a66b809bf54fb82d5a5156a1f84de028
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379635228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6001afde678c6b66cb25085f5bc1f64826c1aac5c41a66d8440fde2f3c67b034`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:c37caf9d117c585fba02ece350f8e53ff67b4e914d06d91424be56565584999d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:57eb32a5591a04fc3af06fcb3195e13e10298877aa9d583b0884904f3a5a1a9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.1 MB (427146832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88dc63f4e0e8c7de2d91f73dcc6e794f68dbd7539d92c75bf747691ec1a9a56a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:01:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75856472417cedd9f6e8d2216246229649629b39934144c5127490a3929002f5`  
		Last Modified: Sat, 29 Dec 2018 01:29:08 GMT  
		Size: 68.2 MB (68175377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:20be999a27b6f3dd05fe3a4af4404393a66b809bf54fb82d5a5156a1f84de028
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379635228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6001afde678c6b66cb25085f5bc1f64826c1aac5c41a66d8440fde2f3c67b034`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:58:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96576233ae5564720e6f32be940f8ea23e99d436f523dafb2b6592aac736ec9`  
		Last Modified: Sat, 29 Dec 2018 14:17:47 GMT  
		Size: 60.0 MB (59983550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:2d8ae91efd2a5b987b0eab7d763a6fee38142408b71ca55313b20e74e26f9e0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:d55d25eb3085a97e0042e234d99f84f4de7d69ca5c0b5da68ef070addd11bf1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.7 MB (498663333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e28847b7c03d346651341853a33a08d342cc022956532ad0859f227a59dba87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 01:08:25 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:10:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:10:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:10:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:10:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3df96bc7b19fd692f2405fa4072f0491dab4df00b5ca0de8dbc7045290f85ad`  
		Last Modified: Sat, 29 Dec 2018 01:32:30 GMT  
		Size: 269.4 MB (269390831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd59a258931351113ffcac7d11fb2d328ccccdeb090f0093be24a9df5e700f`  
		Last Modified: Sat, 29 Dec 2018 01:31:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5dd7e6b7dcbe2a7005b626b7230450d9fa843d325fd0ad3aa2bdd3c3cd34e7`  
		Last Modified: Sat, 29 Dec 2018 01:32:58 GMT  
		Size: 108.5 MB (108461056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:67a55803c6f7c201418aca6895389035dbc567d12ad947332fb89d63898032e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.8 MB (440828151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e96c8b706dc87d5fa18369b87ab31dc54f9f8c3d6f76a7724aed8c3403bab78`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f97ab40b2f0ff0bb8a3529bba7c732c2a9fd3c78fe3cdad14e0fb15a84597c9`  
		Last Modified: Sat, 17 Nov 2018 07:16:59 GMT  
		Size: 102.9 MB (102939373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:1c14f535829b34ff3150c5f6d8382ba846eba667228d3aa6e16de99a4f39a7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:4f282478eb5ac89697ca44c7a6a217fc78f3f4cebea79f234eca43d1fc64aaa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358971455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7732abc9219ecbde39789688d94bb9103d791ec84739c8c2559188b03373a61a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:6f0292f19a1ce3e2608ca0f3c47c9e2c4daa0ee0a7774cec872fabbceca7538d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.7 MB (319651678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466cc9a6d9356091c483e34f5ce9454839b029fe262f669c6b6330dc580059dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2bb58334f7604fbbed83398fa041d1212c5d9e29324a2aeaf3b8d795ab860b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294857838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c00f068091287c652f5ecd04bd533ee0a709b325f75e39cafb28c7dea82f21e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:1c14f535829b34ff3150c5f6d8382ba846eba667228d3aa6e16de99a4f39a7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:4f282478eb5ac89697ca44c7a6a217fc78f3f4cebea79f234eca43d1fc64aaa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (358971455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7732abc9219ecbde39789688d94bb9103d791ec84739c8c2559188b03373a61a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:22:55 GMT
ADD file:c0f17c7189fc11b6a1d525e9fcff842b93bfaae92e5b91cb9a76aa867792756d in / 
# Fri, 28 Dec 2018 23:22:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:22:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:22:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:22:57 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 00:03:33 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:56:03 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:56:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:57:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:57:01 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:57:14 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 00:57:14 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:00:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:00:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:00:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:00:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:84ed7d2f608f8a65d944b40132a0333069302d24e9e51a6d6b338888e8fd0a6b`  
		Last Modified: Thu, 06 Dec 2018 08:24:38 GMT  
		Size: 32.2 MB (32174695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2bf1c4a48dae92d5a1b8aa319c8767fa491316fb80da52de80378264599a16`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bdc630309340a3154f37e17c00a61c28c476107656e8d6744d2ba9af980058`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9055237d68d011bb90d49096b637b3b6c5c7251f52e0f2a2a44148aec1181dc`  
		Last Modified: Fri, 28 Dec 2018 23:25:58 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b830a6444f3dee50862a237c1ad8b2d38fc94b42c9e50af50ced1816a34f7c`  
		Last Modified: Sat, 29 Dec 2018 00:19:51 GMT  
		Size: 833.6 KB (833569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3bc8e0e65d0d32a8da8db2bd05353e2d6689c2a1b8de666571deedd6aab49cc`  
		Last Modified: Sat, 29 Dec 2018 00:19:54 GMT  
		Size: 14.9 MB (14911415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1d9bdb0610d1a490404d7f282d331e8c32422a489ddfdc94ddac2ca762c185`  
		Last Modified: Sat, 29 Dec 2018 01:27:49 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c63524672624a8b66f859539a9d57783d3caf686d4f3b9b06fb0409acfec68a3`  
		Last Modified: Sat, 29 Dec 2018 01:27:48 GMT  
		Size: 5.4 KB (5419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21151daf3e074f3159dc5eb76898bdc0059179d9995de6cf613d5415fe67d06a`  
		Last Modified: Sat, 29 Dec 2018 01:28:04 GMT  
		Size: 49.4 MB (49408426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44571142e688ff62863213710639cf8664df47c0957014e066203665ff52f7e2`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5f0e1ff6cf885fcd339f964a05aec45bf6f9bb29dac744eb0ffddb8aab0278`  
		Last Modified: Sat, 29 Dec 2018 01:28:46 GMT  
		Size: 260.8 MB (260782869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6b62a5b03cbea64f57201aab721a3d5674820df8b2cc0da8fad8935b5022d0`  
		Last Modified: Sat, 29 Dec 2018 01:27:46 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:6f0292f19a1ce3e2608ca0f3c47c9e2c4daa0ee0a7774cec872fabbceca7538d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.7 MB (319651678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:466cc9a6d9356091c483e34f5ce9454839b029fe262f669c6b6330dc580059dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:16 GMT
ADD file:7f4c0bed225ff6ea4b43c63869d64b8f88e7fc629f48afa637611d5f60b09c67 in / 
# Sat, 29 Dec 2018 12:58:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 12:58:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 12:58:29 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 13:18:48 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:19:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:52:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 13:52:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 13:53:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:53:30 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 13:53:31 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 13:53:58 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:53:59 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 13:57:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:57:26 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:57:27 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:57:27 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d4e988f2745d6790927f2ec71c746975a8569cad2a9f87eaf6aa15f9b92f77eb`  
		Last Modified: Fri, 07 Dec 2018 23:45:27 GMT  
		Size: 27.5 MB (27502116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6152d5018f84a2cab6b9d2d238218d7143921a551cf884b1f6dfc15c18e50`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eef6192d43402ab0059c8e65c255a9cbd334dc0a1564246bdc9a0fb4c5df6472`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e79a76ad9f36001d449616d06561a01dc7350d72a94eadc8b02f12a96f6d1a0`  
		Last Modified: Sat, 29 Dec 2018 13:01:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68f4a444130ff0ee706221487c6c9181835011bca21c6db745616d2e4c4e093a`  
		Last Modified: Sat, 29 Dec 2018 13:32:45 GMT  
		Size: 833.6 KB (833603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba6d16b6273a5bedbfc2c20e6fbf506e8427924c302f79812861a08d2627242`  
		Last Modified: Sat, 29 Dec 2018 13:32:48 GMT  
		Size: 13.2 MB (13239764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29747e0c193f462af0d87f4c207e388ac504587cba36785907748a4ce871be02`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5509765eb6fda778f667c305fd5594776635fb19cafdcb61af9146cfe4f8df`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 5.4 KB (5449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd836adb2fdf635c8acf182ae2b194fedf7f14b52748859103ec984dc8ad4ac3`  
		Last Modified: Sat, 29 Dec 2018 14:16:18 GMT  
		Size: 45.0 MB (45021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d420d2ac5524185b4d53b6ca8cb97c027057ed88520388ee8b0f18af18ccc304`  
		Last Modified: Sat, 29 Dec 2018 14:16:01 GMT  
		Size: 852.0 KB (851967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f968c629576f04558cc184988a3db9f26f031ba373be3ad7bcd7776dda5d4c`  
		Last Modified: Sat, 29 Dec 2018 14:17:12 GMT  
		Size: 232.2 MB (232193985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a777e7fe8c772119577091578e27519d4d73d3923530fd1cb68627db7c64948`  
		Last Modified: Sat, 29 Dec 2018 14:16:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2bb58334f7604fbbed83398fa041d1212c5d9e29324a2aeaf3b8d795ab860b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294857838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c00f068091287c652f5ecd04bd533ee0a709b325f75e39cafb28c7dea82f21e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:406c6a3d1c687f57b99f52f17d47cd053d290030d17b3a294bb1b5545454518c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:83e09ece2a7646f2a97d193c96e11f8df0508298add8695d4c972780884fb04e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.2 MB (390202277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda2ef200fbecb064bbaad9ee4e06def4ac6d8432eb10714edd3ce26867137fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 00:48:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 00:48:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:48:52 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 00:48:53 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 00:49:08 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 01:08:25 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 01:10:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:10:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 01:10:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 01:10:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9dbd30b808800417a52844c612f887e55d4ba4e5135b6a446eef49389d8c411`  
		Last Modified: Sat, 29 Dec 2018 00:21:57 GMT  
		Size: 21.1 MB (21091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2026a0910d3c85336f2ac754871d67555438238bd2d252468caa5a001f188c`  
		Last Modified: Sat, 29 Dec 2018 01:24:22 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f6b1f044485b869afdc00aa12d422bab89494e1928073d916e260f5eac7aac`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115b555a783a42682bd3f6c9457b7af77b612e63cead2919b35e8be22157b295`  
		Last Modified: Sat, 29 Dec 2018 01:24:38 GMT  
		Size: 53.5 MB (53537845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192a1e839a86b699d1f76267da62f805d5194412d956dd7c66f7d01409472b2`  
		Last Modified: Sat, 29 Dec 2018 01:24:21 GMT  
		Size: 852.0 KB (851960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3df96bc7b19fd692f2405fa4072f0491dab4df00b5ca0de8dbc7045290f85ad`  
		Last Modified: Sat, 29 Dec 2018 01:32:30 GMT  
		Size: 269.4 MB (269390831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abd59a258931351113ffcac7d11fb2d328ccccdeb090f0093be24a9df5e700f`  
		Last Modified: Sat, 29 Dec 2018 01:31:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a58f9f1cad157d31e5be01ccee34c3ed904009da3f36cc077d032199607bed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337888778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327ab9c3de3b521a15054e72cfb228650e03e2b6fc4ce4be12d18f0e1ecb223a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
