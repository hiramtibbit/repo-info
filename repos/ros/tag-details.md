<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:ardent`](#rosardent)
-	[`ros:ardent-ros-base`](#rosardent-ros-base)
-	[`ros:ardent-ros-base-xenial`](#rosardent-ros-base-xenial)
-	[`ros:ardent-ros-core`](#rosardent-ros-core)
-	[`ros:ardent-ros-core-xenial`](#rosardent-ros-core-xenial)
-	[`ros:bouncy`](#rosbouncy)
-	[`ros:bouncy-ros-base`](#rosbouncy-ros-base)
-	[`ros:bouncy-ros-base-bionic`](#rosbouncy-ros-base-bionic)
-	[`ros:bouncy-ros-core`](#rosbouncy-ros-core)
-	[`ros:bouncy-ros-core-bionic`](#rosbouncy-ros-core-bionic)
-	[`ros:crystal`](#roscrystal)
-	[`ros:crystal-ros-base`](#roscrystal-ros-base)
-	[`ros:crystal-ros-base-bionic`](#roscrystal-ros-base-bionic)
-	[`ros:crystal-ros-core`](#roscrystal-ros-core)
-	[`ros:crystal-ros-core-bionic`](#roscrystal-ros-core-bionic)
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

## `ros:ardent`

```console
$ docker pull ros@sha256:8905c18d58ef5408a943fe3477d2213e3294060a6669d0f59e2969b93d517edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent` - linux; amd64

```console
$ docker pull ros@sha256:f77692e71dfca46f0f95ef9e56ea8aa8b702289d3709f6d053e8e6f3b6d8333e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.4 MB (338354676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb24af0387a5c10e108576ca8edb11be1741c67f982db932b7184d9f845dbcf`
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
# Tue, 08 Jan 2019 23:53:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:53:11 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:53:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:53:52 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:53:54 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:53:54 GMT
ENV ROS_DISTRO=ardent
# Tue, 08 Jan 2019 23:54:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:54:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:54:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:54:35 GMT
CMD ["bash"]
# Tue, 08 Jan 2019 23:55:47 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c9273876d86edba031ea41f617f5399ab022cb1417df13686fa1a0979c1d40d9`  
		Last Modified: Wed, 09 Jan 2019 00:01:00 GMT  
		Size: 129.2 MB (129177743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7124e5effeed230438a13d6d15a0aebefa17f115f44a7b3b0afd0311ba768`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07ad54f38214bc1b993198bd7e8473d5f6475092c7a34f54eceb4e00abd4ab`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d7e8f112be06f639f5be59c81a2fcb5b914b4699bcfde0314dbcc7eb1a1301`  
		Last Modified: Wed, 09 Jan 2019 00:00:45 GMT  
		Size: 33.8 MB (33754095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dfbcc40e1523eb462b73425b85f054e94d3931bc5fd8e6ba3cfd6e740c06a1`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 171.3 KB (171251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e422cbdd6262f634441badf1583609bb89c0b649af1233d8bf9bddb664a51541`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 113.8 KB (113789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f59dc86773ea61a441307ac34f7b2c431bf80474207013d34b4f4a04dc7b38c`  
		Last Modified: Wed, 09 Jan 2019 00:00:50 GMT  
		Size: 51.7 MB (51705635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fd121e62e4e83175234e7c6544cb470a31c57ca2bfa0bf73806a669fd58fa`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861db1cb1758bf767196aefe7ab1048a9541d732e962e2ee0095cfd4ceba1b48`  
		Last Modified: Wed, 09 Jan 2019 00:01:18 GMT  
		Size: 80.0 MB (79968839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:531a7213d76090cbe2fc7891ccbda90fcc36eaebccdefa7191b1c0c599ff4612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277020748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd9e2a0caf7f89c0dbf49745b55ac2f2c84714e3035b62069cbe29a7ead54b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Wed, 09 Jan 2019 11:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:45:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 11:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 11:47:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:47:40 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 11:48:00 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 11:48:06 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 11:48:06 GMT
ENV ROS_DISTRO=ardent
# Wed, 09 Jan 2019 11:52:10 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:52:11 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 11:52:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 11:52:13 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 11:57:11 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ac8eaf5ecbb73ae5ce6ad58f7087f5594940616faf2c1db50e3f923261d3e`  
		Last Modified: Wed, 09 Jan 2019 12:18:37 GMT  
		Size: 77.1 MB (77123098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc1a72b95ab25aedab65ba3cdef41e101ff4163e5492b4963c07fbf9f0117bd`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130329c0dd08cc33bd6889d3e66c29b9db3efc8b573feeffdcfdba1f36f708ca`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 5.5 KB (5523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a34fe61a71df479070983f78a68baa8f9f0107417e94559392477398b29673`  
		Last Modified: Wed, 09 Jan 2019 12:18:04 GMT  
		Size: 32.3 MB (32345704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8518df7f5c87643912a1ef8e3059147f67e94f78fc7ecf2ec1d776f7af7f297`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 171.4 KB (171403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800a14847b416daa00fee4b1600a254c35dcea2b65ba12f84353a1ab092ff77e`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 113.7 KB (113742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59717fad0918c2a376aa1ccf143539c4fcb1cdb7ba8ef53118d8d8c10ced792b`  
		Last Modified: Wed, 09 Jan 2019 12:18:19 GMT  
		Size: 50.1 MB (50094759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9b74d44a100ce8bc48dd7f9f00fb11453665af5e9149bf32fefcb4d001435c`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704f653611c39ddf37fca6b47f81ce1d5bf81a6e9bc45a1245dd6fd52fa6767b`  
		Last Modified: Wed, 09 Jan 2019 12:19:20 GMT  
		Size: 77.6 MB (77644350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-base`

```console
$ docker pull ros@sha256:8905c18d58ef5408a943fe3477d2213e3294060a6669d0f59e2969b93d517edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:f77692e71dfca46f0f95ef9e56ea8aa8b702289d3709f6d053e8e6f3b6d8333e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.4 MB (338354676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb24af0387a5c10e108576ca8edb11be1741c67f982db932b7184d9f845dbcf`
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
# Tue, 08 Jan 2019 23:53:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:53:11 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:53:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:53:52 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:53:54 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:53:54 GMT
ENV ROS_DISTRO=ardent
# Tue, 08 Jan 2019 23:54:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:54:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:54:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:54:35 GMT
CMD ["bash"]
# Tue, 08 Jan 2019 23:55:47 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c9273876d86edba031ea41f617f5399ab022cb1417df13686fa1a0979c1d40d9`  
		Last Modified: Wed, 09 Jan 2019 00:01:00 GMT  
		Size: 129.2 MB (129177743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7124e5effeed230438a13d6d15a0aebefa17f115f44a7b3b0afd0311ba768`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07ad54f38214bc1b993198bd7e8473d5f6475092c7a34f54eceb4e00abd4ab`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d7e8f112be06f639f5be59c81a2fcb5b914b4699bcfde0314dbcc7eb1a1301`  
		Last Modified: Wed, 09 Jan 2019 00:00:45 GMT  
		Size: 33.8 MB (33754095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dfbcc40e1523eb462b73425b85f054e94d3931bc5fd8e6ba3cfd6e740c06a1`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 171.3 KB (171251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e422cbdd6262f634441badf1583609bb89c0b649af1233d8bf9bddb664a51541`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 113.8 KB (113789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f59dc86773ea61a441307ac34f7b2c431bf80474207013d34b4f4a04dc7b38c`  
		Last Modified: Wed, 09 Jan 2019 00:00:50 GMT  
		Size: 51.7 MB (51705635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fd121e62e4e83175234e7c6544cb470a31c57ca2bfa0bf73806a669fd58fa`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861db1cb1758bf767196aefe7ab1048a9541d732e962e2ee0095cfd4ceba1b48`  
		Last Modified: Wed, 09 Jan 2019 00:01:18 GMT  
		Size: 80.0 MB (79968839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:531a7213d76090cbe2fc7891ccbda90fcc36eaebccdefa7191b1c0c599ff4612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277020748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd9e2a0caf7f89c0dbf49745b55ac2f2c84714e3035b62069cbe29a7ead54b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Wed, 09 Jan 2019 11:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:45:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 11:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 11:47:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:47:40 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 11:48:00 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 11:48:06 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 11:48:06 GMT
ENV ROS_DISTRO=ardent
# Wed, 09 Jan 2019 11:52:10 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:52:11 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 11:52:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 11:52:13 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 11:57:11 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ac8eaf5ecbb73ae5ce6ad58f7087f5594940616faf2c1db50e3f923261d3e`  
		Last Modified: Wed, 09 Jan 2019 12:18:37 GMT  
		Size: 77.1 MB (77123098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc1a72b95ab25aedab65ba3cdef41e101ff4163e5492b4963c07fbf9f0117bd`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130329c0dd08cc33bd6889d3e66c29b9db3efc8b573feeffdcfdba1f36f708ca`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 5.5 KB (5523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a34fe61a71df479070983f78a68baa8f9f0107417e94559392477398b29673`  
		Last Modified: Wed, 09 Jan 2019 12:18:04 GMT  
		Size: 32.3 MB (32345704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8518df7f5c87643912a1ef8e3059147f67e94f78fc7ecf2ec1d776f7af7f297`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 171.4 KB (171403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800a14847b416daa00fee4b1600a254c35dcea2b65ba12f84353a1ab092ff77e`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 113.7 KB (113742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59717fad0918c2a376aa1ccf143539c4fcb1cdb7ba8ef53118d8d8c10ced792b`  
		Last Modified: Wed, 09 Jan 2019 12:18:19 GMT  
		Size: 50.1 MB (50094759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9b74d44a100ce8bc48dd7f9f00fb11453665af5e9149bf32fefcb4d001435c`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704f653611c39ddf37fca6b47f81ce1d5bf81a6e9bc45a1245dd6fd52fa6767b`  
		Last Modified: Wed, 09 Jan 2019 12:19:20 GMT  
		Size: 77.6 MB (77644350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-base-xenial`

```console
$ docker pull ros@sha256:8905c18d58ef5408a943fe3477d2213e3294060a6669d0f59e2969b93d517edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f77692e71dfca46f0f95ef9e56ea8aa8b702289d3709f6d053e8e6f3b6d8333e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.4 MB (338354676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb24af0387a5c10e108576ca8edb11be1741c67f982db932b7184d9f845dbcf`
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
# Tue, 08 Jan 2019 23:53:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:53:11 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:53:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:53:52 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:53:54 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:53:54 GMT
ENV ROS_DISTRO=ardent
# Tue, 08 Jan 2019 23:54:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:54:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:54:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:54:35 GMT
CMD ["bash"]
# Tue, 08 Jan 2019 23:55:47 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c9273876d86edba031ea41f617f5399ab022cb1417df13686fa1a0979c1d40d9`  
		Last Modified: Wed, 09 Jan 2019 00:01:00 GMT  
		Size: 129.2 MB (129177743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7124e5effeed230438a13d6d15a0aebefa17f115f44a7b3b0afd0311ba768`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07ad54f38214bc1b993198bd7e8473d5f6475092c7a34f54eceb4e00abd4ab`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d7e8f112be06f639f5be59c81a2fcb5b914b4699bcfde0314dbcc7eb1a1301`  
		Last Modified: Wed, 09 Jan 2019 00:00:45 GMT  
		Size: 33.8 MB (33754095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dfbcc40e1523eb462b73425b85f054e94d3931bc5fd8e6ba3cfd6e740c06a1`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 171.3 KB (171251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e422cbdd6262f634441badf1583609bb89c0b649af1233d8bf9bddb664a51541`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 113.8 KB (113789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f59dc86773ea61a441307ac34f7b2c431bf80474207013d34b4f4a04dc7b38c`  
		Last Modified: Wed, 09 Jan 2019 00:00:50 GMT  
		Size: 51.7 MB (51705635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fd121e62e4e83175234e7c6544cb470a31c57ca2bfa0bf73806a669fd58fa`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861db1cb1758bf767196aefe7ab1048a9541d732e962e2ee0095cfd4ceba1b48`  
		Last Modified: Wed, 09 Jan 2019 00:01:18 GMT  
		Size: 80.0 MB (79968839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:531a7213d76090cbe2fc7891ccbda90fcc36eaebccdefa7191b1c0c599ff4612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (277020748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd9e2a0caf7f89c0dbf49745b55ac2f2c84714e3035b62069cbe29a7ead54b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Wed, 09 Jan 2019 11:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:45:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 11:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 11:47:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:47:40 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 11:48:00 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 11:48:06 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 11:48:06 GMT
ENV ROS_DISTRO=ardent
# Wed, 09 Jan 2019 11:52:10 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:52:11 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 11:52:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 11:52:13 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 11:57:11 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ac8eaf5ecbb73ae5ce6ad58f7087f5594940616faf2c1db50e3f923261d3e`  
		Last Modified: Wed, 09 Jan 2019 12:18:37 GMT  
		Size: 77.1 MB (77123098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc1a72b95ab25aedab65ba3cdef41e101ff4163e5492b4963c07fbf9f0117bd`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130329c0dd08cc33bd6889d3e66c29b9db3efc8b573feeffdcfdba1f36f708ca`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 5.5 KB (5523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a34fe61a71df479070983f78a68baa8f9f0107417e94559392477398b29673`  
		Last Modified: Wed, 09 Jan 2019 12:18:04 GMT  
		Size: 32.3 MB (32345704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8518df7f5c87643912a1ef8e3059147f67e94f78fc7ecf2ec1d776f7af7f297`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 171.4 KB (171403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800a14847b416daa00fee4b1600a254c35dcea2b65ba12f84353a1ab092ff77e`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 113.7 KB (113742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59717fad0918c2a376aa1ccf143539c4fcb1cdb7ba8ef53118d8d8c10ced792b`  
		Last Modified: Wed, 09 Jan 2019 12:18:19 GMT  
		Size: 50.1 MB (50094759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9b74d44a100ce8bc48dd7f9f00fb11453665af5e9149bf32fefcb4d001435c`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704f653611c39ddf37fca6b47f81ce1d5bf81a6e9bc45a1245dd6fd52fa6767b`  
		Last Modified: Wed, 09 Jan 2019 12:19:20 GMT  
		Size: 77.6 MB (77644350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-core`

```console
$ docker pull ros@sha256:c57a11a094f417bd34a3fb06966ec488b74daf1b3d31cd3c37a2616ca8482256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:743834a7ccba2f1395c9f6c62a45591766b6971924add7e556912f43b079d046
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258385837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0889b6e1d9e1aff56fd019422ada8a93f3c2e30a005c4fa7629600c35d56a8f5`
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
# Tue, 08 Jan 2019 23:53:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:53:11 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:53:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:53:52 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:53:54 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:53:54 GMT
ENV ROS_DISTRO=ardent
# Tue, 08 Jan 2019 23:54:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:54:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:54:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:54:35 GMT
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
	-	`sha256:c9273876d86edba031ea41f617f5399ab022cb1417df13686fa1a0979c1d40d9`  
		Last Modified: Wed, 09 Jan 2019 00:01:00 GMT  
		Size: 129.2 MB (129177743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7124e5effeed230438a13d6d15a0aebefa17f115f44a7b3b0afd0311ba768`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07ad54f38214bc1b993198bd7e8473d5f6475092c7a34f54eceb4e00abd4ab`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d7e8f112be06f639f5be59c81a2fcb5b914b4699bcfde0314dbcc7eb1a1301`  
		Last Modified: Wed, 09 Jan 2019 00:00:45 GMT  
		Size: 33.8 MB (33754095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dfbcc40e1523eb462b73425b85f054e94d3931bc5fd8e6ba3cfd6e740c06a1`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 171.3 KB (171251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e422cbdd6262f634441badf1583609bb89c0b649af1233d8bf9bddb664a51541`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 113.8 KB (113789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f59dc86773ea61a441307ac34f7b2c431bf80474207013d34b4f4a04dc7b38c`  
		Last Modified: Wed, 09 Jan 2019 00:00:50 GMT  
		Size: 51.7 MB (51705635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fd121e62e4e83175234e7c6544cb470a31c57ca2bfa0bf73806a669fd58fa`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a994440a3e96e954db147a225e6d9d15109e8e2f60dd49120a3027cf98c92267
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199376398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d24efaa0def3c51c5f2c622d7d9ad50dbba8787c61d91f09c0ab3717ecc4a1f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Wed, 09 Jan 2019 11:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:45:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 11:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 11:47:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:47:40 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 11:48:00 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 11:48:06 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 11:48:06 GMT
ENV ROS_DISTRO=ardent
# Wed, 09 Jan 2019 11:52:10 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:52:11 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 11:52:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 11:52:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ac8eaf5ecbb73ae5ce6ad58f7087f5594940616faf2c1db50e3f923261d3e`  
		Last Modified: Wed, 09 Jan 2019 12:18:37 GMT  
		Size: 77.1 MB (77123098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc1a72b95ab25aedab65ba3cdef41e101ff4163e5492b4963c07fbf9f0117bd`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130329c0dd08cc33bd6889d3e66c29b9db3efc8b573feeffdcfdba1f36f708ca`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 5.5 KB (5523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a34fe61a71df479070983f78a68baa8f9f0107417e94559392477398b29673`  
		Last Modified: Wed, 09 Jan 2019 12:18:04 GMT  
		Size: 32.3 MB (32345704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8518df7f5c87643912a1ef8e3059147f67e94f78fc7ecf2ec1d776f7af7f297`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 171.4 KB (171403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800a14847b416daa00fee4b1600a254c35dcea2b65ba12f84353a1ab092ff77e`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 113.7 KB (113742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59717fad0918c2a376aa1ccf143539c4fcb1cdb7ba8ef53118d8d8c10ced792b`  
		Last Modified: Wed, 09 Jan 2019 12:18:19 GMT  
		Size: 50.1 MB (50094759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9b74d44a100ce8bc48dd7f9f00fb11453665af5e9149bf32fefcb4d001435c`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-core-xenial`

```console
$ docker pull ros@sha256:c57a11a094f417bd34a3fb06966ec488b74daf1b3d31cd3c37a2616ca8482256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:743834a7ccba2f1395c9f6c62a45591766b6971924add7e556912f43b079d046
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 MB (258385837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0889b6e1d9e1aff56fd019422ada8a93f3c2e30a005c4fa7629600c35d56a8f5`
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
# Tue, 08 Jan 2019 23:53:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:53:11 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:53:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:53:48 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:53:52 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:53:54 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:53:54 GMT
ENV ROS_DISTRO=ardent
# Tue, 08 Jan 2019 23:54:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:54:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:54:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:54:35 GMT
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
	-	`sha256:c9273876d86edba031ea41f617f5399ab022cb1417df13686fa1a0979c1d40d9`  
		Last Modified: Wed, 09 Jan 2019 00:01:00 GMT  
		Size: 129.2 MB (129177743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f7124e5effeed230438a13d6d15a0aebefa17f115f44a7b3b0afd0311ba768`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f07ad54f38214bc1b993198bd7e8473d5f6475092c7a34f54eceb4e00abd4ab`  
		Last Modified: Wed, 09 Jan 2019 00:00:38 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d7e8f112be06f639f5be59c81a2fcb5b914b4699bcfde0314dbcc7eb1a1301`  
		Last Modified: Wed, 09 Jan 2019 00:00:45 GMT  
		Size: 33.8 MB (33754095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dfbcc40e1523eb462b73425b85f054e94d3931bc5fd8e6ba3cfd6e740c06a1`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 171.3 KB (171251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e422cbdd6262f634441badf1583609bb89c0b649af1233d8bf9bddb664a51541`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 113.8 KB (113789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f59dc86773ea61a441307ac34f7b2c431bf80474207013d34b4f4a04dc7b38c`  
		Last Modified: Wed, 09 Jan 2019 00:00:50 GMT  
		Size: 51.7 MB (51705635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54fd121e62e4e83175234e7c6544cb470a31c57ca2bfa0bf73806a669fd58fa`  
		Last Modified: Wed, 09 Jan 2019 00:00:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a994440a3e96e954db147a225e6d9d15109e8e2f60dd49120a3027cf98c92267
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199376398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d24efaa0def3c51c5f2c622d7d9ad50dbba8787c61d91f09c0ab3717ecc4a1f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Wed, 09 Jan 2019 11:35:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:45:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 11:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 11:47:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:47:40 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 11:47:41 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 11:48:00 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 11:48:06 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 11:48:06 GMT
ENV ROS_DISTRO=ardent
# Wed, 09 Jan 2019 11:52:10 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:52:11 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 11:52:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 11:52:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16ac8eaf5ecbb73ae5ce6ad58f7087f5594940616faf2c1db50e3f923261d3e`  
		Last Modified: Wed, 09 Jan 2019 12:18:37 GMT  
		Size: 77.1 MB (77123098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc1a72b95ab25aedab65ba3cdef41e101ff4163e5492b4963c07fbf9f0117bd`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 13.1 KB (13087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130329c0dd08cc33bd6889d3e66c29b9db3efc8b573feeffdcfdba1f36f708ca`  
		Last Modified: Wed, 09 Jan 2019 12:17:47 GMT  
		Size: 5.5 KB (5523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a34fe61a71df479070983f78a68baa8f9f0107417e94559392477398b29673`  
		Last Modified: Wed, 09 Jan 2019 12:18:04 GMT  
		Size: 32.3 MB (32345704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8518df7f5c87643912a1ef8e3059147f67e94f78fc7ecf2ec1d776f7af7f297`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 171.4 KB (171403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800a14847b416daa00fee4b1600a254c35dcea2b65ba12f84353a1ab092ff77e`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 113.7 KB (113742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59717fad0918c2a376aa1ccf143539c4fcb1cdb7ba8ef53118d8d8c10ced792b`  
		Last Modified: Wed, 09 Jan 2019 12:18:19 GMT  
		Size: 50.1 MB (50094759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9b74d44a100ce8bc48dd7f9f00fb11453665af5e9149bf32fefcb4d001435c`  
		Last Modified: Wed, 09 Jan 2019 12:17:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy`

```console
$ docker pull ros@sha256:ca7a5860186a81df482297dc21812d57259d7a61b63522fb35cfdcedfade2268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:4ce210fdb75b4ebe528d1dfe39fb27f54fbbed09b5c3adf1c9e53273f8819f12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273879935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213f3f29d27568787635795f7d8781dea8f8f0712e8efb4e87024e124a6a2f3e`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:58:17 GMT
ENV ROS_DISTRO=bouncy
# Tue, 08 Jan 2019 23:59:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:07 GMT
CMD ["bash"]
# Tue, 08 Jan 2019 23:59:22 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67883f08092cced233679201faf26eeefb5fd01699b89d136c94cf466530a316`  
		Last Modified: Wed, 09 Jan 2019 00:01:38 GMT  
		Size: 47.6 MB (47647696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11292c36a4bd0bd4c47acbd9fdbdfc1cfdb8f9106a09d9c3cb224878ed42360`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdedc4699cdd25420a598d1df4acfc3fe2d98bb724b9226d59447d30b7f8b36`  
		Last Modified: Wed, 09 Jan 2019 00:01:59 GMT  
		Size: 3.1 MB (3134183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1ac4de9f9e660a15d5fb1032c47d4398edd83925dd8ff4b0aa4e79ecc9d7636
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204195701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a988331af55e312f81f3124265e44465cd9eab06f503c86d45294e092fa224c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:05:32 GMT
ENV ROS_DISTRO=bouncy
# Wed, 09 Jan 2019 12:09:26 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:09:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:09:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:09:29 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 12:10:19 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b348f42e4f376d6a9678af2145217d76dd57363474150e83348437c5927a6`  
		Last Modified: Wed, 09 Jan 2019 12:19:52 GMT  
		Size: 37.6 MB (37647405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069add936b53ac9286179f62c0a64737df35f98c0cba498c0034408b40a85d81`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6184aebaf5f11306ad778ef8c4bc7332ac97af1985a9dff2b385e2fd30cdc83a`  
		Last Modified: Wed, 09 Jan 2019 12:20:25 GMT  
		Size: 2.9 MB (2891726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:ca7a5860186a81df482297dc21812d57259d7a61b63522fb35cfdcedfade2268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4ce210fdb75b4ebe528d1dfe39fb27f54fbbed09b5c3adf1c9e53273f8819f12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273879935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213f3f29d27568787635795f7d8781dea8f8f0712e8efb4e87024e124a6a2f3e`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:58:17 GMT
ENV ROS_DISTRO=bouncy
# Tue, 08 Jan 2019 23:59:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:07 GMT
CMD ["bash"]
# Tue, 08 Jan 2019 23:59:22 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67883f08092cced233679201faf26eeefb5fd01699b89d136c94cf466530a316`  
		Last Modified: Wed, 09 Jan 2019 00:01:38 GMT  
		Size: 47.6 MB (47647696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11292c36a4bd0bd4c47acbd9fdbdfc1cfdb8f9106a09d9c3cb224878ed42360`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdedc4699cdd25420a598d1df4acfc3fe2d98bb724b9226d59447d30b7f8b36`  
		Last Modified: Wed, 09 Jan 2019 00:01:59 GMT  
		Size: 3.1 MB (3134183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1ac4de9f9e660a15d5fb1032c47d4398edd83925dd8ff4b0aa4e79ecc9d7636
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204195701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a988331af55e312f81f3124265e44465cd9eab06f503c86d45294e092fa224c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:05:32 GMT
ENV ROS_DISTRO=bouncy
# Wed, 09 Jan 2019 12:09:26 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:09:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:09:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:09:29 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 12:10:19 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b348f42e4f376d6a9678af2145217d76dd57363474150e83348437c5927a6`  
		Last Modified: Wed, 09 Jan 2019 12:19:52 GMT  
		Size: 37.6 MB (37647405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069add936b53ac9286179f62c0a64737df35f98c0cba498c0034408b40a85d81`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6184aebaf5f11306ad778ef8c4bc7332ac97af1985a9dff2b385e2fd30cdc83a`  
		Last Modified: Wed, 09 Jan 2019 12:20:25 GMT  
		Size: 2.9 MB (2891726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:ca7a5860186a81df482297dc21812d57259d7a61b63522fb35cfdcedfade2268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:4ce210fdb75b4ebe528d1dfe39fb27f54fbbed09b5c3adf1c9e53273f8819f12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273879935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:213f3f29d27568787635795f7d8781dea8f8f0712e8efb4e87024e124a6a2f3e`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:58:17 GMT
ENV ROS_DISTRO=bouncy
# Tue, 08 Jan 2019 23:59:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:07 GMT
CMD ["bash"]
# Tue, 08 Jan 2019 23:59:22 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67883f08092cced233679201faf26eeefb5fd01699b89d136c94cf466530a316`  
		Last Modified: Wed, 09 Jan 2019 00:01:38 GMT  
		Size: 47.6 MB (47647696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11292c36a4bd0bd4c47acbd9fdbdfc1cfdb8f9106a09d9c3cb224878ed42360`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdedc4699cdd25420a598d1df4acfc3fe2d98bb724b9226d59447d30b7f8b36`  
		Last Modified: Wed, 09 Jan 2019 00:01:59 GMT  
		Size: 3.1 MB (3134183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1ac4de9f9e660a15d5fb1032c47d4398edd83925dd8ff4b0aa4e79ecc9d7636
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204195701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a988331af55e312f81f3124265e44465cd9eab06f503c86d45294e092fa224c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:05:32 GMT
ENV ROS_DISTRO=bouncy
# Wed, 09 Jan 2019 12:09:26 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:09:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:09:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:09:29 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 12:10:19 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b348f42e4f376d6a9678af2145217d76dd57363474150e83348437c5927a6`  
		Last Modified: Wed, 09 Jan 2019 12:19:52 GMT  
		Size: 37.6 MB (37647405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069add936b53ac9286179f62c0a64737df35f98c0cba498c0034408b40a85d81`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6184aebaf5f11306ad778ef8c4bc7332ac97af1985a9dff2b385e2fd30cdc83a`  
		Last Modified: Wed, 09 Jan 2019 12:20:25 GMT  
		Size: 2.9 MB (2891726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:c26d1ea8e85489e4e0dabafb255b1e501a252f0a9672d4804f426baa818e811f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a5cec4f39dd1b22246bd6a9f967f095d9b5fb655bb2176b840025ec6baa9a49b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270745752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e5ab2c6d38b9941ef02ba4c3b09fe78e2456e251567858e4ec838eda536609`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:58:17 GMT
ENV ROS_DISTRO=bouncy
# Tue, 08 Jan 2019 23:59:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:07 GMT
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67883f08092cced233679201faf26eeefb5fd01699b89d136c94cf466530a316`  
		Last Modified: Wed, 09 Jan 2019 00:01:38 GMT  
		Size: 47.6 MB (47647696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11292c36a4bd0bd4c47acbd9fdbdfc1cfdb8f9106a09d9c3cb224878ed42360`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:60e3dc65df96f2d03cc1004dfe7fae1ae36ee1229f990fe2fcab932e873a75a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201303975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52188331176844156879259a2a73d2b63154eccf89a283285af817d20837fd11`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:05:32 GMT
ENV ROS_DISTRO=bouncy
# Wed, 09 Jan 2019 12:09:26 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:09:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:09:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:09:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b348f42e4f376d6a9678af2145217d76dd57363474150e83348437c5927a6`  
		Last Modified: Wed, 09 Jan 2019 12:19:52 GMT  
		Size: 37.6 MB (37647405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069add936b53ac9286179f62c0a64737df35f98c0cba498c0034408b40a85d81`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:c26d1ea8e85489e4e0dabafb255b1e501a252f0a9672d4804f426baa818e811f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:a5cec4f39dd1b22246bd6a9f967f095d9b5fb655bb2176b840025ec6baa9a49b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270745752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e5ab2c6d38b9941ef02ba4c3b09fe78e2456e251567858e4ec838eda536609`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:58:17 GMT
ENV ROS_DISTRO=bouncy
# Tue, 08 Jan 2019 23:59:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:07 GMT
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67883f08092cced233679201faf26eeefb5fd01699b89d136c94cf466530a316`  
		Last Modified: Wed, 09 Jan 2019 00:01:38 GMT  
		Size: 47.6 MB (47647696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11292c36a4bd0bd4c47acbd9fdbdfc1cfdb8f9106a09d9c3cb224878ed42360`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:60e3dc65df96f2d03cc1004dfe7fae1ae36ee1229f990fe2fcab932e873a75a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201303975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52188331176844156879259a2a73d2b63154eccf89a283285af817d20837fd11`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:05:32 GMT
ENV ROS_DISTRO=bouncy
# Wed, 09 Jan 2019 12:09:26 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:09:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:09:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:09:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b348f42e4f376d6a9678af2145217d76dd57363474150e83348437c5927a6`  
		Last Modified: Wed, 09 Jan 2019 12:19:52 GMT  
		Size: 37.6 MB (37647405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069add936b53ac9286179f62c0a64737df35f98c0cba498c0034408b40a85d81`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:88e8663e85efbea8fdf88284b03154b7163aefc4456ca505ad8162b78cd6c7a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:0fc844e1df3448761bdc26e2eff3dfca451330d86b6081c1bfc122afce1dbf29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276287623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:847ec4f9bb06473597113c5db3fe5d2e05b296b9ed534980da405eadbd1f48f4`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:59:25 GMT
ENV ROS_DISTRO=crystal
# Tue, 08 Jan 2019 23:59:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:59 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 00:00:09 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00b60d6ad6cc2207a34cee5d4f96f5527014a0799175b2f1729c2deb33467c`  
		Last Modified: Wed, 09 Jan 2019 00:02:15 GMT  
		Size: 50.0 MB (50014767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0a616508b365592609d0f7f0e5e5a604fb7104fe4125f8d61a5dc08b7455bc`  
		Last Modified: Wed, 09 Jan 2019 00:02:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24a603da2efe154d1c7a56acac4b334c727502da2fbe60d311b8ab43b3baf21`  
		Last Modified: Wed, 09 Jan 2019 00:02:22 GMT  
		Size: 3.2 MB (3174800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:122e107a80bbf006b460e3b81a86409c814c9d84594e45cc00e962c0d7d0e8d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206551283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076f7929fb4dbac30bc4bf8dd6b9eba2ad8247433fa21ca66a8b927aeb41bf4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:10:30 GMT
ENV ROS_DISTRO=crystal
# Wed, 09 Jan 2019 12:15:46 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:15:48 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:15:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:15:50 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 12:16:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100040bdf0f609f90f7e95aa38bb59412c7147294a837b1ffe1dc7cb5ed99e1`  
		Last Modified: Wed, 09 Jan 2019 12:20:58 GMT  
		Size: 40.0 MB (39957376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b98a506adc3af7104bf370ca6f464214b295e18084e2780d4854ea3ce09deb3`  
		Last Modified: Wed, 09 Jan 2019 12:20:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495d97cbec0534c469fa35dabf7690fde841582f563da49f358b61300432f0d4`  
		Last Modified: Wed, 09 Jan 2019 12:21:08 GMT  
		Size: 2.9 MB (2937337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:88e8663e85efbea8fdf88284b03154b7163aefc4456ca505ad8162b78cd6c7a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:0fc844e1df3448761bdc26e2eff3dfca451330d86b6081c1bfc122afce1dbf29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276287623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:847ec4f9bb06473597113c5db3fe5d2e05b296b9ed534980da405eadbd1f48f4`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:59:25 GMT
ENV ROS_DISTRO=crystal
# Tue, 08 Jan 2019 23:59:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:59 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 00:00:09 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00b60d6ad6cc2207a34cee5d4f96f5527014a0799175b2f1729c2deb33467c`  
		Last Modified: Wed, 09 Jan 2019 00:02:15 GMT  
		Size: 50.0 MB (50014767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0a616508b365592609d0f7f0e5e5a604fb7104fe4125f8d61a5dc08b7455bc`  
		Last Modified: Wed, 09 Jan 2019 00:02:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24a603da2efe154d1c7a56acac4b334c727502da2fbe60d311b8ab43b3baf21`  
		Last Modified: Wed, 09 Jan 2019 00:02:22 GMT  
		Size: 3.2 MB (3174800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:122e107a80bbf006b460e3b81a86409c814c9d84594e45cc00e962c0d7d0e8d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206551283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076f7929fb4dbac30bc4bf8dd6b9eba2ad8247433fa21ca66a8b927aeb41bf4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:10:30 GMT
ENV ROS_DISTRO=crystal
# Wed, 09 Jan 2019 12:15:46 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:15:48 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:15:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:15:50 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 12:16:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100040bdf0f609f90f7e95aa38bb59412c7147294a837b1ffe1dc7cb5ed99e1`  
		Last Modified: Wed, 09 Jan 2019 12:20:58 GMT  
		Size: 40.0 MB (39957376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b98a506adc3af7104bf370ca6f464214b295e18084e2780d4854ea3ce09deb3`  
		Last Modified: Wed, 09 Jan 2019 12:20:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495d97cbec0534c469fa35dabf7690fde841582f563da49f358b61300432f0d4`  
		Last Modified: Wed, 09 Jan 2019 12:21:08 GMT  
		Size: 2.9 MB (2937337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:88e8663e85efbea8fdf88284b03154b7163aefc4456ca505ad8162b78cd6c7a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:0fc844e1df3448761bdc26e2eff3dfca451330d86b6081c1bfc122afce1dbf29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276287623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:847ec4f9bb06473597113c5db3fe5d2e05b296b9ed534980da405eadbd1f48f4`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:59:25 GMT
ENV ROS_DISTRO=crystal
# Tue, 08 Jan 2019 23:59:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:59 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 00:00:09 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00b60d6ad6cc2207a34cee5d4f96f5527014a0799175b2f1729c2deb33467c`  
		Last Modified: Wed, 09 Jan 2019 00:02:15 GMT  
		Size: 50.0 MB (50014767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0a616508b365592609d0f7f0e5e5a604fb7104fe4125f8d61a5dc08b7455bc`  
		Last Modified: Wed, 09 Jan 2019 00:02:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24a603da2efe154d1c7a56acac4b334c727502da2fbe60d311b8ab43b3baf21`  
		Last Modified: Wed, 09 Jan 2019 00:02:22 GMT  
		Size: 3.2 MB (3174800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:122e107a80bbf006b460e3b81a86409c814c9d84594e45cc00e962c0d7d0e8d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.6 MB (206551283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076f7929fb4dbac30bc4bf8dd6b9eba2ad8247433fa21ca66a8b927aeb41bf4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:10:30 GMT
ENV ROS_DISTRO=crystal
# Wed, 09 Jan 2019 12:15:46 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:15:48 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:15:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:15:50 GMT
CMD ["bash"]
# Wed, 09 Jan 2019 12:16:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100040bdf0f609f90f7e95aa38bb59412c7147294a837b1ffe1dc7cb5ed99e1`  
		Last Modified: Wed, 09 Jan 2019 12:20:58 GMT  
		Size: 40.0 MB (39957376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b98a506adc3af7104bf370ca6f464214b295e18084e2780d4854ea3ce09deb3`  
		Last Modified: Wed, 09 Jan 2019 12:20:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495d97cbec0534c469fa35dabf7690fde841582f563da49f358b61300432f0d4`  
		Last Modified: Wed, 09 Jan 2019 12:21:08 GMT  
		Size: 2.9 MB (2937337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:7ca4072e3b6b721c4e2f8a8c7a7f20440f9ae48ee3dff187e7b582479877fc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:12301c3c60621e19fd1f7082f99ea32a39ef752a52aeb08d07c142b39e681508
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273112823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2b548bf72566a040312c416032552c8a25ada2d248f8f46c4db354c6bb2ee4`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:59:25 GMT
ENV ROS_DISTRO=crystal
# Tue, 08 Jan 2019 23:59:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:59 GMT
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00b60d6ad6cc2207a34cee5d4f96f5527014a0799175b2f1729c2deb33467c`  
		Last Modified: Wed, 09 Jan 2019 00:02:15 GMT  
		Size: 50.0 MB (50014767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0a616508b365592609d0f7f0e5e5a604fb7104fe4125f8d61a5dc08b7455bc`  
		Last Modified: Wed, 09 Jan 2019 00:02:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:af243e193b7a12a00f1008b0a3a071c700c073e04f676850f6bca4f53f8c1274
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.6 MB (203613946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c397bc1663e4f00d3943915063451ef7ee202e3008f18c526f3c58955b2fc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:10:30 GMT
ENV ROS_DISTRO=crystal
# Wed, 09 Jan 2019 12:15:46 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:15:48 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:15:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:15:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100040bdf0f609f90f7e95aa38bb59412c7147294a837b1ffe1dc7cb5ed99e1`  
		Last Modified: Wed, 09 Jan 2019 12:20:58 GMT  
		Size: 40.0 MB (39957376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b98a506adc3af7104bf370ca6f464214b295e18084e2780d4854ea3ce09deb3`  
		Last Modified: Wed, 09 Jan 2019 12:20:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:7ca4072e3b6b721c4e2f8a8c7a7f20440f9ae48ee3dff187e7b582479877fc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:12301c3c60621e19fd1f7082f99ea32a39ef752a52aeb08d07c142b39e681508
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.1 MB (273112823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2b548bf72566a040312c416032552c8a25ada2d248f8f46c4db354c6bb2ee4`
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
# Tue, 08 Jan 2019 23:57:31 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:57:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 08 Jan 2019 23:57:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 08 Jan 2019 23:58:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV LC_ALL=C.UTF-8
# Tue, 08 Jan 2019 23:58:11 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Tue, 08 Jan 2019 23:58:15 GMT
RUN rosdep init     && rosdep update
# Tue, 08 Jan 2019 23:58:17 GMT
RUN pip3 install -U     argcomplete
# Tue, 08 Jan 2019 23:59:25 GMT
ENV ROS_DISTRO=crystal
# Tue, 08 Jan 2019 23:59:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:59:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 08 Jan 2019 23:59:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 08 Jan 2019 23:59:59 GMT
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
	-	`sha256:d82a3883f99e5068e52fd0e48ea35422ec73465d4f031570add6e54a38825e61`  
		Last Modified: Wed, 09 Jan 2019 00:01:53 GMT  
		Size: 151.6 MB (151594081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396efe10183d5590f2e69cf714d55b65ace2ee97907870ecb61a99da8902d496`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a37866d4a9c4261e7da8cf61a80ff6b782f232679b1cb5fab2c6dc7f5c6c08d`  
		Last Modified: Wed, 09 Jan 2019 00:01:25 GMT  
		Size: 5.4 KB (5426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:375d66c53ac55d5ff98be29a6e8d233f36ec3d3c3e7d0d9543f6f8398b6d2d90`  
		Last Modified: Wed, 09 Jan 2019 00:01:34 GMT  
		Size: 38.2 MB (38227560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5eb84f884f914596c7fe3024c54c6b08b947bc2dd5c1c6ae9243cb7d37d600`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 165.8 KB (165759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f8f47af107aed0955ac17aa1fb8f4dd31d37de9e3efa3b20ea5377a35a36d1`  
		Last Modified: Wed, 09 Jan 2019 00:01:24 GMT  
		Size: 93.9 KB (93860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a00b60d6ad6cc2207a34cee5d4f96f5527014a0799175b2f1729c2deb33467c`  
		Last Modified: Wed, 09 Jan 2019 00:02:15 GMT  
		Size: 50.0 MB (50014767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0a616508b365592609d0f7f0e5e5a604fb7104fe4125f8d61a5dc08b7455bc`  
		Last Modified: Wed, 09 Jan 2019 00:02:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:af243e193b7a12a00f1008b0a3a071c700c073e04f676850f6bca4f53f8c1274
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.6 MB (203613946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c397bc1663e4f00d3943915063451ef7ee202e3008f18c526f3c58955b2fc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:02:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 09 Jan 2019 12:02:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 09 Jan 2019 12:05:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:05:06 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 12:05:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 09 Jan 2019 12:05:08 GMT
ENV ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/ros2/rosdistro/ros2/index.yaml
# Wed, 09 Jan 2019 12:05:25 GMT
RUN rosdep init     && rosdep update
# Wed, 09 Jan 2019 12:05:31 GMT
RUN pip3 install -U     argcomplete
# Wed, 09 Jan 2019 12:10:30 GMT
ENV ROS_DISTRO=crystal
# Wed, 09 Jan 2019 12:15:46 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:15:48 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 09 Jan 2019 12:15:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 09 Jan 2019 12:15:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bf0f1671b2062ecae6c80cb7ef868a3bd4b43cdee3c265a05cc1840641940b`  
		Last Modified: Wed, 09 Jan 2019 12:20:15 GMT  
		Size: 97.0 MB (97007835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16853b231bacc1de4f918b2d082d0a36f722cbbf38312fb4d4ed051299d2f603`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e4eedd0ced794b8fb5685e4c9b584735028ad6e23988b2bd81b6b26072fed2c`  
		Last Modified: Wed, 09 Jan 2019 12:19:33 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e369da6887210f116a5d26fb6311997ac9f5b96c8b9a595bd86b3b7e3a8ec7`  
		Last Modified: Wed, 09 Jan 2019 12:19:48 GMT  
		Size: 36.6 MB (36604915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947e771958e08cb3ad983c79a249e12b1ae18909fdb58388738eb985d545aabd`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 165.8 KB (165784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74219f549025f5bf8ca570c0489f29e1f81f047e34336f55530415ddcf3d5810`  
		Last Modified: Wed, 09 Jan 2019 12:19:31 GMT  
		Size: 93.9 KB (93871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0100040bdf0f609f90f7e95aa38bb59412c7147294a837b1ffe1dc7cb5ed99e1`  
		Last Modified: Wed, 09 Jan 2019 12:20:58 GMT  
		Size: 40.0 MB (39957376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b98a506adc3af7104bf370ca6f464214b295e18084e2780d4854ea3ce09deb3`  
		Last Modified: Wed, 09 Jan 2019 12:20:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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
$ docker pull ros@sha256:a25765fca89fa2e769b5bda1d96c94ed5dbba92dc7227793bf2054273f05103a
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
$ docker pull ros@sha256:4562783b0a9237922d9d2267d3f2b0bc7ee43f3b7485484c3b4b91ab6c185871
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.1 MB (350070073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f8ff4ee497d7a22fea36d1384340a84c5d2d20308f1ece1350c75ccb41cb8fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95334222412315e4452115ec681790356023b890e8c731957de6fdff1919d2d1`  
		Last Modified: Sat, 29 Dec 2018 15:58:07 GMT  
		Size: 78.0 MB (77964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:63e829619d1521e17fe8768ae95be2abb5b314fe4628cc232148b7276d6aad5a
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
$ docker pull ros@sha256:fa4110bb5c677952e16a02637efeab7ff606d5918e560308793e284864b90f52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.3 MB (641311911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c633f4430bc236065236f57815a330c80b24cbef251998f44b07625c2621bea4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:13:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95334222412315e4452115ec681790356023b890e8c731957de6fdff1919d2d1`  
		Last Modified: Sat, 29 Dec 2018 15:58:07 GMT  
		Size: 78.0 MB (77964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce57b34bf9c6b78bf053046f5d073b1970953d62941bcf31e8dbb50996202488`  
		Last Modified: Sat, 29 Dec 2018 16:01:41 GMT  
		Size: 291.2 MB (291241838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:63e829619d1521e17fe8768ae95be2abb5b314fe4628cc232148b7276d6aad5a
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
$ docker pull ros@sha256:fa4110bb5c677952e16a02637efeab7ff606d5918e560308793e284864b90f52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.3 MB (641311911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c633f4430bc236065236f57815a330c80b24cbef251998f44b07625c2621bea4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:13:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95334222412315e4452115ec681790356023b890e8c731957de6fdff1919d2d1`  
		Last Modified: Sat, 29 Dec 2018 15:58:07 GMT  
		Size: 78.0 MB (77964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce57b34bf9c6b78bf053046f5d073b1970953d62941bcf31e8dbb50996202488`  
		Last Modified: Sat, 29 Dec 2018 16:01:41 GMT  
		Size: 291.2 MB (291241838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:ff1addbab9b874f629436a0d945cd7502c75df36c235d9c51e5fae9f72930917
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
$ docker pull ros@sha256:9a0aa38774cf8eb390e3c99c27f2b8297686541e3beddeb9b98af451aa4f7a74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (443971129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9858f66c4ca77b837356af15ceedda879b8544d4136f866b23d01b543cb75704`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:55:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95334222412315e4452115ec681790356023b890e8c731957de6fdff1919d2d1`  
		Last Modified: Sat, 29 Dec 2018 15:58:07 GMT  
		Size: 78.0 MB (77964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d1f62dcf8d131dfe1cf63512c90c20c77e1bf206613639f254f3e0971f9b93`  
		Last Modified: Sat, 29 Dec 2018 15:59:04 GMT  
		Size: 93.9 MB (93901056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:ff1addbab9b874f629436a0d945cd7502c75df36c235d9c51e5fae9f72930917
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
$ docker pull ros@sha256:9a0aa38774cf8eb390e3c99c27f2b8297686541e3beddeb9b98af451aa4f7a74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (443971129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9858f66c4ca77b837356af15ceedda879b8544d4136f866b23d01b543cb75704`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:55:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95334222412315e4452115ec681790356023b890e8c731957de6fdff1919d2d1`  
		Last Modified: Sat, 29 Dec 2018 15:58:07 GMT  
		Size: 78.0 MB (77964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d1f62dcf8d131dfe1cf63512c90c20c77e1bf206613639f254f3e0971f9b93`  
		Last Modified: Sat, 29 Dec 2018 15:59:04 GMT  
		Size: 93.9 MB (93901056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:a25765fca89fa2e769b5bda1d96c94ed5dbba92dc7227793bf2054273f05103a
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
$ docker pull ros@sha256:4562783b0a9237922d9d2267d3f2b0bc7ee43f3b7485484c3b4b91ab6c185871
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.1 MB (350070073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f8ff4ee497d7a22fea36d1384340a84c5d2d20308f1ece1350c75ccb41cb8fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95334222412315e4452115ec681790356023b890e8c731957de6fdff1919d2d1`  
		Last Modified: Sat, 29 Dec 2018 15:58:07 GMT  
		Size: 78.0 MB (77964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:a25765fca89fa2e769b5bda1d96c94ed5dbba92dc7227793bf2054273f05103a
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
$ docker pull ros@sha256:4562783b0a9237922d9d2267d3f2b0bc7ee43f3b7485484c3b4b91ab6c185871
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.1 MB (350070073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f8ff4ee497d7a22fea36d1384340a84c5d2d20308f1ece1350c75ccb41cb8fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:46:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95334222412315e4452115ec681790356023b890e8c731957de6fdff1919d2d1`  
		Last Modified: Sat, 29 Dec 2018 15:58:07 GMT  
		Size: 78.0 MB (77964025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:7dc35965351e3afde4909b5aaf4c9d97d805d8b1d419586faec97c27e8d92ac8
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
$ docker pull ros@sha256:5a03bae9c4f331963865b0bb9ff7564ac3afa1ab282703bc54480dab9bd42bee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272106048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15275d9e9a30417fc01bc70e8562cb9fc501d8cadddba6a7b21be3bfb9d35a6c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:7dc35965351e3afde4909b5aaf4c9d97d805d8b1d419586faec97c27e8d92ac8
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
$ docker pull ros@sha256:5a03bae9c4f331963865b0bb9ff7564ac3afa1ab282703bc54480dab9bd42bee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272106048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15275d9e9a30417fc01bc70e8562cb9fc501d8cadddba6a7b21be3bfb9d35a6c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 12:23:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 29 Dec 2018 12:38:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:38:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 12:38:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 12:38:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d58df14a0dbdd1098df1c3836ab549e367b75ca9d02854cd2c6ed9743f18b`  
		Last Modified: Sat, 29 Dec 2018 15:57:18 GMT  
		Size: 173.9 MB (173869261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33f8372ff68affe3950e2d4090a810f5a019be2e3f690a24ca6a3111f427f20`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:ec14452fc4a52f9e0ad276eda1ea5091d1c70211b06b9c7f9191cb1e68825ee8
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
$ docker pull ros@sha256:8695887fd7b4eaee939534275485992d1e97b75a3b484cdf5008821f06d73aa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358324463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b057108d663803957d3f88ea8a87e51f68907ccbf1860e5c55c8002e19daf904`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:f4615c1572e85310c39ee3b35f3835e47707c294e584775b46557b32bde5bd42
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
$ docker pull ros@sha256:285211ae7a1250db735c5e0a30a820241c0b56aed9e3c89b18d062e3ea2116e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349985768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e22d11df666a6d0ae46a15c567e096b35c7b96b2f5bd1d27f5772e085c884f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:33:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acad141ceec1cfc0f03f4c0f7b259b5d6a81a151f45302bae9652decb9e9649`  
		Last Modified: Sat, 29 Dec 2018 16:05:38 GMT  
		Size: 77.9 MB (77888215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:0fa24f0d07b4bdf45ff413802782d98b0458b4f75cb2633b652ac02eae8cf82e
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
$ docker pull ros@sha256:5d004dc4c3418f230552d916de65dd1e263c41ebee1bc1897c1f84b1dc130840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 MB (639990039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f131a43534b3dec4a07b1ef8f8eb51ef3479dac964ad73f1fe6174330d1779`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:33:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acad141ceec1cfc0f03f4c0f7b259b5d6a81a151f45302bae9652decb9e9649`  
		Last Modified: Sat, 29 Dec 2018 16:05:38 GMT  
		Size: 77.9 MB (77888215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f45b8ba8f928de5aa0217b791df43075b98ea187d58461f911a436ba77d767`  
		Last Modified: Sat, 29 Dec 2018 16:11:46 GMT  
		Size: 290.0 MB (290004271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:da22f6cd64ba0822eb6246393cf3aadd01d8855b2743a8446521b50c796577d6
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
$ docker pull ros@sha256:eca769ca17319862f3b98b63612364f98108006b7ffbf6e7fb08e3972edb39e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.7 MB (816676294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d0d1ab5a3c1715241be5c72b566e83d236aaf18604cdc79df4071f50862e8ee`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:08:04 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 14:21:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:21:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 14:21:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:27:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6436b7237a980c1e737bd71436755837154e465d8157fb8464eaefa78fcb2c`  
		Last Modified: Sat, 29 Dec 2018 16:14:10 GMT  
		Size: 206.0 MB (206040541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530ffa8ae1fa2e3be00cd37282134d5ca1941bb7e14f97bc9f3e959f3f028806`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b230a3bb1d493c73c2464c05c25bde3bb95e09c4bd21a91949188d69a4b611d8`  
		Last Modified: Sat, 29 Dec 2018 16:15:18 GMT  
		Size: 116.9 MB (116873615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d859fd9d52c48e2d0b7463f087880aa94a2d5b2011f948bd162ad5d7ccf8f89`  
		Last Modified: Sat, 29 Dec 2018 16:20:59 GMT  
		Size: 378.5 MB (378548852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:0fa24f0d07b4bdf45ff413802782d98b0458b4f75cb2633b652ac02eae8cf82e
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
$ docker pull ros@sha256:5d004dc4c3418f230552d916de65dd1e263c41ebee1bc1897c1f84b1dc130840
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 MB (639990039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f131a43534b3dec4a07b1ef8f8eb51ef3479dac964ad73f1fe6174330d1779`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:33:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:02:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acad141ceec1cfc0f03f4c0f7b259b5d6a81a151f45302bae9652decb9e9649`  
		Last Modified: Sat, 29 Dec 2018 16:05:38 GMT  
		Size: 77.9 MB (77888215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f45b8ba8f928de5aa0217b791df43075b98ea187d58461f911a436ba77d767`  
		Last Modified: Sat, 29 Dec 2018 16:11:46 GMT  
		Size: 290.0 MB (290004271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:a87ee6fec9d4e697fbf998e0a252c5ef04f96db9e593644d9af35f81dfd06d5b
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
$ docker pull ros@sha256:25f797e175183822fd8f457d74319393b160a39eebf4e59d7fcc426a8cd69fe7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (443988571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc84e6f421e72e488f21e3c73124a172564018820e1f75862b4f3ebc9765b4f0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:33:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acad141ceec1cfc0f03f4c0f7b259b5d6a81a151f45302bae9652decb9e9649`  
		Last Modified: Sat, 29 Dec 2018 16:05:38 GMT  
		Size: 77.9 MB (77888215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a82ef8a4687e7324dd4be805b449a90f0b85ac5e21a7ee5c57bc48deaf1612`  
		Last Modified: Sat, 29 Dec 2018 16:06:46 GMT  
		Size: 94.0 MB (94002803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:175182b0cbcebf0d76eafa7d03674f183f23f9892cd77a1496b7decb303ecdcb
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
$ docker pull ros@sha256:e41b6eadec328b083d645dab615e1f14dc7580a39158e1fa6cf1dbe2e733b7b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.7 MB (495651516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138e38a2beb7d38c40cb06f47894356bddaaa2c3d1a13a912df3df268aa3c513`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:08:04 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 14:21:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:21:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 14:21:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:27:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:30:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6436b7237a980c1e737bd71436755837154e465d8157fb8464eaefa78fcb2c`  
		Last Modified: Sat, 29 Dec 2018 16:14:10 GMT  
		Size: 206.0 MB (206040541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530ffa8ae1fa2e3be00cd37282134d5ca1941bb7e14f97bc9f3e959f3f028806`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b230a3bb1d493c73c2464c05c25bde3bb95e09c4bd21a91949188d69a4b611d8`  
		Last Modified: Sat, 29 Dec 2018 16:15:18 GMT  
		Size: 116.9 MB (116873615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5669a72f49fd7c417d3b68fda5a0f7b41840d1c39413f5be46f2e41748598b0a`  
		Last Modified: Sat, 29 Dec 2018 16:15:56 GMT  
		Size: 57.5 MB (57524074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:a87ee6fec9d4e697fbf998e0a252c5ef04f96db9e593644d9af35f81dfd06d5b
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
$ docker pull ros@sha256:25f797e175183822fd8f457d74319393b160a39eebf4e59d7fcc426a8cd69fe7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (443988571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc84e6f421e72e488f21e3c73124a172564018820e1f75862b4f3ebc9765b4f0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:33:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acad141ceec1cfc0f03f4c0f7b259b5d6a81a151f45302bae9652decb9e9649`  
		Last Modified: Sat, 29 Dec 2018 16:05:38 GMT  
		Size: 77.9 MB (77888215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a82ef8a4687e7324dd4be805b449a90f0b85ac5e21a7ee5c57bc48deaf1612`  
		Last Modified: Sat, 29 Dec 2018 16:06:46 GMT  
		Size: 94.0 MB (94002803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:f4615c1572e85310c39ee3b35f3835e47707c294e584775b46557b32bde5bd42
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
$ docker pull ros@sha256:285211ae7a1250db735c5e0a30a820241c0b56aed9e3c89b18d062e3ea2116e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349985768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e22d11df666a6d0ae46a15c567e096b35c7b96b2f5bd1d27f5772e085c884f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:33:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acad141ceec1cfc0f03f4c0f7b259b5d6a81a151f45302bae9652decb9e9649`  
		Last Modified: Sat, 29 Dec 2018 16:05:38 GMT  
		Size: 77.9 MB (77888215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:2918d7ff74006432eea7a8ebe6d3968ce12644c8293e5c8108519491348692d3
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
$ docker pull ros@sha256:0a21a4486e9eb07caeb7a2b7cff616947bac9cfa81c13c2ce6e5539942999658
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438127442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f78be321ec5295c57773120d25dedba5757a85e1b8ef7714e0dce374a4c08a46`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:08:04 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 14:21:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:21:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 14:21:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:27:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6436b7237a980c1e737bd71436755837154e465d8157fb8464eaefa78fcb2c`  
		Last Modified: Sat, 29 Dec 2018 16:14:10 GMT  
		Size: 206.0 MB (206040541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530ffa8ae1fa2e3be00cd37282134d5ca1941bb7e14f97bc9f3e959f3f028806`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b230a3bb1d493c73c2464c05c25bde3bb95e09c4bd21a91949188d69a4b611d8`  
		Last Modified: Sat, 29 Dec 2018 16:15:18 GMT  
		Size: 116.9 MB (116873615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:f4615c1572e85310c39ee3b35f3835e47707c294e584775b46557b32bde5bd42
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
$ docker pull ros@sha256:285211ae7a1250db735c5e0a30a820241c0b56aed9e3c89b18d062e3ea2116e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349985768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e22d11df666a6d0ae46a15c567e096b35c7b96b2f5bd1d27f5772e085c884f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:33:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acad141ceec1cfc0f03f4c0f7b259b5d6a81a151f45302bae9652decb9e9649`  
		Last Modified: Sat, 29 Dec 2018 16:05:38 GMT  
		Size: 77.9 MB (77888215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:c9b4eedf90410a4aebc82f96ced530b78ee66435f0ab5a2d8cbce1af64212ea2
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
$ docker pull ros@sha256:5ce1742f0235d8e6799a3b7e20773bc22bb14e85541a1bc8d7717569d44543c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272097553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22956e2f8fda76b0d0f01b4d719ed8c0d246dff8bef9618de01939c0232a52aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:121555cab820a44f4f4f0ee320faac5fa15515717e8d4c0f934770628e0f4f6d
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
$ docker pull ros@sha256:3afbbee1dd140035284130276be135dd953ee2c205f91e72b71163763bd7283d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.3 MB (321253827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adcf3f4f5a5ab68e7e4e7968767ef998125bea1d0470b1b4734fbd1ad0b58a8e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:08:04 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 14:21:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:21:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 14:21:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6436b7237a980c1e737bd71436755837154e465d8157fb8464eaefa78fcb2c`  
		Last Modified: Sat, 29 Dec 2018 16:14:10 GMT  
		Size: 206.0 MB (206040541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530ffa8ae1fa2e3be00cd37282134d5ca1941bb7e14f97bc9f3e959f3f028806`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:c9b4eedf90410a4aebc82f96ced530b78ee66435f0ab5a2d8cbce1af64212ea2
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
$ docker pull ros@sha256:5ce1742f0235d8e6799a3b7e20773bc22bb14e85541a1bc8d7717569d44543c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272097553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22956e2f8fda76b0d0f01b4d719ed8c0d246dff8bef9618de01939c0232a52aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:13:02 GMT
ADD file:036257248a15ec7106cd0e6fba0f9475d77a0d4b8e31a396737ed9ca4c100f12 in / 
# Sat, 29 Dec 2018 10:13:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:13:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:13:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:13:09 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 12:19:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 12:20:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 12:22:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:22:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:22:42 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 12:23:27 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 13:14:21 GMT
ENV ROS_DISTRO=lunar
# Sat, 29 Dec 2018 13:25:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:25:35 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 13:25:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 13:25:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e10919c546c28d8a8c8c44475b76a37bfedf17e31643d49ee9fa25a5c16005f7`  
		Last Modified: Fri, 21 Dec 2018 23:11:28 GMT  
		Size: 39.5 MB (39507394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3f0a4d7b10ceda8b44d3a31b481a004f9a0f5f969f8bef03cdc1a07de6498e`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:473e207e8cf0baa97b8ecc6ece8e9aaf5fa82528f07a23dcb346db8ae2306238`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deecc1ceca24413e3c79e611c8ddfe78239b447ab29b5ce389b8b931fdc53ce`  
		Last Modified: Sat, 29 Dec 2018 10:15:13 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5b90faf0d453ccb3f2d5bf05c48cc219130e4667a80aa302a57a531f41162e`  
		Last Modified: Sat, 29 Dec 2018 15:55:28 GMT  
		Size: 15.1 MB (15051253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7501afab1e0f0dd517b5fb1931d9f29f5c032f34fafa484901e7db1514fe721`  
		Last Modified: Sat, 29 Dec 2018 15:54:46 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efe985ace30e9432d6f946cc6aa6fe97f6c2ba0165527512c85e6a7cbea94f6`  
		Last Modified: Sat, 29 Dec 2018 15:54:43 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b619b282c11adf0a090bf61b9355a2dd0615f0be09737416ebed094739a167`  
		Last Modified: Sat, 29 Dec 2018 15:56:13 GMT  
		Size: 42.8 MB (42805901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da2115e575d94a466cf9c67b2cc5bbef88e2af4ca58a49c8752f29cf31826b1`  
		Last Modified: Sat, 29 Dec 2018 15:54:45 GMT  
		Size: 852.0 KB (851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b90ece5208da26f4935830ec5ebb633fae65e926ff8e8feaafb5f3950f718f`  
		Last Modified: Sat, 29 Dec 2018 16:04:11 GMT  
		Size: 173.9 MB (173860766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d227363418e91ab6593c21b3100becda039633d99ee3aa25f171991308280e`  
		Last Modified: Sat, 29 Dec 2018 16:01:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:ec14452fc4a52f9e0ad276eda1ea5091d1c70211b06b9c7f9191cb1e68825ee8
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
$ docker pull ros@sha256:8695887fd7b4eaee939534275485992d1e97b75a3b484cdf5008821f06d73aa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358324463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b057108d663803957d3f88ea8a87e51f68907ccbf1860e5c55c8002e19daf904`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:ae69dec2f69889fd43e3e82b86f4bd3a29a816414454fb5c56bb69bb96ecfaa4
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
$ docker pull ros@sha256:3bb7518905d741a5e088dac297b68c38596a16552c5300334852aa7632568f0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.7 MB (699653724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4ce5934aba28cc847726148db30ff11ef97560c253b32b8cc1ea9b4ca94f25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:21:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de9f9087a6e311e7a460c8167e5589549e2392c12622485e42a04c3aef061ca`  
		Last Modified: Sat, 29 Dec 2018 16:28:17 GMT  
		Size: 341.3 MB (341329261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:ae69dec2f69889fd43e3e82b86f4bd3a29a816414454fb5c56bb69bb96ecfaa4
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
$ docker pull ros@sha256:3bb7518905d741a5e088dac297b68c38596a16552c5300334852aa7632568f0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.7 MB (699653724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4ce5934aba28cc847726148db30ff11ef97560c253b32b8cc1ea9b4ca94f25`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:21:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8de9f9087a6e311e7a460c8167e5589549e2392c12622485e42a04c3aef061ca`  
		Last Modified: Sat, 29 Dec 2018 16:28:17 GMT  
		Size: 341.3 MB (341329261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:b1ab9fbc34e7c83a9a61bd059b61260008545d400e8799b5ab01e9833e2589f1
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
$ docker pull ros@sha256:21f1dc1e9df930292bf733d026f6c9aab76434fb12c172343e626d16295a58b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.1 MB (797059985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bfba42c662e20547852bf65f43c50434aab2a1b3a8f011fa1275bad0a2a2051`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 15:22:19 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:31:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:31:12 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:31:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:31:13 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:34:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:53:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c9cd9f445b613a93f857acd70bd062827d6891da0432194fe7d575049edf32`  
		Last Modified: Sat, 29 Dec 2018 16:31:42 GMT  
		Size: 223.6 MB (223579740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c189e922586ec4f9949edaba6811af53cd7fa6289536987ec4d3dcd7d2df635`  
		Last Modified: Sat, 29 Dec 2018 16:28:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b060d7b36f50df2ca9f71c032cd3b2b4dd288c2cc08a07e5d583b0b35c32fd52`  
		Last Modified: Sat, 29 Dec 2018 16:34:15 GMT  
		Size: 102.9 MB (102937727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0083294a8bc6ea28b4a8867dceec655e20f5922ae918d18dd3a90ee450675f`  
		Last Modified: Sat, 29 Dec 2018 16:47:09 GMT  
		Size: 355.3 MB (355329233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:571055e1e80a54559189979ce38ed3f07d71c7a3e7384fc69e7a57d7b047a0fc
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
$ docker pull ros@sha256:4d0f42a19e8f6e8f06cd52e07109676a2c284236e9e52503bb61918c8c94fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.7 MB (393698567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2f4cf870bbdd4270a93874699587ffbca90e3ac903a1b6edb7316ebf30d42b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:06:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acba234aadee8342d6614abc58af65504bd552bffef9bdf0565b1089a1a9bb8a`  
		Last Modified: Sat, 29 Dec 2018 16:25:33 GMT  
		Size: 35.4 MB (35374104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:571055e1e80a54559189979ce38ed3f07d71c7a3e7384fc69e7a57d7b047a0fc
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
$ docker pull ros@sha256:4d0f42a19e8f6e8f06cd52e07109676a2c284236e9e52503bb61918c8c94fd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.7 MB (393698567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2f4cf870bbdd4270a93874699587ffbca90e3ac903a1b6edb7316ebf30d42b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:06:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acba234aadee8342d6614abc58af65504bd552bffef9bdf0565b1089a1a9bb8a`  
		Last Modified: Sat, 29 Dec 2018 16:25:33 GMT  
		Size: 35.4 MB (35374104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:eb333de6d6ca338927c1df62682fcfb3450c548fe335bb1802c7a5c5be960bcb
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
$ docker pull ros@sha256:67f664caccd9e094efd49c79cff2884b9a9df1e831e8f11ad3071671d7498187
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.3 MB (494310488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb96809fe45e229cc373b7f758a8a8ac626a044b6c49dab61e8b703b1cd8724b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 15:22:19 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:31:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:31:12 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:31:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:31:13 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:34:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:37:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c9cd9f445b613a93f857acd70bd062827d6891da0432194fe7d575049edf32`  
		Last Modified: Sat, 29 Dec 2018 16:31:42 GMT  
		Size: 223.6 MB (223579740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c189e922586ec4f9949edaba6811af53cd7fa6289536987ec4d3dcd7d2df635`  
		Last Modified: Sat, 29 Dec 2018 16:28:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b060d7b36f50df2ca9f71c032cd3b2b4dd288c2cc08a07e5d583b0b35c32fd52`  
		Last Modified: Sat, 29 Dec 2018 16:34:15 GMT  
		Size: 102.9 MB (102937727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaab1ee60a6deff03de3dbce9eec5d5af20e97286e9bcd8c32e90864eec71bd0`  
		Last Modified: Sat, 29 Dec 2018 16:36:02 GMT  
		Size: 52.6 MB (52579736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:ec14452fc4a52f9e0ad276eda1ea5091d1c70211b06b9c7f9191cb1e68825ee8
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
$ docker pull ros@sha256:8695887fd7b4eaee939534275485992d1e97b75a3b484cdf5008821f06d73aa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358324463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b057108d663803957d3f88ea8a87e51f68907ccbf1860e5c55c8002e19daf904`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:ec14452fc4a52f9e0ad276eda1ea5091d1c70211b06b9c7f9191cb1e68825ee8
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
$ docker pull ros@sha256:8695887fd7b4eaee939534275485992d1e97b75a3b484cdf5008821f06d73aa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358324463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b057108d663803957d3f88ea8a87e51f68907ccbf1860e5c55c8002e19daf904`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:04:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82e77c5c1738e69aa8df63bf3b6d07082d6796d84216173ac1f0319f0b83c2a`  
		Last Modified: Sat, 29 Dec 2018 16:24:59 GMT  
		Size: 63.4 MB (63391559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:93979004d1bb9cbdd1b45407f05ad522762c4ad32cc5d4b0fbd76819a3ee3c34
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
$ docker pull ros@sha256:727f9a314bfbc698662aaa569343859f405f164cb178529d4a6566b4182f3edc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.7 MB (441730752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05995e29f818cb67bb381dbc93954bd090d2c3d859206ba068c933f1b0136624`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 15:22:19 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:31:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:31:12 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:31:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:31:13 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:34:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c9cd9f445b613a93f857acd70bd062827d6891da0432194fe7d575049edf32`  
		Last Modified: Sat, 29 Dec 2018 16:31:42 GMT  
		Size: 223.6 MB (223579740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c189e922586ec4f9949edaba6811af53cd7fa6289536987ec4d3dcd7d2df635`  
		Last Modified: Sat, 29 Dec 2018 16:28:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b060d7b36f50df2ca9f71c032cd3b2b4dd288c2cc08a07e5d583b0b35c32fd52`  
		Last Modified: Sat, 29 Dec 2018 16:34:15 GMT  
		Size: 102.9 MB (102937727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:cd604a70d3f5df3201a7103338fb3082cf6fe36f1a792498d420bedab7146ea5
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
$ docker pull ros@sha256:02ffef7e5bda6250eb46b42eb3ba2debcd8557de38f5b3315dc12b2000294403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294932904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a88363948bfdb02f5e6f12fdb13f4be29ad10390c8d4afba7b00c3b333f003c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:cd604a70d3f5df3201a7103338fb3082cf6fe36f1a792498d420bedab7146ea5
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
$ docker pull ros@sha256:02ffef7e5bda6250eb46b42eb3ba2debcd8557de38f5b3315dc12b2000294403
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294932904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a88363948bfdb02f5e6f12fdb13f4be29ad10390c8d4afba7b00c3b333f003c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:10:02 GMT
ADD file:afc5edd7ca04112762b95f27d248d0332cf6a91c59d905995515f35caf9b3d8b in / 
# Sat, 29 Dec 2018 10:10:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 29 Dec 2018 10:10:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:10:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 29 Dec 2018 10:10:27 GMT
CMD ["/bin/bash"]
# Sat, 29 Dec 2018 10:57:49 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:58:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:46:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:46:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:48:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:48:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:48:52 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:49:37 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 14:49:38 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:00:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:00:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:00:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:00:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df1ba8568c1c37591ee9da550c96037520aa40640e4d811ea4a9ff448180b921`  
		Last Modified: Fri, 07 Dec 2018 23:46:22 GMT  
		Size: 28.9 MB (28942366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2f986b8a2715a54b27ed07fedc48acb6e87810ca9a1ab7b501b10c0ab4ae6b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ccfecef86fe20c786d8cd1e358bd0ac7e8d3eb5a1e9d8adc5f942376d3f35d`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1595dd5aa204fc90df29a0011cd42441562b947a9f99136fb1122d75f67220b`  
		Last Modified: Sat, 29 Dec 2018 10:13:31 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b8d31b05e6a68b51fd6f2264014d735e33f5f6a580aa826433f497c0e23dc80`  
		Last Modified: Sat, 29 Dec 2018 12:00:07 GMT  
		Size: 833.3 KB (833276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199c3958fc0eb315a2b2e75c7401a8ce6980c3b9c082ab4ac8a9ce425da2cf41`  
		Last Modified: Sat, 29 Dec 2018 12:00:36 GMT  
		Size: 13.8 MB (13840318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c803aafabcf7c1fc1fbc38c42dc340687c7821bc9d837839fa8cf1ce3e028cf`  
		Last Modified: Sat, 29 Dec 2018 16:21:13 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3996f6b2a725d8a848154cec1bc1403095c7dbf239ceeaeb4246b00f2b156039`  
		Last Modified: Sat, 29 Dec 2018 16:21:10 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c378e89a540cf362420ba6bca9241a5befa7023c17008ed305b0f89a2fcfbf35`  
		Last Modified: Sat, 29 Dec 2018 16:22:53 GMT  
		Size: 47.6 MB (47610329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa5890e1ccd2e0877aacca1e0e66efb4259bf83e54f4ccd3f6a6ed2cf933b41`  
		Last Modified: Sat, 29 Dec 2018 16:21:09 GMT  
		Size: 852.0 KB (851955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b318470b071c5b5dcb0ecc27382796aa291c3ea409dec1bb4b08e8425eb93`  
		Last Modified: Sat, 29 Dec 2018 16:24:16 GMT  
		Size: 202.8 MB (202846144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9011bdefb4060cf1fbc27197ab09488a9cdc02c100713dbe046a664b98c7a16`  
		Last Modified: Sat, 29 Dec 2018 16:21:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:43f14e9eeec3703f48c20991c60d4ba77c690a87803a9890dcea824f6d8cc3dd
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
$ docker pull ros@sha256:aac89a4a2c925c4f5cbfebfc4a0cddc9a51130167d370b818d5f95fd391a61dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338793025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0bfebeb028f39e35d619efa509e0211c0fea0871770939b238be1435ec75921`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:30:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:03:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 29 Dec 2018 14:03:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 29 Dec 2018 14:07:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:07:08 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:07:10 GMT
ENV LC_ALL=C.UTF-8
# Sat, 29 Dec 2018 14:08:02 GMT
RUN rosdep init     && rosdep update
# Sat, 29 Dec 2018 15:22:19 GMT
ENV ROS_DISTRO=melodic
# Sat, 29 Dec 2018 15:31:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:31:12 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 29 Dec 2018 15:31:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 29 Dec 2018 15:31:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1d1944f1d21b0c58e7ecc4e7f9f25e36a085797ae60e4aabc5344d7a3cbc71`  
		Last Modified: Sat, 29 Dec 2018 12:03:44 GMT  
		Size: 19.7 MB (19745752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6586dcb29ec8af9d07f3c4670b9a7496e2b3bc5f6ea163e31a93b97a1e0fc05d`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f37e4a9ba06f80d84be393ddb829946e19740c760f06d8909f1fb992a278e5b`  
		Last Modified: Sat, 29 Dec 2018 16:11:59 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22020bff8641d9bb568aaea39e2ec8b9999c05ff30dbca83b0d22bf7709cbd7`  
		Last Modified: Sat, 29 Dec 2018 16:12:40 GMT  
		Size: 51.5 MB (51492551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69bcd6f637863ef42b5aedab288b1b03f4e37ec76b1219d130824a02ca4d3dc4`  
		Last Modified: Sat, 29 Dec 2018 16:12:01 GMT  
		Size: 852.0 KB (851954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c9cd9f445b613a93f857acd70bd062827d6891da0432194fe7d575049edf32`  
		Last Modified: Sat, 29 Dec 2018 16:31:42 GMT  
		Size: 223.6 MB (223579740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c189e922586ec4f9949edaba6811af53cd7fa6289536987ec4d3dcd7d2df635`  
		Last Modified: Sat, 29 Dec 2018 16:28:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
