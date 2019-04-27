<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

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

## `ros:bouncy`

```console
$ docker pull ros@sha256:163406e94aea2794e3fd8dc26094d5ba0a6782702792c85c61fff2a9ac485239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:6ea0e79abcc69520b4243f736cedcd8e51f6735f1b52ee20a77d15cb6b2e88ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279392235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734fc3c95ba274136d3a9ed486868f1ffa5714237957a5bb09ce8040d17f252d`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:06:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 00:06:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:06:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:06:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:06:36 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 00:06:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b552fd23def93efa07e36ba485ee91f7628008d72633efb21e0ae8b0e010756f`  
		Last Modified: Sat, 27 Apr 2019 00:22:11 GMT  
		Size: 47.6 MB (47648075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c776999bacb7ecd949ff8b95b29282f607527d848e05a1674f5738bb09cc1e7`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40810d3fa60428bac1298f3b90651f8db33244171c7ab8f758da0485ba16d81`  
		Last Modified: Sat, 27 Apr 2019 00:22:30 GMT  
		Size: 3.1 MB (3134672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:89053e5539cf807a5cec6500583a06ad9347368b5cdcce3b1669bb8443c41992
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209076178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711f8a5e86ce3d7dfb24bf699e25ae938f2776707575f6d83d5f41576aaba886`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:48:57 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 12:52:18 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:52:19 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:52:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:52:20 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:08 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2a051cfd1ba5ee694cb33a10ec9ed04b40c702f83d16a00c7500b5cf9e8e6c`  
		Last Modified: Sat, 27 Apr 2019 13:46:59 GMT  
		Size: 37.6 MB (37646669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75ff5d4960b9a8f864473852282e0dc277a6c6e090d252d7b7936b573884be3`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd357b36ca17607f4676a39cfbc52aca16cd02c0686e06507ce85371cc165c9c`  
		Last Modified: Sat, 27 Apr 2019 13:47:32 GMT  
		Size: 2.9 MB (2892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:163406e94aea2794e3fd8dc26094d5ba0a6782702792c85c61fff2a9ac485239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6ea0e79abcc69520b4243f736cedcd8e51f6735f1b52ee20a77d15cb6b2e88ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279392235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734fc3c95ba274136d3a9ed486868f1ffa5714237957a5bb09ce8040d17f252d`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:06:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 00:06:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:06:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:06:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:06:36 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 00:06:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b552fd23def93efa07e36ba485ee91f7628008d72633efb21e0ae8b0e010756f`  
		Last Modified: Sat, 27 Apr 2019 00:22:11 GMT  
		Size: 47.6 MB (47648075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c776999bacb7ecd949ff8b95b29282f607527d848e05a1674f5738bb09cc1e7`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40810d3fa60428bac1298f3b90651f8db33244171c7ab8f758da0485ba16d81`  
		Last Modified: Sat, 27 Apr 2019 00:22:30 GMT  
		Size: 3.1 MB (3134672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:89053e5539cf807a5cec6500583a06ad9347368b5cdcce3b1669bb8443c41992
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209076178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711f8a5e86ce3d7dfb24bf699e25ae938f2776707575f6d83d5f41576aaba886`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:48:57 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 12:52:18 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:52:19 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:52:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:52:20 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:08 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2a051cfd1ba5ee694cb33a10ec9ed04b40c702f83d16a00c7500b5cf9e8e6c`  
		Last Modified: Sat, 27 Apr 2019 13:46:59 GMT  
		Size: 37.6 MB (37646669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75ff5d4960b9a8f864473852282e0dc277a6c6e090d252d7b7936b573884be3`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd357b36ca17607f4676a39cfbc52aca16cd02c0686e06507ce85371cc165c9c`  
		Last Modified: Sat, 27 Apr 2019 13:47:32 GMT  
		Size: 2.9 MB (2892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:163406e94aea2794e3fd8dc26094d5ba0a6782702792c85c61fff2a9ac485239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:6ea0e79abcc69520b4243f736cedcd8e51f6735f1b52ee20a77d15cb6b2e88ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279392235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734fc3c95ba274136d3a9ed486868f1ffa5714237957a5bb09ce8040d17f252d`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:06:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 00:06:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:06:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:06:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:06:36 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 00:06:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b552fd23def93efa07e36ba485ee91f7628008d72633efb21e0ae8b0e010756f`  
		Last Modified: Sat, 27 Apr 2019 00:22:11 GMT  
		Size: 47.6 MB (47648075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c776999bacb7ecd949ff8b95b29282f607527d848e05a1674f5738bb09cc1e7`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40810d3fa60428bac1298f3b90651f8db33244171c7ab8f758da0485ba16d81`  
		Last Modified: Sat, 27 Apr 2019 00:22:30 GMT  
		Size: 3.1 MB (3134672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:89053e5539cf807a5cec6500583a06ad9347368b5cdcce3b1669bb8443c41992
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.1 MB (209076178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711f8a5e86ce3d7dfb24bf699e25ae938f2776707575f6d83d5f41576aaba886`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:48:57 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 12:52:18 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:52:19 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:52:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:52:20 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:08 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2a051cfd1ba5ee694cb33a10ec9ed04b40c702f83d16a00c7500b5cf9e8e6c`  
		Last Modified: Sat, 27 Apr 2019 13:46:59 GMT  
		Size: 37.6 MB (37646669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75ff5d4960b9a8f864473852282e0dc277a6c6e090d252d7b7936b573884be3`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd357b36ca17607f4676a39cfbc52aca16cd02c0686e06507ce85371cc165c9c`  
		Last Modified: Sat, 27 Apr 2019 13:47:32 GMT  
		Size: 2.9 MB (2892642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:8a08b6d44ed1864b2fa046749fa71bd4b399e281affaa750550471a20319370f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:97ecec6138d8d8266428c24de70141e3528abd4d1123a2ad3dd46b81007e5a5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276257563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fe4e169c0eceab8e8186f82b6b5738e1268ee4f8325ce73c6d1bf5e7c6dd84`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:06:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 00:06:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:06:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:06:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:06:36 GMT
CMD ["bash"]
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b552fd23def93efa07e36ba485ee91f7628008d72633efb21e0ae8b0e010756f`  
		Last Modified: Sat, 27 Apr 2019 00:22:11 GMT  
		Size: 47.6 MB (47648075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c776999bacb7ecd949ff8b95b29282f607527d848e05a1674f5738bb09cc1e7`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c0121a6bba2769a4d152618bffcc193d87990274ab8ef52a016a9b2df9c5c48b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206183536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d146191277382a5f6aff83b946e8984f6bd1e3c5e28d2b34acc71fe7e2e1a732`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:48:57 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 12:52:18 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:52:19 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:52:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:52:20 GMT
CMD ["bash"]
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2a051cfd1ba5ee694cb33a10ec9ed04b40c702f83d16a00c7500b5cf9e8e6c`  
		Last Modified: Sat, 27 Apr 2019 13:46:59 GMT  
		Size: 37.6 MB (37646669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75ff5d4960b9a8f864473852282e0dc277a6c6e090d252d7b7936b573884be3`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:8a08b6d44ed1864b2fa046749fa71bd4b399e281affaa750550471a20319370f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:97ecec6138d8d8266428c24de70141e3528abd4d1123a2ad3dd46b81007e5a5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276257563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fe4e169c0eceab8e8186f82b6b5738e1268ee4f8325ce73c6d1bf5e7c6dd84`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:06:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 00:06:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:06:35 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:06:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:06:36 GMT
CMD ["bash"]
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b552fd23def93efa07e36ba485ee91f7628008d72633efb21e0ae8b0e010756f`  
		Last Modified: Sat, 27 Apr 2019 00:22:11 GMT  
		Size: 47.6 MB (47648075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c776999bacb7ecd949ff8b95b29282f607527d848e05a1674f5738bb09cc1e7`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c0121a6bba2769a4d152618bffcc193d87990274ab8ef52a016a9b2df9c5c48b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.2 MB (206183536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d146191277382a5f6aff83b946e8984f6bd1e3c5e28d2b34acc71fe7e2e1a732`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:48:57 GMT
ENV ROS_DISTRO=bouncy
# Sat, 27 Apr 2019 12:52:18 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:52:19 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:52:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:52:20 GMT
CMD ["bash"]
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2a051cfd1ba5ee694cb33a10ec9ed04b40c702f83d16a00c7500b5cf9e8e6c`  
		Last Modified: Sat, 27 Apr 2019 13:46:59 GMT  
		Size: 37.6 MB (37646669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c75ff5d4960b9a8f864473852282e0dc277a6c6e090d252d7b7936b573884be3`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:67e0d7529d80681dc0f41b0a28bb437eebae2b5e19799ef6ec5456b6138ae1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:3f5f3817f818fdebbff5fe7f892b519363febc5cd9f3d74cd72cee72663543ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282704454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95354d8a4a6ef3b5196e1c82be278efa754c204a6afaa650141eed60994a540b`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:07:02 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 00:07:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:07:41 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:07:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:07:41 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 00:07:54 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169f2213e618dc8c0e3a365e5516d4beab29de1e384407d571eede3bb6d33ac`  
		Last Modified: Sat, 27 Apr 2019 00:22:57 GMT  
		Size: 50.9 MB (50918275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c6efa92c5a6b7096fcbfe5ff0d1d4c8346e3d521f6e74a5869272da12338d0`  
		Last Modified: Sat, 27 Apr 2019 00:22:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea87e6b08d422cd599219c7b90dc4f97384dadaf1c27f9b85b5d8b0daadcfc7`  
		Last Modified: Sat, 27 Apr 2019 00:23:08 GMT  
		Size: 3.2 MB (3176691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7dfc5344c0c7d674649a19eb95991296611ceeb59256c9d85876af997471e996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211928099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a3a956ab3593bdc8c8b9da151155cabadbc73054b630abf1a79abd12e181c1`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:53:14 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 12:58:37 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:58:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:58:40 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:59:25 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9859bd536c014a6dfe42dfdee268f50ab3ddd6a72775b2d3bad028bb6471303`  
		Last Modified: Sat, 27 Apr 2019 13:48:09 GMT  
		Size: 40.5 MB (40451663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d0c8eba197a8a2d3ca67ed0cf6b14f6e5abe17401ba77769c0781817b668f`  
		Last Modified: Sat, 27 Apr 2019 13:47:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87c494a35c9aafe294b976e5fd2f0e58b469293a8ec41aa89ff1d3664e51d3e`  
		Last Modified: Sat, 27 Apr 2019 13:48:21 GMT  
		Size: 2.9 MB (2939567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:67e0d7529d80681dc0f41b0a28bb437eebae2b5e19799ef6ec5456b6138ae1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:3f5f3817f818fdebbff5fe7f892b519363febc5cd9f3d74cd72cee72663543ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282704454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95354d8a4a6ef3b5196e1c82be278efa754c204a6afaa650141eed60994a540b`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:07:02 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 00:07:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:07:41 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:07:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:07:41 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 00:07:54 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169f2213e618dc8c0e3a365e5516d4beab29de1e384407d571eede3bb6d33ac`  
		Last Modified: Sat, 27 Apr 2019 00:22:57 GMT  
		Size: 50.9 MB (50918275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c6efa92c5a6b7096fcbfe5ff0d1d4c8346e3d521f6e74a5869272da12338d0`  
		Last Modified: Sat, 27 Apr 2019 00:22:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea87e6b08d422cd599219c7b90dc4f97384dadaf1c27f9b85b5d8b0daadcfc7`  
		Last Modified: Sat, 27 Apr 2019 00:23:08 GMT  
		Size: 3.2 MB (3176691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7dfc5344c0c7d674649a19eb95991296611ceeb59256c9d85876af997471e996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211928099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a3a956ab3593bdc8c8b9da151155cabadbc73054b630abf1a79abd12e181c1`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:53:14 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 12:58:37 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:58:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:58:40 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:59:25 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9859bd536c014a6dfe42dfdee268f50ab3ddd6a72775b2d3bad028bb6471303`  
		Last Modified: Sat, 27 Apr 2019 13:48:09 GMT  
		Size: 40.5 MB (40451663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d0c8eba197a8a2d3ca67ed0cf6b14f6e5abe17401ba77769c0781817b668f`  
		Last Modified: Sat, 27 Apr 2019 13:47:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87c494a35c9aafe294b976e5fd2f0e58b469293a8ec41aa89ff1d3664e51d3e`  
		Last Modified: Sat, 27 Apr 2019 13:48:21 GMT  
		Size: 2.9 MB (2939567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:67e0d7529d80681dc0f41b0a28bb437eebae2b5e19799ef6ec5456b6138ae1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:3f5f3817f818fdebbff5fe7f892b519363febc5cd9f3d74cd72cee72663543ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282704454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95354d8a4a6ef3b5196e1c82be278efa754c204a6afaa650141eed60994a540b`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:07:02 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 00:07:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:07:41 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:07:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:07:41 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 00:07:54 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169f2213e618dc8c0e3a365e5516d4beab29de1e384407d571eede3bb6d33ac`  
		Last Modified: Sat, 27 Apr 2019 00:22:57 GMT  
		Size: 50.9 MB (50918275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c6efa92c5a6b7096fcbfe5ff0d1d4c8346e3d521f6e74a5869272da12338d0`  
		Last Modified: Sat, 27 Apr 2019 00:22:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea87e6b08d422cd599219c7b90dc4f97384dadaf1c27f9b85b5d8b0daadcfc7`  
		Last Modified: Sat, 27 Apr 2019 00:23:08 GMT  
		Size: 3.2 MB (3176691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7dfc5344c0c7d674649a19eb95991296611ceeb59256c9d85876af997471e996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211928099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a3a956ab3593bdc8c8b9da151155cabadbc73054b630abf1a79abd12e181c1`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:53:14 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 12:58:37 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:58:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:58:40 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:59:25 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9859bd536c014a6dfe42dfdee268f50ab3ddd6a72775b2d3bad028bb6471303`  
		Last Modified: Sat, 27 Apr 2019 13:48:09 GMT  
		Size: 40.5 MB (40451663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d0c8eba197a8a2d3ca67ed0cf6b14f6e5abe17401ba77769c0781817b668f`  
		Last Modified: Sat, 27 Apr 2019 13:47:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87c494a35c9aafe294b976e5fd2f0e58b469293a8ec41aa89ff1d3664e51d3e`  
		Last Modified: Sat, 27 Apr 2019 13:48:21 GMT  
		Size: 2.9 MB (2939567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:e3c9bd312183d566ca8c2b732dc72efcb82312e74969f57e24c0e8c07c2f69a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:b961e04e7fbf893900807df0be2a19d5dc85bacdf34f361932377be73f7b0091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279527763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dbdc664bb6ec96976b797344593fd19bc929068ee9bef24727215a0012443e`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:07:02 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 00:07:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:07:41 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:07:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:07:41 GMT
CMD ["bash"]
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169f2213e618dc8c0e3a365e5516d4beab29de1e384407d571eede3bb6d33ac`  
		Last Modified: Sat, 27 Apr 2019 00:22:57 GMT  
		Size: 50.9 MB (50918275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c6efa92c5a6b7096fcbfe5ff0d1d4c8346e3d521f6e74a5869272da12338d0`  
		Last Modified: Sat, 27 Apr 2019 00:22:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d054f8e20d25dd50365cc59a2c02b0b575fbe5c2d08f1f27dcf2feba2bfa64ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208988532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d52124bcbcd970b6e0ef0e628b8f38b8b5a415201fa7d1647463768640da376`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:53:14 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 12:58:37 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:58:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:58:40 GMT
CMD ["bash"]
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9859bd536c014a6dfe42dfdee268f50ab3ddd6a72775b2d3bad028bb6471303`  
		Last Modified: Sat, 27 Apr 2019 13:48:09 GMT  
		Size: 40.5 MB (40451663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d0c8eba197a8a2d3ca67ed0cf6b14f6e5abe17401ba77769c0781817b668f`  
		Last Modified: Sat, 27 Apr 2019 13:47:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:e3c9bd312183d566ca8c2b732dc72efcb82312e74969f57e24c0e8c07c2f69a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:b961e04e7fbf893900807df0be2a19d5dc85bacdf34f361932377be73f7b0091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279527763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02dbdc664bb6ec96976b797344593fd19bc929068ee9bef24727215a0012443e`
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
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:07:02 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 00:07:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:07:41 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:07:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:07:41 GMT
CMD ["bash"]
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
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169f2213e618dc8c0e3a365e5516d4beab29de1e384407d571eede3bb6d33ac`  
		Last Modified: Sat, 27 Apr 2019 00:22:57 GMT  
		Size: 50.9 MB (50918275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c6efa92c5a6b7096fcbfe5ff0d1d4c8346e3d521f6e74a5869272da12338d0`  
		Last Modified: Sat, 27 Apr 2019 00:22:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d054f8e20d25dd50365cc59a2c02b0b575fbe5c2d08f1f27dcf2feba2bfa64ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208988532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d52124bcbcd970b6e0ef0e628b8f38b8b5a415201fa7d1647463768640da376`
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
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:53:14 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 12:58:37 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:58:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:58:40 GMT
CMD ["bash"]
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
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9859bd536c014a6dfe42dfdee268f50ab3ddd6a72775b2d3bad028bb6471303`  
		Last Modified: Sat, 27 Apr 2019 13:48:09 GMT  
		Size: 40.5 MB (40451663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d0c8eba197a8a2d3ca67ed0cf6b14f6e5abe17401ba77769c0781817b668f`  
		Last Modified: Sat, 27 Apr 2019 13:47:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:2c805e5ca217ca21c82c90203e282cbd2e4d9afa4bb3605718943a6bd91e9bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:6148ab941342c06a41b84375884a3f8e4fc632ce3f57b2cae8f35a0928b7d9f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313667697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd0aca2bd8eee7fd170aa281c39046fc95a7a1f084f124c7a6d5fde58039dfe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:4e466c7b4fac3e4bfc4acbb125758159c1df62dfdb608d6d4cc2c9cff3a0bb77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284681876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e2c1d66b99d5bdcfd9ea1fc4b5217b76ae2751f43e879c34fd669528e6c7052`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:e8ed71bf055e0e64a0951de7ec3793036d6739baaf0baaebe797eb43088ade80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:c1df2edb69ea73fe1d50cd4c267ebef4a22e7cc5254b73d2cfd7dca369feda38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.9 MB (549926621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52041d5ee34db1fe14db00d12cd8c13030d755eb4c8c9883a7c60d607c3bf0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:20 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e8e0c644ab40b6dbfb5b94e414041e0b983f345e66e9c3acf54732dfdf5043`  
		Last Modified: Sat, 27 Apr 2019 00:10:36 GMT  
		Size: 236.3 MB (236258924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:a6508975ee5430d19fde97a3cee3530e20b7842c2dcedf048ad95dc86c27e9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496518267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b985dc82e0c565d1fbf89150deaa3ff08ca824536fec6492e65e1249c6e391`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:37:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bb6c00d67dc63e29c2acd1ed02b902908d93144c3ed922754a883f0f06de82`  
		Last Modified: Sat, 27 Apr 2019 13:14:17 GMT  
		Size: 211.8 MB (211836391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:e8ed71bf055e0e64a0951de7ec3793036d6739baaf0baaebe797eb43088ade80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:c1df2edb69ea73fe1d50cd4c267ebef4a22e7cc5254b73d2cfd7dca369feda38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.9 MB (549926621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52041d5ee34db1fe14db00d12cd8c13030d755eb4c8c9883a7c60d607c3bf0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:20 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e8e0c644ab40b6dbfb5b94e414041e0b983f345e66e9c3acf54732dfdf5043`  
		Last Modified: Sat, 27 Apr 2019 00:10:36 GMT  
		Size: 236.3 MB (236258924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:a6508975ee5430d19fde97a3cee3530e20b7842c2dcedf048ad95dc86c27e9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496518267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b985dc82e0c565d1fbf89150deaa3ff08ca824536fec6492e65e1249c6e391`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:37:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bb6c00d67dc63e29c2acd1ed02b902908d93144c3ed922754a883f0f06de82`  
		Last Modified: Sat, 27 Apr 2019 13:14:17 GMT  
		Size: 211.8 MB (211836391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:0e1ad653f4e20b462c3efa49281d34201559d748a920c645a8422c09b9150188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:16469f4a1c759dd689830021dc1b4c0eb2ad1ab33be6c7ab882079258f4b6150
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332699738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992b5d618794bb45430176ff8b2a366cea0493ed62a44f54248f257cd1ef76d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:39:27 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee53d9e0d5a56b6b60494e4b4deaa3ec9f7c17ead9dee64e5d6f7f179d5ca7`  
		Last Modified: Sat, 27 Apr 2019 00:09:35 GMT  
		Size: 19.0 MB (19032041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:d4a2818576d6cfcc627587d5aa70354a93469b47db4dcf2ae2d4b8cd15828908
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302370251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2968c2c22e98fdbafbb23c330590d7ade08b1c486223acfe938b19c5c9274bd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:33:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72c30fad293616d283658eb88d4bb4ce02d658f8ea00673a71adc838322eac9`  
		Last Modified: Sat, 27 Apr 2019 13:13:01 GMT  
		Size: 17.7 MB (17688375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:0e1ad653f4e20b462c3efa49281d34201559d748a920c645a8422c09b9150188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:16469f4a1c759dd689830021dc1b4c0eb2ad1ab33be6c7ab882079258f4b6150
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332699738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992b5d618794bb45430176ff8b2a366cea0493ed62a44f54248f257cd1ef76d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:39:27 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ee53d9e0d5a56b6b60494e4b4deaa3ec9f7c17ead9dee64e5d6f7f179d5ca7`  
		Last Modified: Sat, 27 Apr 2019 00:09:35 GMT  
		Size: 19.0 MB (19032041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:d4a2818576d6cfcc627587d5aa70354a93469b47db4dcf2ae2d4b8cd15828908
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302370251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2968c2c22e98fdbafbb23c330590d7ade08b1c486223acfe938b19c5c9274bd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:33:51 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72c30fad293616d283658eb88d4bb4ce02d658f8ea00673a71adc838322eac9`  
		Last Modified: Sat, 27 Apr 2019 13:13:01 GMT  
		Size: 17.7 MB (17688375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:2c805e5ca217ca21c82c90203e282cbd2e4d9afa4bb3605718943a6bd91e9bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6148ab941342c06a41b84375884a3f8e4fc632ce3f57b2cae8f35a0928b7d9f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313667697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd0aca2bd8eee7fd170aa281c39046fc95a7a1f084f124c7a6d5fde58039dfe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:4e466c7b4fac3e4bfc4acbb125758159c1df62dfdb608d6d4cc2c9cff3a0bb77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284681876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e2c1d66b99d5bdcfd9ea1fc4b5217b76ae2751f43e879c34fd669528e6c7052`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:2c805e5ca217ca21c82c90203e282cbd2e4d9afa4bb3605718943a6bd91e9bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:6148ab941342c06a41b84375884a3f8e4fc632ce3f57b2cae8f35a0928b7d9f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313667697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd0aca2bd8eee7fd170aa281c39046fc95a7a1f084f124c7a6d5fde58039dfe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:4e466c7b4fac3e4bfc4acbb125758159c1df62dfdb608d6d4cc2c9cff3a0bb77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284681876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e2c1d66b99d5bdcfd9ea1fc4b5217b76ae2751f43e879c34fd669528e6c7052`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:33:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baed70bb59aa122452920eb1f49d616903101e31b5df4f9ab0614a7ced03656`  
		Last Modified: Sat, 27 Apr 2019 13:12:42 GMT  
		Size: 40.4 MB (40389417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:dd5c3d837b31c4cb150184a9846d0d1eb304954ddc15dc37abae58a7451951a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:326930f035b118ba11da3e9d6bacc4dc9569cd41a3cff841fbce394e15b7c9b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266890782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa135561f01bb6b223422ad0cdc1294825276492e1c9ca4faa7b378f6fede92`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:ec147a9a589411c4401deb9b6f784783e794f23dde91d1da9e1d7781049c2663
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244292459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf80ff2babfcea12e6cdec504360ccf6539db22c509fdccb077df1c75e1e6fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:dd5c3d837b31c4cb150184a9846d0d1eb304954ddc15dc37abae58a7451951a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:326930f035b118ba11da3e9d6bacc4dc9569cd41a3cff841fbce394e15b7c9b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266890782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa135561f01bb6b223422ad0cdc1294825276492e1c9ca4faa7b378f6fede92`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:ec147a9a589411c4401deb9b6f784783e794f23dde91d1da9e1d7781049c2663
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244292459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cf80ff2babfcea12e6cdec504360ccf6539db22c509fdccb077df1c75e1e6fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:11 GMT
ADD file:1619cbcf63643ad1d5e8e3f021402dd0ca31abdd41852cee6a6fbbeec2fa5de8 in / 
# Sat, 27 Apr 2019 12:09:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:20 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:28:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:28:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:28:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:29:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:29:32 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:29:53 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:29:53 GMT
ENV ROS_DISTRO=indigo
# Sat, 27 Apr 2019 12:32:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:32:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:32:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:32:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c5362603fe6be7d5876ef41ffb08b355892494dd4a50696ea8076ae7dd17ebbb`  
		Last Modified: Sat, 27 Apr 2019 12:11:24 GMT  
		Size: 61.5 MB (61533787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba380cc82188c4efebfcfbbcfceb13f9e312ef48b621cc241b11e159e161dd0a`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab98c98275cf92acaac3db468b6a8458aa10b3fccdc303aee6882cf6e29ee6db`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4683afb56c106058227f2417f484198fd14d94b7f1d07c41fe42d595562ab6f8`  
		Last Modified: Sat, 27 Apr 2019 12:11:05 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99e58dfae674642e6ea844c0ac096e38a5a86f695977255635aad3e70f7e8d3`  
		Last Modified: Sat, 27 Apr 2019 13:11:38 GMT  
		Size: 16.0 MB (15995908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77ba5b657b794b5e0cfbbc223f142dde6625a8466565b2ca87079becb0fa83`  
		Last Modified: Sat, 27 Apr 2019 13:11:33 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797e170ce48e557512b847b76e267bbb5427307cbe1b4527630b56d896d95e4`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 260.4 KB (260355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeac04a2d7c37e35231d4b9c2eded4904027cf575f60e7ecb191d9caa1cc86f8`  
		Last Modified: Sat, 27 Apr 2019 13:11:43 GMT  
		Size: 28.4 MB (28423464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5babd6d9eab1f8d84c5383c98235b9b54061e92606c0b842c6ce11fbb8dd419`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 653.9 KB (653867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abdf6009dc82da85f844e3bd7476f4d12fadd1408e93b3163f0fd33ae4346e4`  
		Last Modified: Sat, 27 Apr 2019 13:12:19 GMT  
		Size: 137.3 MB (137334487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a64a7a568cf81eaa2634f3656288bb88276125b4760e1ca20ef45c508e6b2`  
		Last Modified: Sat, 27 Apr 2019 13:11:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:d89d5d8ff735822133ce919115fca0c1ba5dbf902b265bfbbc2a18ba4191271a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:f4cf8b55ff79c800e2f8ad37b736ec4df6764419ef3dfdcc169f6bc332674756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384905420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b869946d8dd57acdae22e257bdf1701712541c61e05653a6ec44ae907cc7bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:fa8955bb4d544ad3d7d2d92b08f9713203ea883c63cdf97a63d191e41c56235f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336316818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06be281e2f2707b049427068ff33ea8960cd7329454217cb9338e8990db17ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1ae07b1dc140964ff086f69314e48c0999f5d2a6fac6b09d27e11e1f13ed8ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.1 MB (350118255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bc8c8c34b4e3514d2b4cba4fc62b4e0db9bf301798c0b51f43b09af7dd265a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:a4c62bc285c785c87e0fe5476d294a34b08155e3dc7f8e9449fc315895a15aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:6a46984eb89c308c0790c8a7d898d8f70b4a2e57b11b95ab945d2b630e041d92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.6 MB (725624670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78fd2a6712ffb1bed5908f1188fa920444970c70c4f79d22149372adff773f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:49:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc0d04ff6ae0144767e1f1a9590af726659d5180e5005052e0f939f9df920b1`  
		Last Modified: Sat, 27 Apr 2019 00:14:40 GMT  
		Size: 340.7 MB (340719250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f678a3d764f3dfa59ffa7a02f31765ecbc6b8c30c8117d654fd97c5ecab8eacc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (617042475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3662da06e9e062fa596409bf2b1d39b55ce6fee39a5e550e6fb26bf4b125aa02`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:49:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31ccc55380adc69117cf856d971c6cac03d19243e57a0be34aec7590caca7f6`  
		Last Modified: Sat, 27 Apr 2019 13:18:16 GMT  
		Size: 280.7 MB (280725657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed6aab35cbc0c8024a56e19f7c0b797c82b61b439658bb0fdb35265175bacf78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.4 MB (641362506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61444968faa3a22768fbd14e0073a6282754f0dc6cc3618d7f8007fbb99de1ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:18:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ffc539f9ce2ea2f82759905a63ee17dd684c18b6efcab8499136d18a081f2f`  
		Last Modified: Sat, 27 Apr 2019 13:16:11 GMT  
		Size: 291.2 MB (291244251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:a4c62bc285c785c87e0fe5476d294a34b08155e3dc7f8e9449fc315895a15aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6a46984eb89c308c0790c8a7d898d8f70b4a2e57b11b95ab945d2b630e041d92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.6 MB (725624670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c78fd2a6712ffb1bed5908f1188fa920444970c70c4f79d22149372adff773f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:49:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc0d04ff6ae0144767e1f1a9590af726659d5180e5005052e0f939f9df920b1`  
		Last Modified: Sat, 27 Apr 2019 00:14:40 GMT  
		Size: 340.7 MB (340719250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f678a3d764f3dfa59ffa7a02f31765ecbc6b8c30c8117d654fd97c5ecab8eacc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (617042475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3662da06e9e062fa596409bf2b1d39b55ce6fee39a5e550e6fb26bf4b125aa02`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:49:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31ccc55380adc69117cf856d971c6cac03d19243e57a0be34aec7590caca7f6`  
		Last Modified: Sat, 27 Apr 2019 13:18:16 GMT  
		Size: 280.7 MB (280725657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ed6aab35cbc0c8024a56e19f7c0b797c82b61b439658bb0fdb35265175bacf78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.4 MB (641362506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61444968faa3a22768fbd14e0073a6282754f0dc6cc3618d7f8007fbb99de1ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:18:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ffc539f9ce2ea2f82759905a63ee17dd684c18b6efcab8499136d18a081f2f`  
		Last Modified: Sat, 27 Apr 2019 13:16:11 GMT  
		Size: 291.2 MB (291244251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:5088b556862fb20fc20096b14db5f9250fff4bcec5f4cbb87f0801255e69e95e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:ba592c4f926ef5c10e1a0df322d78ebc89a59db4a5c1e15f6822cd60f3568d35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.5 MB (488538368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2ca5536193fafcfc22ba4b0138987b735ddf073847981cf6a10f9e6a267b22`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:47:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed2a10b131385d6a5711e8af39e5103945c47dca607a11ce9645f7deeeba74f`  
		Last Modified: Sat, 27 Apr 2019 00:13:07 GMT  
		Size: 103.6 MB (103632948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:4fd1a3706943a75d926b54f26e255c9d4c67a14336f5eaa7c756e01eaf03424a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426337970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5516513b0b819167fc37bb89f95bcef3156627c046acf0f14316594e877cb871`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dcda776121641a97afb82b22643637b339e7c36111161ef49a3b0ca5660824`  
		Last Modified: Sat, 27 Apr 2019 13:16:40 GMT  
		Size: 90.0 MB (90021152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7eecde24e1152ff9aaf902dc9a27a4c717542bf7d6c9aa9422748e928ee84537
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (444031579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cb43b63b388d9b314e54942c97ad2eeb9be63a6e54974d87e351d3f504cbd1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:04:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8c8015a0e0255cf40594ce9919cdcdc5e0e614696411f2a0d127e903bf1b57`  
		Last Modified: Sat, 27 Apr 2019 13:10:21 GMT  
		Size: 93.9 MB (93913324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:5088b556862fb20fc20096b14db5f9250fff4bcec5f4cbb87f0801255e69e95e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:ba592c4f926ef5c10e1a0df322d78ebc89a59db4a5c1e15f6822cd60f3568d35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.5 MB (488538368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2ca5536193fafcfc22ba4b0138987b735ddf073847981cf6a10f9e6a267b22`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:47:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed2a10b131385d6a5711e8af39e5103945c47dca607a11ce9645f7deeeba74f`  
		Last Modified: Sat, 27 Apr 2019 00:13:07 GMT  
		Size: 103.6 MB (103632948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:4fd1a3706943a75d926b54f26e255c9d4c67a14336f5eaa7c756e01eaf03424a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426337970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5516513b0b819167fc37bb89f95bcef3156627c046acf0f14316594e877cb871`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50dcda776121641a97afb82b22643637b339e7c36111161ef49a3b0ca5660824`  
		Last Modified: Sat, 27 Apr 2019 13:16:40 GMT  
		Size: 90.0 MB (90021152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7eecde24e1152ff9aaf902dc9a27a4c717542bf7d6c9aa9422748e928ee84537
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (444031579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3cb43b63b388d9b314e54942c97ad2eeb9be63a6e54974d87e351d3f504cbd1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:04:26 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8c8015a0e0255cf40594ce9919cdcdc5e0e614696411f2a0d127e903bf1b57`  
		Last Modified: Sat, 27 Apr 2019 13:10:21 GMT  
		Size: 93.9 MB (93913324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:d89d5d8ff735822133ce919115fca0c1ba5dbf902b265bfbbc2a18ba4191271a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:f4cf8b55ff79c800e2f8ad37b736ec4df6764419ef3dfdcc169f6bc332674756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384905420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b869946d8dd57acdae22e257bdf1701712541c61e05653a6ec44ae907cc7bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:fa8955bb4d544ad3d7d2d92b08f9713203ea883c63cdf97a63d191e41c56235f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336316818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06be281e2f2707b049427068ff33ea8960cd7329454217cb9338e8990db17ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1ae07b1dc140964ff086f69314e48c0999f5d2a6fac6b09d27e11e1f13ed8ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.1 MB (350118255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bc8c8c34b4e3514d2b4cba4fc62b4e0db9bf301798c0b51f43b09af7dd265a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:d89d5d8ff735822133ce919115fca0c1ba5dbf902b265bfbbc2a18ba4191271a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f4cf8b55ff79c800e2f8ad37b736ec4df6764419ef3dfdcc169f6bc332674756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384905420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79b869946d8dd57acdae22e257bdf1701712541c61e05653a6ec44ae907cc7bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:45:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2bb7c01c28bbff397c109c560051ed498b692d53bf8625bb7a9574ada9d43`  
		Last Modified: Sat, 27 Apr 2019 00:12:11 GMT  
		Size: 85.7 MB (85690998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:fa8955bb4d544ad3d7d2d92b08f9713203ea883c63cdf97a63d191e41c56235f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336316818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06be281e2f2707b049427068ff33ea8960cd7329454217cb9338e8990db17ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:43:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1557e1acb3a07404f841a9305aada896ca8337841f6c3c15567cb0f57ff2300f`  
		Last Modified: Sat, 27 Apr 2019 13:16:01 GMT  
		Size: 76.5 MB (76467157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b1ae07b1dc140964ff086f69314e48c0999f5d2a6fac6b09d27e11e1f13ed8ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.1 MB (350118255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bc8c8c34b4e3514d2b4cba4fc62b4e0db9bf301798c0b51f43b09af7dd265a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 10:58:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1033393ff3d8ce353dc0238766006e44847ad2dc17ec627be7261c9d1e3ae7a`  
		Last Modified: Sat, 27 Apr 2019 13:06:41 GMT  
		Size: 78.0 MB (77964326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:2472d8df105bd5cacf0864bebb12a0796af4d0dcf94c7e7e23cebbefe111a462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:7fc83262e8899ca85df7ec74e66217f6ab73c0cdbf3d9b1f54989b657e037a9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299214422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23720b43ab196859a546cb8b6e44b27aa2788713e31e49587878adb32635a231`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:a0c76a5e7f9eea3b6d40caef0d573ab4c356e3969d658b817c656bedb0778af5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259849661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002f530f92f46bb553e9097bab9312892f5214fa7349d3307276858fbc6e5649`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4a7c301e2dba8e6c10e54f25b93e31ec1cff012b85e62753cc30fbfe709758bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272153929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eace53eb3e4ff49b0ad3751de10ac75b5bc8289d7e681c572574bdaa0a27b60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:2472d8df105bd5cacf0864bebb12a0796af4d0dcf94c7e7e23cebbefe111a462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7fc83262e8899ca85df7ec74e66217f6ab73c0cdbf3d9b1f54989b657e037a9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299214422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23720b43ab196859a546cb8b6e44b27aa2788713e31e49587878adb32635a231`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:43:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Apr 2019 23:44:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:44:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:44:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:44:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c51f91b582b2149c7192373613e3407ac46d5337cccc6287a0ed3cf9ba514a0`  
		Last Modified: Sat, 27 Apr 2019 00:11:41 GMT  
		Size: 193.2 MB (193241805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d875f4c02c0107211194b63d7c264cff52e579aaadcca8326931c907751dcaae`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a0c76a5e7f9eea3b6d40caef0d573ab4c356e3969d658b817c656bedb0778af5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259849661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:002f530f92f46bb553e9097bab9312892f5214fa7349d3307276858fbc6e5649`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:39:28 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 12:41:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:41:50 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:41:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:41:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c02ba4e595b2150d1118510a48e778134b9e12cc8a007a96cfd20b75949264`  
		Last Modified: Sat, 27 Apr 2019 13:15:24 GMT  
		Size: 164.6 MB (164627971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee04600251a97961df1fdc248c59971cb9157c5f9f4a5282e29e060e27dae89`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4a7c301e2dba8e6c10e54f25b93e31ec1cff012b85e62753cc30fbfe709758bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272153929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eace53eb3e4ff49b0ad3751de10ac75b5bc8289d7e681c572574bdaa0a27b60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 10:40:34 GMT
ENV ROS_DISTRO=kinetic
# Sat, 27 Apr 2019 10:52:43 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:52:49 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 10:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 10:52:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48091c58050400c609d5e23d9c8fa68f09e45cad5d8c7e29058fed6bd2b3973a`  
		Last Modified: Sat, 27 Apr 2019 13:04:36 GMT  
		Size: 173.9 MB (173887686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3223c8b16d47d9d8b80333c845f3ca74d9e905dda64e0c28b0085e0f6234727`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:1fd644d53aa29bbbe72ed80a1472db7cc7aef47509f6e9965f4e69a274257850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:3aeeda568f91dd5a5f65dd21d4c03eaca76068ad4a5e7c80124f24c8cfdfefdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.5 MB (434458332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49138c24b541302fc3cd4a127042fcc7a068701b86f561be9da3acc89318813d`
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

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:3c05721c5483e57959647162307b2e20c61e0730204497ae85125f1a569dbfb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385904771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a720a519a61f06b6683a2910340d266aa1d3b4957642377f7c09a0767e0ad46`
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

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cac0ae33692fa6859178af5a672f0af1e815a78f6d36cec18fbb26fa877937a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.7 MB (364737151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca2ec2bf1b54e097c013ec194cf5b72a312d2ffe103bd82bbbe5b9deb349669`
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

## `ros:lunar`

```console
$ docker pull ros@sha256:c49d937b35fc512cc087ac6f5a2cc60bc98e94f20ac7c38b4fbe764d40362215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:9cdfb3227566b9f9a0d707b3c9d249274709a1d8be5beb2e42edde55f35aaf10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.8 MB (384838368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c61e6e10d7a9c5821156277b675c149d4100321fc3082c87913559cd3c3b535`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:52:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307dc502fa04b0fa333354cc2f87b32293d79a35d49d6d4dd211b0b43c4af404`  
		Last Modified: Sat, 27 Apr 2019 00:16:09 GMT  
		Size: 85.6 MB (85619298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:2f82b3b0c7eca54258027ddffe7f1c298f954d0b263c543fc60895ef68b2de09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336260979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc622233ed3633db2cce69066ec6449f71bfa1069d2aceb0c0e434386b32de3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29137c8b40dd1fd1f106555042cacdd8440cce9157181c2ef5e19e30d32a672`  
		Last Modified: Sat, 27 Apr 2019 13:19:45 GMT  
		Size: 76.4 MB (76397237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:06474cd9042b05948ef871e9580123cd38f1ac11c1a7bcda5b1ab61d9c215db2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350031352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e6a419b817c7fdf44169e41519febe3ca439201432d62727e06cdbd0cdc2ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 11:38:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec75c6f1e0b030cc29990f24584b9bf7027fd81bf314930af86f2356158434e1`  
		Last Modified: Sat, 27 Apr 2019 13:25:16 GMT  
		Size: 77.9 MB (77887779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:9dd6b6938c216151b635e60227410a012f4a88525b905923b6ad799c9df7238b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:3d76396338627f7954d0b90aed2ab38637f94de911c13d9d7f339424a2fcc349
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **724.0 MB (723997307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc53bdadcf7c2aec6eb0b673d16dedabc6bfe80e08947a23e868b09c23eaa26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:52:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:55:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307dc502fa04b0fa333354cc2f87b32293d79a35d49d6d4dd211b0b43c4af404`  
		Last Modified: Sat, 27 Apr 2019 00:16:09 GMT  
		Size: 85.6 MB (85619298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037621ac8bcc1c92658fb4602f18e67b920e661b091857333985c1698e3757ff`  
		Last Modified: Sat, 27 Apr 2019 00:18:14 GMT  
		Size: 339.2 MB (339158939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:2195bfb0e0bc84d07dc8b859d653bf25bc1aeff2123f8f7a1fd24ffec8dd6356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.6 MB (616555547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116a6cf7cfd6db19c8a398cd9133a8c6fa0da76ea899017ad8b5651ee93e1409`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:59:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29137c8b40dd1fd1f106555042cacdd8440cce9157181c2ef5e19e30d32a672`  
		Last Modified: Sat, 27 Apr 2019 13:19:45 GMT  
		Size: 76.4 MB (76397237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52fa72db81b43ea779c20fb886696dea9b904ea5def0ed0330e014fd0211806`  
		Last Modified: Sat, 27 Apr 2019 13:21:59 GMT  
		Size: 280.3 MB (280294568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ded3a59968185f1885eff8c87c83b90ebfccb06f9b3b10152dd1676f5405ecc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 MB (640039265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a31a28eb0994893a8ee8909cb99b786a666545693c68fb959960560ffd5ec29`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 11:38:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:55:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec75c6f1e0b030cc29990f24584b9bf7027fd81bf314930af86f2356158434e1`  
		Last Modified: Sat, 27 Apr 2019 13:25:16 GMT  
		Size: 77.9 MB (77887779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f22a319a059fd3044f6545111cf5e0e1aa6b12c0c7b68a58daf814bcc757bc`  
		Last Modified: Sat, 27 Apr 2019 13:33:07 GMT  
		Size: 290.0 MB (290007913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:8e41688886b9cfec5d79817ea25303f9a6f3db62348aa7ae05850360a8bb4376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9436e857b3e028f4b105bb0a254bad703e53bbd51368e4a367e9d61eef003966
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.3 MB (933303260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9eeb7eaa9c002441f2878538a2a90c5fa37dd45457c301eec9bdcedbfa2819`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:26:23 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 03:28:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:06 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:29:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:35:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21069d82b66eba638810c3deb3bcefe4fdd6b474b2cd06ca586385f0bf14c3ae`  
		Last Modified: Wed, 27 Mar 2019 03:42:52 GMT  
		Size: 251.2 MB (251159100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907bbc5daab0e8b5d6644f0f9ae8920b4c8a2d83a4a6de68e3d26314a159ee2`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d1eb839d2da7b4c07949c86d20b8e50fa8446f0e8bd0fe7057868bfcd871ae`  
		Last Modified: Wed, 27 Mar 2019 03:43:21 GMT  
		Size: 123.1 MB (123069283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4149287c22712d74a37c28506cf982421db742f01552e290105f74d52a71c3`  
		Last Modified: Wed, 27 Mar 2019 03:45:13 GMT  
		Size: 438.5 MB (438464906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:66b5e3565ddd2408954a96275ef1fd777ff38f96510ed835a060180c098d8849
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.5 MB (816465703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22403d020d74faca0df378fcc4a26f930e4888a50b4df57d4508c0f59b933eb5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 15:35:28 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 15:46:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:46:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 15:46:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 15:46:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:54:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:28:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b896faa5809fdc18de9fbc1c6d1b7be10fae94dff3842c5cdf7973bdf2ee1`  
		Last Modified: Wed, 27 Mar 2019 17:10:06 GMT  
		Size: 206.1 MB (206063723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6cee3655e8a0459ba1da1f076483ad333cb5d9b549b62062b44bcad9831da4`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d310062bb4f72e12496d54325efcaa4c418e98948a7588dfcebd756fca96603`  
		Last Modified: Wed, 27 Mar 2019 17:11:06 GMT  
		Size: 116.9 MB (116873978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454d7192452c9f3f96fcaa753bff2943471f0088f57b80bd8b7fea3203be1fc9`  
		Last Modified: Wed, 27 Mar 2019 17:14:06 GMT  
		Size: 378.5 MB (378521802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:9dd6b6938c216151b635e60227410a012f4a88525b905923b6ad799c9df7238b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3d76396338627f7954d0b90aed2ab38637f94de911c13d9d7f339424a2fcc349
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **724.0 MB (723997307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fc53bdadcf7c2aec6eb0b673d16dedabc6bfe80e08947a23e868b09c23eaa26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:52:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:55:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307dc502fa04b0fa333354cc2f87b32293d79a35d49d6d4dd211b0b43c4af404`  
		Last Modified: Sat, 27 Apr 2019 00:16:09 GMT  
		Size: 85.6 MB (85619298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037621ac8bcc1c92658fb4602f18e67b920e661b091857333985c1698e3757ff`  
		Last Modified: Sat, 27 Apr 2019 00:18:14 GMT  
		Size: 339.2 MB (339158939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:2195bfb0e0bc84d07dc8b859d653bf25bc1aeff2123f8f7a1fd24ffec8dd6356
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.6 MB (616555547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116a6cf7cfd6db19c8a398cd9133a8c6fa0da76ea899017ad8b5651ee93e1409`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:59:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29137c8b40dd1fd1f106555042cacdd8440cce9157181c2ef5e19e30d32a672`  
		Last Modified: Sat, 27 Apr 2019 13:19:45 GMT  
		Size: 76.4 MB (76397237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52fa72db81b43ea779c20fb886696dea9b904ea5def0ed0330e014fd0211806`  
		Last Modified: Sat, 27 Apr 2019 13:21:59 GMT  
		Size: 280.3 MB (280294568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ded3a59968185f1885eff8c87c83b90ebfccb06f9b3b10152dd1676f5405ecc8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 MB (640039265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a31a28eb0994893a8ee8909cb99b786a666545693c68fb959960560ffd5ec29`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 11:38:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:55:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec75c6f1e0b030cc29990f24584b9bf7027fd81bf314930af86f2356158434e1`  
		Last Modified: Sat, 27 Apr 2019 13:25:16 GMT  
		Size: 77.9 MB (77887779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55f22a319a059fd3044f6545111cf5e0e1aa6b12c0c7b68a58daf814bcc757bc`  
		Last Modified: Sat, 27 Apr 2019 13:33:07 GMT  
		Size: 290.0 MB (290007913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:24c79391315bc1951794dfab4770a2d2e7fef3098a0f89f2c8b447f314c2e1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:28636b0e89a4bb8228410a9ffd2e2d25a9e2bac32c5e7ebde29054feab694366
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.6 MB (488572589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f96adfb8a78a36acc04686f34403c3ac8276504a89336e1537a38c8051f5913`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:52:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:52:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307dc502fa04b0fa333354cc2f87b32293d79a35d49d6d4dd211b0b43c4af404`  
		Last Modified: Sat, 27 Apr 2019 00:16:09 GMT  
		Size: 85.6 MB (85619298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963e38f0436e5108b4dd6165dbd8caa1462c50d9fc64638fb13b59f630a51ff5`  
		Last Modified: Sat, 27 Apr 2019 00:16:47 GMT  
		Size: 103.7 MB (103734221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:71eeb0ad1fcbe435d98b1de00351b698b2f1cfdeff399dc516b7da4df8a76540
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.4 MB (426355604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8e22773101e1c432129ff32346ea0428d5434812124ae1e251a227b3f1b0db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:55:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29137c8b40dd1fd1f106555042cacdd8440cce9157181c2ef5e19e30d32a672`  
		Last Modified: Sat, 27 Apr 2019 13:19:45 GMT  
		Size: 76.4 MB (76397237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae849d64291ccdda95334fb4d0c91287565d9102bf284c77d77f75c13363f49`  
		Last Modified: Sat, 27 Apr 2019 13:20:24 GMT  
		Size: 90.1 MB (90094625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7d118dd59c24f0bded078a0a5f85e9b3a98d5e64dd22acf1571aa3e640f5786
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (444033513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09ddf8069c6d58eaab06b9e5d74ec46e6cb441ecd12c353e31dfb6278507e2d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 11:38:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:43:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec75c6f1e0b030cc29990f24584b9bf7027fd81bf314930af86f2356158434e1`  
		Last Modified: Sat, 27 Apr 2019 13:25:16 GMT  
		Size: 77.9 MB (77887779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156a9f8a1c0d48c96b9705584dbbe263fcdf44c897f5580526c13fd574a1bd34`  
		Last Modified: Sat, 27 Apr 2019 13:27:21 GMT  
		Size: 94.0 MB (94002161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:af99efd54704be7c8ff9f685ba03bf678d9de3ea002f0718d8debd8760e6f0d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:eb7d0d6639b37028f6c1b78295ce049a326afa14a9d085373b5ee019a0766295
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555273173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb20e80fdec0483912124f7c9b7eaa36e1527781e008b6bb680d430bcfeec943`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:26:23 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 03:28:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:06 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:29:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:30:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21069d82b66eba638810c3deb3bcefe4fdd6b474b2cd06ca586385f0bf14c3ae`  
		Last Modified: Wed, 27 Mar 2019 03:42:52 GMT  
		Size: 251.2 MB (251159100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907bbc5daab0e8b5d6644f0f9ae8920b4c8a2d83a4a6de68e3d26314a159ee2`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d1eb839d2da7b4c07949c86d20b8e50fa8446f0e8bd0fe7057868bfcd871ae`  
		Last Modified: Wed, 27 Mar 2019 03:43:21 GMT  
		Size: 123.1 MB (123069283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea6f1846d7cdde3633b62d85d5efd4b8a683c78c8cf065fe0084eed77527305`  
		Last Modified: Wed, 27 Mar 2019 03:43:39 GMT  
		Size: 60.4 MB (60434819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9418f85b99eb696a67ded79c8731a90fdd90619a836eb0ff98b051dce5dae3bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.5 MB (495459131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25998a6dc063e3c8165df005e110a857935358d02cb731eeb9ec2332f5399fa1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 15:35:28 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 15:46:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:46:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 15:46:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 15:46:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:54:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:59:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b896faa5809fdc18de9fbc1c6d1b7be10fae94dff3842c5cdf7973bdf2ee1`  
		Last Modified: Wed, 27 Mar 2019 17:10:06 GMT  
		Size: 206.1 MB (206063723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6cee3655e8a0459ba1da1f076483ad333cb5d9b549b62062b44bcad9831da4`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d310062bb4f72e12496d54325efcaa4c418e98948a7588dfcebd756fca96603`  
		Last Modified: Wed, 27 Mar 2019 17:11:06 GMT  
		Size: 116.9 MB (116873978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d8be278a5ab5423cf59a3535807ba1ab0def087656eab4ba58e1e1223dfcfe`  
		Last Modified: Wed, 27 Mar 2019 17:11:35 GMT  
		Size: 57.5 MB (57515230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:24c79391315bc1951794dfab4770a2d2e7fef3098a0f89f2c8b447f314c2e1dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:28636b0e89a4bb8228410a9ffd2e2d25a9e2bac32c5e7ebde29054feab694366
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.6 MB (488572589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f96adfb8a78a36acc04686f34403c3ac8276504a89336e1537a38c8051f5913`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:52:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:52:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307dc502fa04b0fa333354cc2f87b32293d79a35d49d6d4dd211b0b43c4af404`  
		Last Modified: Sat, 27 Apr 2019 00:16:09 GMT  
		Size: 85.6 MB (85619298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963e38f0436e5108b4dd6165dbd8caa1462c50d9fc64638fb13b59f630a51ff5`  
		Last Modified: Sat, 27 Apr 2019 00:16:47 GMT  
		Size: 103.7 MB (103734221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:71eeb0ad1fcbe435d98b1de00351b698b2f1cfdeff399dc516b7da4df8a76540
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.4 MB (426355604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf8e22773101e1c432129ff32346ea0428d5434812124ae1e251a227b3f1b0db`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:55:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29137c8b40dd1fd1f106555042cacdd8440cce9157181c2ef5e19e30d32a672`  
		Last Modified: Sat, 27 Apr 2019 13:19:45 GMT  
		Size: 76.4 MB (76397237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae849d64291ccdda95334fb4d0c91287565d9102bf284c77d77f75c13363f49`  
		Last Modified: Sat, 27 Apr 2019 13:20:24 GMT  
		Size: 90.1 MB (90094625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7d118dd59c24f0bded078a0a5f85e9b3a98d5e64dd22acf1571aa3e640f5786
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (444033513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09ddf8069c6d58eaab06b9e5d74ec46e6cb441ecd12c353e31dfb6278507e2d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 11:38:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:43:55 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec75c6f1e0b030cc29990f24584b9bf7027fd81bf314930af86f2356158434e1`  
		Last Modified: Sat, 27 Apr 2019 13:25:16 GMT  
		Size: 77.9 MB (77887779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156a9f8a1c0d48c96b9705584dbbe263fcdf44c897f5580526c13fd574a1bd34`  
		Last Modified: Sat, 27 Apr 2019 13:27:21 GMT  
		Size: 94.0 MB (94002161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:c49d937b35fc512cc087ac6f5a2cc60bc98e94f20ac7c38b4fbe764d40362215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:9cdfb3227566b9f9a0d707b3c9d249274709a1d8be5beb2e42edde55f35aaf10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.8 MB (384838368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c61e6e10d7a9c5821156277b675c149d4100321fc3082c87913559cd3c3b535`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:52:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307dc502fa04b0fa333354cc2f87b32293d79a35d49d6d4dd211b0b43c4af404`  
		Last Modified: Sat, 27 Apr 2019 00:16:09 GMT  
		Size: 85.6 MB (85619298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:2f82b3b0c7eca54258027ddffe7f1c298f954d0b263c543fc60895ef68b2de09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336260979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc622233ed3633db2cce69066ec6449f71bfa1069d2aceb0c0e434386b32de3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29137c8b40dd1fd1f106555042cacdd8440cce9157181c2ef5e19e30d32a672`  
		Last Modified: Sat, 27 Apr 2019 13:19:45 GMT  
		Size: 76.4 MB (76397237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:06474cd9042b05948ef871e9580123cd38f1ac11c1a7bcda5b1ab61d9c215db2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350031352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e6a419b817c7fdf44169e41519febe3ca439201432d62727e06cdbd0cdc2ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 11:38:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec75c6f1e0b030cc29990f24584b9bf7027fd81bf314930af86f2356158434e1`  
		Last Modified: Sat, 27 Apr 2019 13:25:16 GMT  
		Size: 77.9 MB (77887779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:7c839a6ec7cb1ad139f4d3b7237c7365717646164eb16e7a50e411bb08c89980
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:edad29ae2ede3bc8b9cbf00b99a4bd0b798da2da23287429c041762589fd556f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.8 MB (494838354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909232cd7b3fdb50d2669703737759cc7bb67d56609f18a47c2762beebc6d9ee`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:26:23 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 03:28:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:06 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:29:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21069d82b66eba638810c3deb3bcefe4fdd6b474b2cd06ca586385f0bf14c3ae`  
		Last Modified: Wed, 27 Mar 2019 03:42:52 GMT  
		Size: 251.2 MB (251159100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907bbc5daab0e8b5d6644f0f9ae8920b4c8a2d83a4a6de68e3d26314a159ee2`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d1eb839d2da7b4c07949c86d20b8e50fa8446f0e8bd0fe7057868bfcd871ae`  
		Last Modified: Wed, 27 Mar 2019 03:43:21 GMT  
		Size: 123.1 MB (123069283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:66650e892fa4e6a9e226e9135505d96f13aa59942ba9588cd75c59b130c411ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.9 MB (437943901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b55bfa779554dc9caa1acf79f74f289a2082a87db8b27a5e662043842ec027`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 15:35:28 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 15:46:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:46:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 15:46:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 15:46:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:54:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b896faa5809fdc18de9fbc1c6d1b7be10fae94dff3842c5cdf7973bdf2ee1`  
		Last Modified: Wed, 27 Mar 2019 17:10:06 GMT  
		Size: 206.1 MB (206063723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6cee3655e8a0459ba1da1f076483ad333cb5d9b549b62062b44bcad9831da4`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d310062bb4f72e12496d54325efcaa4c418e98948a7588dfcebd756fca96603`  
		Last Modified: Wed, 27 Mar 2019 17:11:06 GMT  
		Size: 116.9 MB (116873978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:c49d937b35fc512cc087ac6f5a2cc60bc98e94f20ac7c38b4fbe764d40362215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:9cdfb3227566b9f9a0d707b3c9d249274709a1d8be5beb2e42edde55f35aaf10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.8 MB (384838368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c61e6e10d7a9c5821156277b675c149d4100321fc3082c87913559cd3c3b535`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:52:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307dc502fa04b0fa333354cc2f87b32293d79a35d49d6d4dd211b0b43c4af404`  
		Last Modified: Sat, 27 Apr 2019 00:16:09 GMT  
		Size: 85.6 MB (85619298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:2f82b3b0c7eca54258027ddffe7f1c298f954d0b263c543fc60895ef68b2de09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336260979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc622233ed3633db2cce69066ec6449f71bfa1069d2aceb0c0e434386b32de3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:53:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29137c8b40dd1fd1f106555042cacdd8440cce9157181c2ef5e19e30d32a672`  
		Last Modified: Sat, 27 Apr 2019 13:19:45 GMT  
		Size: 76.4 MB (76397237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:06474cd9042b05948ef871e9580123cd38f1ac11c1a7bcda5b1ab61d9c215db2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350031352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e6a419b817c7fdf44169e41519febe3ca439201432d62727e06cdbd0cdc2ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 11:38:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec75c6f1e0b030cc29990f24584b9bf7027fd81bf314930af86f2356158434e1`  
		Last Modified: Sat, 27 Apr 2019 13:25:16 GMT  
		Size: 77.9 MB (77887779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:4c09335d5efeb25a1b721d3815446f4cd6f6787e34c98c9d36336b0d703b2227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3c08fbf012e54d3c6c890fc0d0af5a0985658d6830bd2477da78da6f56d61ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299219070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b18741d68c2c9cfff7c4a9382b9bc1ccda6ccfe50eb1c3d2db1ad575f038b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:d85cc349c828a550ead1a9c5219b731d25b46839495d566df8f612ae4666fe91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259863742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c470efbf2b70b8deea920df10938780e8dafcd27d58ca5c50c47fcfcdf18f99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7bdb3b9534f1c7c8e4a58e629f9c02def30318ad580e799b50ed81f14fea3efa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272143573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed95f8387d8a42b1b541b336b0f0c72fc0675177c943608fa645a85484f0d91`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:bd4df6dd4d1de00dda661cdff0aa06ad40c584b30b21dd2c60b124ad0c8b70b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:3792e8bc276e2dee6aed14784a9c38136232a4e653a956a9a38c56bc2aa2dbcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371769071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcef4c6327a1ec351dee6764aba884df57f751c37ee7fca3408ebb9f1cc1fe6a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:26:23 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 03:28:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21069d82b66eba638810c3deb3bcefe4fdd6b474b2cd06ca586385f0bf14c3ae`  
		Last Modified: Wed, 27 Mar 2019 03:42:52 GMT  
		Size: 251.2 MB (251159100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907bbc5daab0e8b5d6644f0f9ae8920b4c8a2d83a4a6de68e3d26314a159ee2`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b001a54d453e0e7f0a4f76320b6b63a40c9f7983ce2766f961792b465c3c5466
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321069923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d897b0e3410091a82225a4f635b467f014b75898bd3afc91c4d579e8cde218c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 15:35:28 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 15:46:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:46:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 15:46:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 15:46:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b896faa5809fdc18de9fbc1c6d1b7be10fae94dff3842c5cdf7973bdf2ee1`  
		Last Modified: Wed, 27 Mar 2019 17:10:06 GMT  
		Size: 206.1 MB (206063723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6cee3655e8a0459ba1da1f076483ad333cb5d9b549b62062b44bcad9831da4`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:4c09335d5efeb25a1b721d3815446f4cd6f6787e34c98c9d36336b0d703b2227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3c08fbf012e54d3c6c890fc0d0af5a0985658d6830bd2477da78da6f56d61ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299219070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b18741d68c2c9cfff7c4a9382b9bc1ccda6ccfe50eb1c3d2db1ad575f038b1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:42:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:43:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:43:19 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:43:31 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:49:53 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Apr 2019 23:51:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:51:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:51:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:51:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca24a737616955e7afbf76771111dad1ccc4771fa18c0084520f25c8ef6d3e2`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72aed2be71b71537d9f0ff27077cb7a22f6a012fe3ac93764075316b26b6f1`  
		Last Modified: Sat, 27 Apr 2019 00:10:44 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e310010fd1683b8c1741d3874fcacb662f15910b8603eab78f50ea8faff16e91`  
		Last Modified: Sat, 27 Apr 2019 00:11:02 GMT  
		Size: 44.9 MB (44880671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:150d17009a36ae433c14f458d57d43a530960ab71f2b4344b7a3c2e8b3cfa3f5`  
		Last Modified: Sat, 27 Apr 2019 00:10:45 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db9d207eaf90c33d41ee9f2476d3305cade6006ab83e2d175e5c2b9749f6ee1`  
		Last Modified: Sat, 27 Apr 2019 00:15:37 GMT  
		Size: 193.2 MB (193246453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6db9d358fa0945fd67d430a0b656a993847b8c57aa044f91299c1251e84c07`  
		Last Modified: Sat, 27 Apr 2019 00:14:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:d85cc349c828a550ead1a9c5219b731d25b46839495d566df8f612ae4666fe91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259863742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c470efbf2b70b8deea920df10938780e8dafcd27d58ca5c50c47fcfcdf18f99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 12:09:45 GMT
ADD file:6abeb1922711ba983099d4c04a11287c89004f297455bb4fc41451cc27218177 in / 
# Sat, 27 Apr 2019 12:09:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 12:09:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:09:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 12:09:54 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:37:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:38:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:38:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 12:39:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:39:07 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:39:28 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:49:29 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 12:51:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:51:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 12:51:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:51:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0e049e8c377f00a9384d53b245eca77dab63d499bc4df0d8058ef0bf4928c47e`  
		Last Modified: Fri, 26 Apr 2019 22:26:56 GMT  
		Size: 38.7 MB (38653833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ae07c2e262a27612d57f5f68331e68ca9da1d2c0b4749b4013140867a54c276`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bccb522494abe8ce55f46b024715305dcaa596581bcc8d60ea20cdb1c9e3fe16`  
		Last Modified: Sat, 27 Apr 2019 12:11:48 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb96c8e04ae9d0fa50d52c33842137046920f3414e45cbcb86c642e5997a567`  
		Last Modified: Sat, 27 Apr 2019 12:11:47 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d87487edcf9345343447b089bdd097293ee54c541e6eba86a9a968243af8d7d`  
		Last Modified: Sat, 27 Apr 2019 13:14:33 GMT  
		Size: 15.0 MB (14955341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa23af2054eea6b6b9fcfb6dd5be9ad80dd8ca8c572e7c454159269025730299`  
		Last Modified: Sat, 27 Apr 2019 13:14:27 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd175624a079d2a90d56480c048ac9b6f3c42faae49758efbc80bf351c0049e`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 5.5 KB (5539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5868e798d3af2bc2524b9edc1dfad1b822e9b8eb68dea1adced91d0c1f14f1`  
		Last Modified: Sat, 27 Apr 2019 13:14:42 GMT  
		Size: 40.9 MB (40938293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbb2b7a3cdea223b22709ce412e39fbafd04d378b35c3512db622b72338759`  
		Last Modified: Sat, 27 Apr 2019 13:14:26 GMT  
		Size: 653.9 KB (653880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f059206c0fa9b39b6098ade54125eccd6c373a0fb60d5593af21e52d3f7fe44e`  
		Last Modified: Sat, 27 Apr 2019 13:19:16 GMT  
		Size: 164.6 MB (164642051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d1cfaeb04c94dd87a213de5d7645119c3216bafb125c36083af3e3bac821bb`  
		Last Modified: Sat, 27 Apr 2019 13:18:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7bdb3b9534f1c7c8e4a58e629f9c02def30318ad580e799b50ed81f14fea3efa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272143573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eed95f8387d8a42b1b541b336b0f0c72fc0675177c943608fa645a85484f0d91`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:38:29 GMT
ADD file:871bd7b9746504992c714acf86c19916c9ea2061e665aba4547c02f5a87dda1d in / 
# Sat, 27 Apr 2019 09:38:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:38:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:38:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:38:41 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 10:37:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:37:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 10:37:21 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 27 Apr 2019 10:39:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 10:39:47 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 10:39:48 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 10:40:33 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 11:18:25 GMT
ENV ROS_DISTRO=lunar
# Sat, 27 Apr 2019 11:29:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 11:29:04 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 27 Apr 2019 11:29:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 11:29:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9faae00b8c161eeb3f6dd501b8afea1b3ff6f0cdaafbffc40c8c05e370ca8581`  
		Last Modified: Fri, 26 Apr 2019 22:12:20 GMT  
		Size: 39.7 MB (39729396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2435bdd32c230705ab3d701ff85763cf6f15db3db0ae7677723535a9966f3c`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baab0b94b9762c01dab9564e661e1a9fd77ca7ac7d91fbef8143875e9ad0d5`  
		Last Modified: Sat, 27 Apr 2019 09:41:13 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d2291befdb8dfc512786348c157758756137ac5176472743061ac5a04f4a7e`  
		Last Modified: Sat, 27 Apr 2019 09:41:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d037a38f554e7a09a2e7badd766a177cd92525e78fe9e405d6648d510c1ce5`  
		Last Modified: Sat, 27 Apr 2019 13:01:02 GMT  
		Size: 15.1 MB (15051308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6810761065f20e40f33f32764f9739e5dde43e7f11a2f06dfdcfc9a972f850ec`  
		Last Modified: Sat, 27 Apr 2019 13:00:14 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd012c533aec7d3dc641dfad8ba805400cd39f3c4705f0fc7744c3bfbe2563c8`  
		Last Modified: Sat, 27 Apr 2019 13:00:12 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20dd02a1e264d571191a27e49b70caeb8ddeccee85151827d4416ed16b5bc5d`  
		Last Modified: Sat, 27 Apr 2019 13:02:14 GMT  
		Size: 42.8 MB (42811337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9e592c490c1a2606d94ed37d1b58390902f1c327d9bd04d6cac82b2e8e92ad`  
		Last Modified: Sat, 27 Apr 2019 13:00:13 GMT  
		Size: 653.9 KB (653928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6302857ed4a03073e2461e68610fe4ac6b4503211b4d586681bbeba52726a1b`  
		Last Modified: Sat, 27 Apr 2019 13:20:40 GMT  
		Size: 173.9 MB (173877329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92dd42f2e604db5e9dfb7b161380157e85aa9d715ef42bdbc5c190471ceef81`  
		Last Modified: Sat, 27 Apr 2019 13:16:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:1fd644d53aa29bbbe72ed80a1472db7cc7aef47509f6e9965f4e69a274257850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:3aeeda568f91dd5a5f65dd21d4c03eaca76068ad4a5e7c80124f24c8cfdfefdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.5 MB (434458332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49138c24b541302fc3cd4a127042fcc7a068701b86f561be9da3acc89318813d`
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

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:3c05721c5483e57959647162307b2e20c61e0730204497ae85125f1a569dbfb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385904771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a720a519a61f06b6683a2910340d266aa1d3b4957642377f7c09a0767e0ad46`
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

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cac0ae33692fa6859178af5a672f0af1e815a78f6d36cec18fbb26fa877937a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.7 MB (364737151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca2ec2bf1b54e097c013ec194cf5b72a312d2ffe103bd82bbbe5b9deb349669`
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

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:f3d717d895ebae831d6166bc53077b6e3fb90480eabb3f3152173180d0637e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:d0a2d478b14aaaa52ecf6b7150e5ef9a30070fe378239eaf9460959c3d5c9a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.6 MB (794601966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2780e620d31865e3571736c3bd88a6f4ae1ba05024c39fd238a7b78a52b1f481`
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
# Sat, 27 Apr 2019 00:04:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6ff75206ceeb2e736609370ad14769f4063ec0bf7897ea408c39575601712cef`  
		Last Modified: Sat, 27 Apr 2019 00:21:42 GMT  
		Size: 360.1 MB (360143634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:00cc194b4258ae7fca0f9e311d045689e3da2ce28f4117ee1fca4104caad3bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.1 MB (696103311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef65a330e8fca5039af6d6818f92df3f7640052e52ed41de47dfeb3afe95752a`
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
# Sat, 27 Apr 2019 13:10:58 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:64d048b998bb6e18a0c391fc937ef80c831947a4d27174b4a9b8bbb302666b08`  
		Last Modified: Sat, 27 Apr 2019 13:26:05 GMT  
		Size: 310.2 MB (310198540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bfb1ccf62fea6c31057a56d3847483b622c59fc6bf776e5729ea6610a81a21a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **707.5 MB (707503539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e66c57b5f06839f05db3ed28344134fac022a69090cee68173710d9c46da248e`
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
# Sat, 27 Apr 2019 12:41:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:da2f50bec05623803165904892a6c8ba2a7577d2160ba24074f7f883f9341dd1`  
		Last Modified: Sat, 27 Apr 2019 13:46:20 GMT  
		Size: 342.8 MB (342766388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:f3d717d895ebae831d6166bc53077b6e3fb90480eabb3f3152173180d0637e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:d0a2d478b14aaaa52ecf6b7150e5ef9a30070fe378239eaf9460959c3d5c9a26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.6 MB (794601966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2780e620d31865e3571736c3bd88a6f4ae1ba05024c39fd238a7b78a52b1f481`
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
# Sat, 27 Apr 2019 00:04:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6ff75206ceeb2e736609370ad14769f4063ec0bf7897ea408c39575601712cef`  
		Last Modified: Sat, 27 Apr 2019 00:21:42 GMT  
		Size: 360.1 MB (360143634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:00cc194b4258ae7fca0f9e311d045689e3da2ce28f4117ee1fca4104caad3bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.1 MB (696103311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef65a330e8fca5039af6d6818f92df3f7640052e52ed41de47dfeb3afe95752a`
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
# Sat, 27 Apr 2019 13:10:58 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:64d048b998bb6e18a0c391fc937ef80c831947a4d27174b4a9b8bbb302666b08`  
		Last Modified: Sat, 27 Apr 2019 13:26:05 GMT  
		Size: 310.2 MB (310198540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bfb1ccf62fea6c31057a56d3847483b622c59fc6bf776e5729ea6610a81a21a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **707.5 MB (707503539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e66c57b5f06839f05db3ed28344134fac022a69090cee68173710d9c46da248e`
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
# Sat, 27 Apr 2019 12:41:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:da2f50bec05623803165904892a6c8ba2a7577d2160ba24074f7f883f9341dd1`  
		Last Modified: Sat, 27 Apr 2019 13:46:20 GMT  
		Size: 342.8 MB (342766388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:8f341808e387aa40fcebf22ab5ebd03c726b91c27e410782602d3ab3ab690006
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:b4cf67485909a6d6f37875b4d2d713125105287fecdbfea5e2d296fa21f7f656
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.3 MB (879251772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b06b4f9aaebbceb47d883055ee5c74f92a3cf62ec07156f3f609576932426c3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:36:22 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 03:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:37:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:37:34 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:38:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:41:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6cfe64221d0b53c78e9acc1f20d7f4fd9cfc86dee8168b5013663fa5fba7cb`  
		Last Modified: Wed, 27 Mar 2019 03:46:12 GMT  
		Size: 269.4 MB (269420223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c63fd5b8c87481c5eca408f4ad5207cb2bb7af7484368602912faa00662bc6d`  
		Last Modified: Wed, 27 Mar 2019 03:45:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddde974b65f3579647fc9723f1efd7a03484eeb5f7576887b2277f5684eb2082`  
		Last Modified: Wed, 27 Mar 2019 03:46:36 GMT  
		Size: 108.5 MB (108461848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca87b3cc48f01342efc7740fd5e4089d912e3f313642fa06784814be53be0eab`  
		Last Modified: Wed, 27 Mar 2019 03:48:19 GMT  
		Size: 380.8 MB (380759730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bdd87f84b37ec8eb47aa57e2657bf6af67d46d77059aa00fbf15a03fe18085b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.0 MB (796953566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d19513cf4c44b5525512934ad2eefc6c10b0eb62b9fccdcb3f25d4383d305d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 16:29:26 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 16:40:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:40:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 16:40:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 16:40:31 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:45:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:06:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f8c8997cc36e3a773e7cf60b9ef94b54ce8a908809b365db44bca39460641c`  
		Last Modified: Wed, 27 Mar 2019 17:15:45 GMT  
		Size: 223.6 MB (223619842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1501ec1c53ae64a49c2f352362485137c585ee1c2b3ff3d83aa3b7b454f8f677`  
		Last Modified: Wed, 27 Mar 2019 17:14:14 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973bacf086c78a493f752bfe360fdc4fabd84c0ff45b8b68a125c555c2af12fa`  
		Last Modified: Wed, 27 Mar 2019 17:16:27 GMT  
		Size: 102.9 MB (102941102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff451a6e4f6b6d38893f5c4b7801bf255dd92c8b92b858da1e624ca3ae2665cb`  
		Last Modified: Wed, 27 Mar 2019 17:20:29 GMT  
		Size: 355.4 MB (355386421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:4912702534914f0cd17edaa8710c281029210bc2bc3ccdca19245709b5422d1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

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

### `ros:melodic-robot` - linux; arm variant v7

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

### `ros:melodic-robot` - linux; arm64 variant v8

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

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:4912702534914f0cd17edaa8710c281029210bc2bc3ccdca19245709b5422d1c
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

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:5f5e91e572161b452497480a00f2af4907c54d999825b02f9c6ee76e6dfbcb6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:48955a014647f793a404c3fe615f9e6653cec96e5a35c4198c09bedc6755ac8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.8 MB (553807936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91910882e76fb55a84a702740fd89b114845ac4537fac304b2020cbc1a6c7aed`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:36:22 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 03:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:37:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:37:34 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:38:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:39:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6cfe64221d0b53c78e9acc1f20d7f4fd9cfc86dee8168b5013663fa5fba7cb`  
		Last Modified: Wed, 27 Mar 2019 03:46:12 GMT  
		Size: 269.4 MB (269420223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c63fd5b8c87481c5eca408f4ad5207cb2bb7af7484368602912faa00662bc6d`  
		Last Modified: Wed, 27 Mar 2019 03:45:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddde974b65f3579647fc9723f1efd7a03484eeb5f7576887b2277f5684eb2082`  
		Last Modified: Wed, 27 Mar 2019 03:46:36 GMT  
		Size: 108.5 MB (108461848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cc03b917fc4f0f7fbccc24f3128ed8426be044be475a436dbdcc6863639e96`  
		Last Modified: Wed, 27 Mar 2019 03:46:53 GMT  
		Size: 55.3 MB (55315894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2dbea8c5d9def2b7efee36a3985adf991f64ac0b97fc7ba38c920ffb97bf170e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.2 MB (494169918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0daf731765e513baf4ae00e470aafda80f86ee8d062293eb3a57f6fc3cb2a83`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 16:29:26 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 16:40:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:40:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 16:40:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 16:40:31 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:45:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f8c8997cc36e3a773e7cf60b9ef94b54ce8a908809b365db44bca39460641c`  
		Last Modified: Wed, 27 Mar 2019 17:15:45 GMT  
		Size: 223.6 MB (223619842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1501ec1c53ae64a49c2f352362485137c585ee1c2b3ff3d83aa3b7b454f8f677`  
		Last Modified: Wed, 27 Mar 2019 17:14:14 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973bacf086c78a493f752bfe360fdc4fabd84c0ff45b8b68a125c555c2af12fa`  
		Last Modified: Wed, 27 Mar 2019 17:16:27 GMT  
		Size: 102.9 MB (102941102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a73ef88ff398d0cef4da413f4348af7e9fbb286c090870791978c4e1ef5120`  
		Last Modified: Wed, 27 Mar 2019 17:17:08 GMT  
		Size: 52.6 MB (52602773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:1fd644d53aa29bbbe72ed80a1472db7cc7aef47509f6e9965f4e69a274257850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:3aeeda568f91dd5a5f65dd21d4c03eaca76068ad4a5e7c80124f24c8cfdfefdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.5 MB (434458332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49138c24b541302fc3cd4a127042fcc7a068701b86f561be9da3acc89318813d`
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

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:3c05721c5483e57959647162307b2e20c61e0730204497ae85125f1a569dbfb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385904771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a720a519a61f06b6683a2910340d266aa1d3b4957642377f7c09a0767e0ad46`
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

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cac0ae33692fa6859178af5a672f0af1e815a78f6d36cec18fbb26fa877937a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.7 MB (364737151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca2ec2bf1b54e097c013ec194cf5b72a312d2ffe103bd82bbbe5b9deb349669`
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

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:1fd644d53aa29bbbe72ed80a1472db7cc7aef47509f6e9965f4e69a274257850
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:3aeeda568f91dd5a5f65dd21d4c03eaca76068ad4a5e7c80124f24c8cfdfefdb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.5 MB (434458332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49138c24b541302fc3cd4a127042fcc7a068701b86f561be9da3acc89318813d`
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

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:3c05721c5483e57959647162307b2e20c61e0730204497ae85125f1a569dbfb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.9 MB (385904771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a720a519a61f06b6683a2910340d266aa1d3b4957642377f7c09a0767e0ad46`
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

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cac0ae33692fa6859178af5a672f0af1e815a78f6d36cec18fbb26fa877937a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.7 MB (364737151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dca2ec2bf1b54e097c013ec194cf5b72a312d2ffe103bd82bbbe5b9deb349669`
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

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:4f6cc42b45bbdaaba276d26985115ddf3069fec085557672f4315a70ecf264b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:46b82a41248c76f82341ffa7cea1f8e33ea9a1123679ff4407d1bf791948c1eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.5 MB (498492042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27190f36ba5d54d6ad773280fc14d78d4ca4affc14361a5c6abbba5ae956464`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:36:22 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 03:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:37:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:37:34 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:38:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6cfe64221d0b53c78e9acc1f20d7f4fd9cfc86dee8168b5013663fa5fba7cb`  
		Last Modified: Wed, 27 Mar 2019 03:46:12 GMT  
		Size: 269.4 MB (269420223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c63fd5b8c87481c5eca408f4ad5207cb2bb7af7484368602912faa00662bc6d`  
		Last Modified: Wed, 27 Mar 2019 03:45:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddde974b65f3579647fc9723f1efd7a03484eeb5f7576887b2277f5684eb2082`  
		Last Modified: Wed, 27 Mar 2019 03:46:36 GMT  
		Size: 108.5 MB (108461848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:666c7bffed9c0baf4f4317756f24402da6a04a0ebb4a9560c0242a347986ab17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.6 MB (441567145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d6577b9e89dd25483721a8d74250626734d793614f67ee436306594fb56074`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 16:29:26 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 16:40:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:40:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 16:40:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 16:40:31 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 16:45:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f8c8997cc36e3a773e7cf60b9ef94b54ce8a908809b365db44bca39460641c`  
		Last Modified: Wed, 27 Mar 2019 17:15:45 GMT  
		Size: 223.6 MB (223619842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1501ec1c53ae64a49c2f352362485137c585ee1c2b3ff3d83aa3b7b454f8f677`  
		Last Modified: Wed, 27 Mar 2019 17:14:14 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973bacf086c78a493f752bfe360fdc4fabd84c0ff45b8b68a125c555c2af12fa`  
		Last Modified: Wed, 27 Mar 2019 17:16:27 GMT  
		Size: 102.9 MB (102941102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:c929470016b917dd8ac9eda16745b2331b1c81c0993fa7cc3c3138e0207c1981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:018f74235979470b4fb1d8cd4c512a475ee22aae691bd39e3e9facf77b20f454
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.8 MB (363822951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77c90df460d34d1227d86e22ab3a71482cfaf8c54bb1f4d205dc3257bebfc8d`
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

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:3955f0c402085e1621d32864ef9394f4f0c05957f13cf1c8c60170c0dec66fcf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.8 MB (323801911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bf350277dbe63fa262a58be02e3d0fd43f2582292993e84da32f9e6c46de55`
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

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6384aad5f77661f06c7d60bfa3f0d9f0d8c07388c5054b2bba176e6e8a9209a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299159122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e248d8e938ff3e90314703e1ba0b9c26c83a70f7359f36702d1dc89fb09e3e4f`
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

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:c929470016b917dd8ac9eda16745b2331b1c81c0993fa7cc3c3138e0207c1981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:018f74235979470b4fb1d8cd4c512a475ee22aae691bd39e3e9facf77b20f454
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.8 MB (363822951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77c90df460d34d1227d86e22ab3a71482cfaf8c54bb1f4d205dc3257bebfc8d`
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

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:3955f0c402085e1621d32864ef9394f4f0c05957f13cf1c8c60170c0dec66fcf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.8 MB (323801911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bf350277dbe63fa262a58be02e3d0fd43f2582292993e84da32f9e6c46de55`
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

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6384aad5f77661f06c7d60bfa3f0d9f0d8c07388c5054b2bba176e6e8a9209a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299159122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e248d8e938ff3e90314703e1ba0b9c26c83a70f7359f36702d1dc89fb09e3e4f`
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

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:b95e58c7501ddeb64102af822750360c817ac9b8e5a2d42115c2620b5758c212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e7f374a8fcdcc27c5d3062c8c3f1025516953ac59c25657e8b7fd9b30d6a2de3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390030194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb854859bc710f0267260e072469f669476338c32c35c7d4cf60df418c3fb91`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:36:22 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 03:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:37:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:37:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6cfe64221d0b53c78e9acc1f20d7f4fd9cfc86dee8168b5013663fa5fba7cb`  
		Last Modified: Wed, 27 Mar 2019 03:46:12 GMT  
		Size: 269.4 MB (269420223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c63fd5b8c87481c5eca408f4ad5207cb2bb7af7484368602912faa00662bc6d`  
		Last Modified: Wed, 27 Mar 2019 03:45:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:be21200c99cfe2ffbc63e311eb70d2d79b82104210062e8848df5de48c415f88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338626043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e74a8b89c1700c44e01c897e2d9d65e2ffa23288f9898574de75903890de09c5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 16:29:26 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 16:40:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 16:40:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 16:40:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 16:40:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f8c8997cc36e3a773e7cf60b9ef94b54ce8a908809b365db44bca39460641c`  
		Last Modified: Wed, 27 Mar 2019 17:15:45 GMT  
		Size: 223.6 MB (223619842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1501ec1c53ae64a49c2f352362485137c585ee1c2b3ff3d83aa3b7b454f8f677`  
		Last Modified: Wed, 27 Mar 2019 17:14:14 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
