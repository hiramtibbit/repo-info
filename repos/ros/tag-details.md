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
$ docker pull ros@sha256:fe03bbaffd4f00e37cfc6d4f692cbc57d96fe4f535289f94026f12f06628c4be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5e4ec1903dc8172c250bde87f56437b8d04962f78e63ed551c2663b7abe37fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204875585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417af7530fc25f6b4167dc197bc91059d936d738841f2ee08eefd6878631473d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:12:14 GMT
ENV ROS_DISTRO=bouncy
# Thu, 14 Mar 2019 12:16:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:16:22 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:16:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:16:24 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 12:17:10 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1dd5ef3ae9dd71d22a0bf3aedc101f1f479be80575baa683a868a3ea62c30b`  
		Last Modified: Thu, 14 Mar 2019 13:07:59 GMT  
		Size: 37.6 MB (37646804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b68fdd90ca2a1743fe8590230a4157c4936128171a9fe8d5f2a59c1efa32fa`  
		Last Modified: Thu, 14 Mar 2019 13:04:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d560fcb3446d38869f7fc967169f2ca028a255105e1b60bd9827cb333ca038d`  
		Last Modified: Thu, 14 Mar 2019 13:08:24 GMT  
		Size: 2.9 MB (2893350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:fe03bbaffd4f00e37cfc6d4f692cbc57d96fe4f535289f94026f12f06628c4be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5e4ec1903dc8172c250bde87f56437b8d04962f78e63ed551c2663b7abe37fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204875585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417af7530fc25f6b4167dc197bc91059d936d738841f2ee08eefd6878631473d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:12:14 GMT
ENV ROS_DISTRO=bouncy
# Thu, 14 Mar 2019 12:16:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:16:22 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:16:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:16:24 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 12:17:10 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1dd5ef3ae9dd71d22a0bf3aedc101f1f479be80575baa683a868a3ea62c30b`  
		Last Modified: Thu, 14 Mar 2019 13:07:59 GMT  
		Size: 37.6 MB (37646804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b68fdd90ca2a1743fe8590230a4157c4936128171a9fe8d5f2a59c1efa32fa`  
		Last Modified: Thu, 14 Mar 2019 13:04:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d560fcb3446d38869f7fc967169f2ca028a255105e1b60bd9827cb333ca038d`  
		Last Modified: Thu, 14 Mar 2019 13:08:24 GMT  
		Size: 2.9 MB (2893350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:fe03bbaffd4f00e37cfc6d4f692cbc57d96fe4f535289f94026f12f06628c4be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5e4ec1903dc8172c250bde87f56437b8d04962f78e63ed551c2663b7abe37fc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204875585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:417af7530fc25f6b4167dc197bc91059d936d738841f2ee08eefd6878631473d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:12:14 GMT
ENV ROS_DISTRO=bouncy
# Thu, 14 Mar 2019 12:16:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:16:22 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:16:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:16:24 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 12:17:10 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1dd5ef3ae9dd71d22a0bf3aedc101f1f479be80575baa683a868a3ea62c30b`  
		Last Modified: Thu, 14 Mar 2019 13:07:59 GMT  
		Size: 37.6 MB (37646804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b68fdd90ca2a1743fe8590230a4157c4936128171a9fe8d5f2a59c1efa32fa`  
		Last Modified: Thu, 14 Mar 2019 13:04:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d560fcb3446d38869f7fc967169f2ca028a255105e1b60bd9827cb333ca038d`  
		Last Modified: Thu, 14 Mar 2019 13:08:24 GMT  
		Size: 2.9 MB (2893350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:6aa8ab6ddbfb8d7057e4aa362af416953d066f82cf45ba9c77b703e35badacc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a7ece1fe93d6730f635fb84d50ce2b756d6e21aca43d9bc8f3448c2fd2e7606a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271476384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814cb2c9be12de15baeba0ddb66cf7d68b997b8b11c103b29ad39e5738d23256`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bfb6bd94c6ba307c68b8f0075e8d0bd289898d89610a36fdfec87a71e873041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201982235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d0608255e7bdfbbdc7617547341b6892f421c3c73b04e7119e00ccd9087b39`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:12:14 GMT
ENV ROS_DISTRO=bouncy
# Thu, 14 Mar 2019 12:16:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:16:22 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:16:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:16:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1dd5ef3ae9dd71d22a0bf3aedc101f1f479be80575baa683a868a3ea62c30b`  
		Last Modified: Thu, 14 Mar 2019 13:07:59 GMT  
		Size: 37.6 MB (37646804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b68fdd90ca2a1743fe8590230a4157c4936128171a9fe8d5f2a59c1efa32fa`  
		Last Modified: Thu, 14 Mar 2019 13:04:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:6aa8ab6ddbfb8d7057e4aa362af416953d066f82cf45ba9c77b703e35badacc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:a7ece1fe93d6730f635fb84d50ce2b756d6e21aca43d9bc8f3448c2fd2e7606a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271476384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814cb2c9be12de15baeba0ddb66cf7d68b997b8b11c103b29ad39e5738d23256`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bfb6bd94c6ba307c68b8f0075e8d0bd289898d89610a36fdfec87a71e873041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (201982235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05d0608255e7bdfbbdc7617547341b6892f421c3c73b04e7119e00ccd9087b39`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:12:14 GMT
ENV ROS_DISTRO=bouncy
# Thu, 14 Mar 2019 12:16:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:16:22 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:16:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:16:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1dd5ef3ae9dd71d22a0bf3aedc101f1f479be80575baa683a868a3ea62c30b`  
		Last Modified: Thu, 14 Mar 2019 13:07:59 GMT  
		Size: 37.6 MB (37646804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b68fdd90ca2a1743fe8590230a4157c4936128171a9fe8d5f2a59c1efa32fa`  
		Last Modified: Thu, 14 Mar 2019 13:04:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:a939faa224123df63c0917e8088c2ddfbd03869b04b5146771ceb5a9198f20fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:6d63f01873c47c4619e500e227bc604f6fabdcf38aba0627337fa14060beb569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277100817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e3637eed09676a9554ac27367ebc9feee9473a7b45151f48c6aece02e55f5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:26:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a8888358fc52fabdbf818f595b904da49503d19ebc0aba977904de5ca3e36b`  
		Last Modified: Tue, 12 Mar 2019 01:40:43 GMT  
		Size: 3.2 MB (3174600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ae4a9aad6e91c0b37fc79005c8ae18ad75aa4164ceeeb9ea7cbe451e11293bd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207315432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed9642886bc25c6bfdd906834238839b83f8e3bf40f14198be1901be1509753`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:17:18 GMT
ENV ROS_DISTRO=crystal
# Thu, 14 Mar 2019 12:21:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:22:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:22:02 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 12:22:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffe8094a66e559324195334f2d6bd325e69491760b0ef54c8f99290b6140298`  
		Last Modified: Thu, 14 Mar 2019 13:09:37 GMT  
		Size: 40.0 MB (40041280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fadbd9dbdda7be74e36d72ba8480ed4b7d2525c99ae337097fcffbbd9d1b7e`  
		Last Modified: Thu, 14 Mar 2019 13:08:43 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f95f38619887b60c057c669c36abe4c78b3bc3742de66b2cf9e099ff470ae55`  
		Last Modified: Thu, 14 Mar 2019 13:09:52 GMT  
		Size: 2.9 MB (2938722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:a939faa224123df63c0917e8088c2ddfbd03869b04b5146771ceb5a9198f20fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6d63f01873c47c4619e500e227bc604f6fabdcf38aba0627337fa14060beb569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277100817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e3637eed09676a9554ac27367ebc9feee9473a7b45151f48c6aece02e55f5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:26:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a8888358fc52fabdbf818f595b904da49503d19ebc0aba977904de5ca3e36b`  
		Last Modified: Tue, 12 Mar 2019 01:40:43 GMT  
		Size: 3.2 MB (3174600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ae4a9aad6e91c0b37fc79005c8ae18ad75aa4164ceeeb9ea7cbe451e11293bd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207315432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed9642886bc25c6bfdd906834238839b83f8e3bf40f14198be1901be1509753`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:17:18 GMT
ENV ROS_DISTRO=crystal
# Thu, 14 Mar 2019 12:21:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:22:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:22:02 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 12:22:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffe8094a66e559324195334f2d6bd325e69491760b0ef54c8f99290b6140298`  
		Last Modified: Thu, 14 Mar 2019 13:09:37 GMT  
		Size: 40.0 MB (40041280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fadbd9dbdda7be74e36d72ba8480ed4b7d2525c99ae337097fcffbbd9d1b7e`  
		Last Modified: Thu, 14 Mar 2019 13:08:43 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f95f38619887b60c057c669c36abe4c78b3bc3742de66b2cf9e099ff470ae55`  
		Last Modified: Thu, 14 Mar 2019 13:09:52 GMT  
		Size: 2.9 MB (2938722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:a939faa224123df63c0917e8088c2ddfbd03869b04b5146771ceb5a9198f20fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:6d63f01873c47c4619e500e227bc604f6fabdcf38aba0627337fa14060beb569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277100817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e3637eed09676a9554ac27367ebc9feee9473a7b45151f48c6aece02e55f5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:26:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a8888358fc52fabdbf818f595b904da49503d19ebc0aba977904de5ca3e36b`  
		Last Modified: Tue, 12 Mar 2019 01:40:43 GMT  
		Size: 3.2 MB (3174600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ae4a9aad6e91c0b37fc79005c8ae18ad75aa4164ceeeb9ea7cbe451e11293bd9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207315432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed9642886bc25c6bfdd906834238839b83f8e3bf40f14198be1901be1509753`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:17:18 GMT
ENV ROS_DISTRO=crystal
# Thu, 14 Mar 2019 12:21:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:22:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:22:02 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 12:22:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffe8094a66e559324195334f2d6bd325e69491760b0ef54c8f99290b6140298`  
		Last Modified: Thu, 14 Mar 2019 13:09:37 GMT  
		Size: 40.0 MB (40041280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fadbd9dbdda7be74e36d72ba8480ed4b7d2525c99ae337097fcffbbd9d1b7e`  
		Last Modified: Thu, 14 Mar 2019 13:08:43 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f95f38619887b60c057c669c36abe4c78b3bc3742de66b2cf9e099ff470ae55`  
		Last Modified: Thu, 14 Mar 2019 13:09:52 GMT  
		Size: 2.9 MB (2938722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:ec6189c15b92ed4b58bf2662b4b8f568500dade00779ef6f3bdc46e6699b028a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:90945c4880efde97a91893b7050efb4e3846910dcfafa38213b9670b0f3a4a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273926217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae7a055d7b6395822e369d5b492a159b767789c0ffe732c3c9099775280acfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:623e0e9d51fd2009f820b6634a05b189c541fd2fc2a347bae8f6f8a5afba9d3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204376710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2797b13691ef3da0d285f1b52ea0f2dd5cbb61ac92192946d63a4a509ac4d3b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:17:18 GMT
ENV ROS_DISTRO=crystal
# Thu, 14 Mar 2019 12:21:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:22:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:22:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffe8094a66e559324195334f2d6bd325e69491760b0ef54c8f99290b6140298`  
		Last Modified: Thu, 14 Mar 2019 13:09:37 GMT  
		Size: 40.0 MB (40041280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fadbd9dbdda7be74e36d72ba8480ed4b7d2525c99ae337097fcffbbd9d1b7e`  
		Last Modified: Thu, 14 Mar 2019 13:08:43 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:ec6189c15b92ed4b58bf2662b4b8f568500dade00779ef6f3bdc46e6699b028a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:90945c4880efde97a91893b7050efb4e3846910dcfafa38213b9670b0f3a4a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273926217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae7a055d7b6395822e369d5b492a159b767789c0ffe732c3c9099775280acfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:623e0e9d51fd2009f820b6634a05b189c541fd2fc2a347bae8f6f8a5afba9d3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204376710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2797b13691ef3da0d285f1b52ea0f2dd5cbb61ac92192946d63a4a509ac4d3b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:05:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 12:06:00 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 14 Mar 2019 12:11:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:11:18 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 12:11:22 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 12:12:04 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 12:12:13 GMT
RUN pip3 install -U     argcomplete
# Thu, 14 Mar 2019 12:17:18 GMT
ENV ROS_DISTRO=crystal
# Thu, 14 Mar 2019 12:21:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 12:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 14 Mar 2019 12:22:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 12:22:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73dd450468d352da69aabfee82aa7f4e468f4a3e3d8a5945cde26e703e12f61`  
		Last Modified: Thu, 14 Mar 2019 13:08:00 GMT  
		Size: 97.0 MB (96999235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0dc190d6a006b988dd33193dcd88a42f5146b59918b120c42074e77861a4d`  
		Last Modified: Thu, 14 Mar 2019 13:04:14 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd815c39ddfa6a8512dc2fd46c1ad12b40bfd4ce7b88440c9ad5305a96e213e`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 5.4 KB (5428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0183d115fd31b7fe78a12c6a5c9a8b8134d2032b0735eb8365348774d0b897`  
		Last Modified: Thu, 14 Mar 2019 13:06:43 GMT  
		Size: 36.6 MB (36607128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dd69526a458ecc7d78a0eab721640743392360c3a2a2a74ffaa43d6f87a62b7`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 614.0 KB (614044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d4468f4c4319bb0b6c37fc9a30d54cf6082d8a6f35eae1f9707c3f4d4d6ef`  
		Last Modified: Thu, 14 Mar 2019 13:04:12 GMT  
		Size: 93.9 KB (93851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffe8094a66e559324195334f2d6bd325e69491760b0ef54c8f99290b6140298`  
		Last Modified: Thu, 14 Mar 2019 13:09:37 GMT  
		Size: 40.0 MB (40041280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fadbd9dbdda7be74e36d72ba8480ed4b7d2525c99ae337097fcffbbd9d1b7e`  
		Last Modified: Thu, 14 Mar 2019 13:08:43 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:1f562d1ad27b325b949c6d855bf444c2bb303a258b7a131db863bc6f52e2c4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:317e6d4c43b6c820025e0e2811b4bef744b02bfc5f743c8a4029aeca180acb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313587501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d85ce4f50396791857e191d34a8f98601cf7d30e1e70b1f8d106d254a12c4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b3b04795a3c3d8d3f1e3cbaacc0cb8a5d4a7688c3a660b4425ce962a7417612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284601556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3a8896cd3a785a6e06af96b865d0089446c86930492cc463c55f7527e076d2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:7862204310a09715d0082a673a0f8b8d2f056a491ae19be165e4e99cfd72f23c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:a6b17743d87d885269d7817755aa4138524081a6480f97e81fb2eb8d06333a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.8 MB (549845070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c540b2e25c45ba15b7bcca2c03e15de17c3bb4404fb4ebade0788a49ae0249`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a9208730a786dac868290b8d54d2cc3da387ddf75884b97d31cdc5b154a48`  
		Last Modified: Tue, 12 Mar 2019 01:29:29 GMT  
		Size: 236.3 MB (236257569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b2d423cd21f0421918a9709e358f3d33ab3bd935e62f3f56cd75713c5b5d4dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496614594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6885431d9d074301b26bbbc5aec1e7bdd3c57f20324a2698301968cca17964`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:12:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1edae6a4d0eda5aad58b2e5b275a0507292ee89dec577a7445748fb5f53abc`  
		Last Modified: Tue, 12 Mar 2019 13:48:24 GMT  
		Size: 212.0 MB (212013038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:7862204310a09715d0082a673a0f8b8d2f056a491ae19be165e4e99cfd72f23c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:a6b17743d87d885269d7817755aa4138524081a6480f97e81fb2eb8d06333a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.8 MB (549845070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c540b2e25c45ba15b7bcca2c03e15de17c3bb4404fb4ebade0788a49ae0249`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a9208730a786dac868290b8d54d2cc3da387ddf75884b97d31cdc5b154a48`  
		Last Modified: Tue, 12 Mar 2019 01:29:29 GMT  
		Size: 236.3 MB (236257569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b2d423cd21f0421918a9709e358f3d33ab3bd935e62f3f56cd75713c5b5d4dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496614594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6885431d9d074301b26bbbc5aec1e7bdd3c57f20324a2698301968cca17964`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:12:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1edae6a4d0eda5aad58b2e5b275a0507292ee89dec577a7445748fb5f53abc`  
		Last Modified: Tue, 12 Mar 2019 13:48:24 GMT  
		Size: 212.0 MB (212013038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:70805cbb44c1f3f53169dae87aa6f9b26700a7417fd490e5e7a8fb056b80819c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:60f3ecd35afd2bf953d67d8728d2aa02a10499f182500bc7deca18833a1b028d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332618696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b89b8993940b64c403bcbaf4cfd78035cf00dc5c1b0b2969ba84404c1abf849`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:51:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd34038eab2a745f3f09b15bfbdf8d0c82867d47c319562c31e785cfb6e2708`  
		Last Modified: Tue, 12 Mar 2019 01:28:28 GMT  
		Size: 19.0 MB (19031195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:332ea7acdf0a98c006092242bfefa55f109cc1debe00c2d8a3fb2a16dd642bf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302289589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b247a4771406d5946c03d3e0fc0d8ab12963aeab4f57c87e749b20d69f99c87c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c1160c8ec565980d9fd7ea2e7cb074965b24b47c82aa68c8ff54434b1df1bc`  
		Last Modified: Tue, 12 Mar 2019 13:47:16 GMT  
		Size: 17.7 MB (17688033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:70805cbb44c1f3f53169dae87aa6f9b26700a7417fd490e5e7a8fb056b80819c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:60f3ecd35afd2bf953d67d8728d2aa02a10499f182500bc7deca18833a1b028d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332618696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b89b8993940b64c403bcbaf4cfd78035cf00dc5c1b0b2969ba84404c1abf849`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:51:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd34038eab2a745f3f09b15bfbdf8d0c82867d47c319562c31e785cfb6e2708`  
		Last Modified: Tue, 12 Mar 2019 01:28:28 GMT  
		Size: 19.0 MB (19031195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:332ea7acdf0a98c006092242bfefa55f109cc1debe00c2d8a3fb2a16dd642bf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302289589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b247a4771406d5946c03d3e0fc0d8ab12963aeab4f57c87e749b20d69f99c87c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c1160c8ec565980d9fd7ea2e7cb074965b24b47c82aa68c8ff54434b1df1bc`  
		Last Modified: Tue, 12 Mar 2019 13:47:16 GMT  
		Size: 17.7 MB (17688033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:1f562d1ad27b325b949c6d855bf444c2bb303a258b7a131db863bc6f52e2c4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:317e6d4c43b6c820025e0e2811b4bef744b02bfc5f743c8a4029aeca180acb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313587501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d85ce4f50396791857e191d34a8f98601cf7d30e1e70b1f8d106d254a12c4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b3b04795a3c3d8d3f1e3cbaacc0cb8a5d4a7688c3a660b4425ce962a7417612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284601556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3a8896cd3a785a6e06af96b865d0089446c86930492cc463c55f7527e076d2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:1f562d1ad27b325b949c6d855bf444c2bb303a258b7a131db863bc6f52e2c4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:317e6d4c43b6c820025e0e2811b4bef744b02bfc5f743c8a4029aeca180acb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313587501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d85ce4f50396791857e191d34a8f98601cf7d30e1e70b1f8d106d254a12c4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b3b04795a3c3d8d3f1e3cbaacc0cb8a5d4a7688c3a660b4425ce962a7417612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284601556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3a8896cd3a785a6e06af96b865d0089446c86930492cc463c55f7527e076d2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:021fa21a112f515cbc53c62cf485c73663943ff821e39260039d749c29e7d807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3e3b6fddefc1cfc3b1d0e4aa9affbe1b381869cd8043b70de48f63fa4577ff5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266810885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd615d654c9fb5581f86d2631ff2ae0f5e204b8f2e33962fbae5b3a6323513f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:64bed390752e46486ff24f1e5be291106ea452e59c801cfbd94d74692709f4e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244212683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8bdf6b3b7396f7d4fbb5cbc13ae52fead24adb7ef67fe83128c00d8eed72fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:021fa21a112f515cbc53c62cf485c73663943ff821e39260039d749c29e7d807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:3e3b6fddefc1cfc3b1d0e4aa9affbe1b381869cd8043b70de48f63fa4577ff5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266810885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd615d654c9fb5581f86d2631ff2ae0f5e204b8f2e33962fbae5b3a6323513f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:64bed390752e46486ff24f1e5be291106ea452e59c801cfbd94d74692709f4e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244212683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8bdf6b3b7396f7d4fbb5cbc13ae52fead24adb7ef67fe83128c00d8eed72fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:3da5c64546a516f59a19ea62fa0fdeaf1017db1c15443eaf34ce6afe6da1f103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:912144787df7fe2cc5593a2daffc8acd5637ada84e9e7c8aa5ff140a10c176e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393012441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3c241a5439921a7728c371076de683866c723ef0e606fa548f191f14a0c26e`
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

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:a72fa9bafc7e0309ae85bc490f26e43f260a75afae39bf2b76749c7502c2b5d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.5 MB (343506476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68166d57464f0f9753c6ad0e158970850194778aed0dc9402df71f4cf927c10`
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

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0bb21700f3debfa10d33f98dc1ab2cbce94add40ade348d65bc8727c987162ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357258735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a26f1ace97b266c2d7518880b134840c5c4219b91885184f042f5146c112002`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:14:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131d3560d32cda7bce849bba64a1cb479881d9707ba2f1039467bbef4f523b4`  
		Last Modified: Thu, 14 Mar 2019 12:31:05 GMT  
		Size: 85.3 MB (85301810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:db3568ca8f0f1904972a13ce9f2ce5bdd3106815d6854c92fa22e2289e816133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:66107467cdca69bc363230b40a74a70c8e5347706907c44ee2ab4e601d38fe1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **733.7 MB (733715073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b242545239e9fa262942e671b8fd31b559bc83fda433dc0b91eaa7127efe8a1c`
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
# Tue, 12 Mar 2019 01:04:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:67860c008c974c7a528149e19d184a33d0a7651cbe13b58e387cd00613571f7f`  
		Last Modified: Tue, 12 Mar 2019 01:32:48 GMT  
		Size: 340.7 MB (340702632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:8bb3ebf53ce0bab33852d3a7c736aa9de46c2e36eb757c0a64c6ad2c8dd9f78a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.2 MB (624245267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce253db5dad8b63980b598db704e19df7be2593fcba1d6ca30be63829871a7e`
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
# Tue, 12 Mar 2019 13:24:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:19cc990bc85d4ffa11708685f784d11830706133be57d118c30025c0a5694ad0`  
		Last Modified: Tue, 12 Mar 2019 13:52:12 GMT  
		Size: 280.7 MB (280738791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:48506e3ad61849f5dc5b646b28df5be0c9ca6b15e0a4e631a3c4549174e486b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.5 MB (648499153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0645b0fe5b958f7255c30f9f220b63a3513743123948f5ab46d75cb22e2e0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:14:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131d3560d32cda7bce849bba64a1cb479881d9707ba2f1039467bbef4f523b4`  
		Last Modified: Thu, 14 Mar 2019 12:31:05 GMT  
		Size: 85.3 MB (85301810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab678d26bd82dcdd195ad911dc10f62a6fab9867ad609ffc1ffc896744401e3`  
		Last Modified: Thu, 14 Mar 2019 12:39:02 GMT  
		Size: 291.2 MB (291240418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:db3568ca8f0f1904972a13ce9f2ce5bdd3106815d6854c92fa22e2289e816133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:66107467cdca69bc363230b40a74a70c8e5347706907c44ee2ab4e601d38fe1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **733.7 MB (733715073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b242545239e9fa262942e671b8fd31b559bc83fda433dc0b91eaa7127efe8a1c`
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
# Tue, 12 Mar 2019 01:04:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:67860c008c974c7a528149e19d184a33d0a7651cbe13b58e387cd00613571f7f`  
		Last Modified: Tue, 12 Mar 2019 01:32:48 GMT  
		Size: 340.7 MB (340702632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:8bb3ebf53ce0bab33852d3a7c736aa9de46c2e36eb757c0a64c6ad2c8dd9f78a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.2 MB (624245267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce253db5dad8b63980b598db704e19df7be2593fcba1d6ca30be63829871a7e`
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
# Tue, 12 Mar 2019 13:24:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:19cc990bc85d4ffa11708685f784d11830706133be57d118c30025c0a5694ad0`  
		Last Modified: Tue, 12 Mar 2019 13:52:12 GMT  
		Size: 280.7 MB (280738791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:48506e3ad61849f5dc5b646b28df5be0c9ca6b15e0a4e631a3c4549174e486b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.5 MB (648499153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0645b0fe5b958f7255c30f9f220b63a3513743123948f5ab46d75cb22e2e0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:14:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131d3560d32cda7bce849bba64a1cb479881d9707ba2f1039467bbef4f523b4`  
		Last Modified: Thu, 14 Mar 2019 12:31:05 GMT  
		Size: 85.3 MB (85301810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab678d26bd82dcdd195ad911dc10f62a6fab9867ad609ffc1ffc896744401e3`  
		Last Modified: Thu, 14 Mar 2019 12:39:02 GMT  
		Size: 291.2 MB (291240418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:ee32c2fcfe64ae835d3406127a928b0fca127771b89fa592ddcfe14183d684fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

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

### `ros:kinetic-robot` - linux; arm variant v7

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

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d046d1a9481b5ec16b5b4727c6be3461b2c09d5b6f02a6a04671c0bdb6c5206b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.2 MB (451232900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa892f9350c819dfe587d0410be4a8c974193528494e4eb07335a7ddee8c7ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:14:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:20:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131d3560d32cda7bce849bba64a1cb479881d9707ba2f1039467bbef4f523b4`  
		Last Modified: Thu, 14 Mar 2019 12:31:05 GMT  
		Size: 85.3 MB (85301810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2fa5e0fb2f4c6977b5d9b69cb2088d777fcc96d1be10eb6a1d1b86c1f95cd5`  
		Last Modified: Thu, 14 Mar 2019 12:35:26 GMT  
		Size: 94.0 MB (93974165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:ee32c2fcfe64ae835d3406127a928b0fca127771b89fa592ddcfe14183d684fd
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
$ docker pull ros@sha256:d046d1a9481b5ec16b5b4727c6be3461b2c09d5b6f02a6a04671c0bdb6c5206b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.2 MB (451232900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa892f9350c819dfe587d0410be4a8c974193528494e4eb07335a7ddee8c7ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:14:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:20:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131d3560d32cda7bce849bba64a1cb479881d9707ba2f1039467bbef4f523b4`  
		Last Modified: Thu, 14 Mar 2019 12:31:05 GMT  
		Size: 85.3 MB (85301810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2fa5e0fb2f4c6977b5d9b69cb2088d777fcc96d1be10eb6a1d1b86c1f95cd5`  
		Last Modified: Thu, 14 Mar 2019 12:35:26 GMT  
		Size: 94.0 MB (93974165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:3da5c64546a516f59a19ea62fa0fdeaf1017db1c15443eaf34ce6afe6da1f103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:912144787df7fe2cc5593a2daffc8acd5637ada84e9e7c8aa5ff140a10c176e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393012441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3c241a5439921a7728c371076de683866c723ef0e606fa548f191f14a0c26e`
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

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:a72fa9bafc7e0309ae85bc490f26e43f260a75afae39bf2b76749c7502c2b5d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.5 MB (343506476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68166d57464f0f9753c6ad0e158970850194778aed0dc9402df71f4cf927c10`
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

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0bb21700f3debfa10d33f98dc1ab2cbce94add40ade348d65bc8727c987162ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357258735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a26f1ace97b266c2d7518880b134840c5c4219b91885184f042f5146c112002`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:14:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131d3560d32cda7bce849bba64a1cb479881d9707ba2f1039467bbef4f523b4`  
		Last Modified: Thu, 14 Mar 2019 12:31:05 GMT  
		Size: 85.3 MB (85301810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:3da5c64546a516f59a19ea62fa0fdeaf1017db1c15443eaf34ce6afe6da1f103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:912144787df7fe2cc5593a2daffc8acd5637ada84e9e7c8aa5ff140a10c176e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393012441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3c241a5439921a7728c371076de683866c723ef0e606fa548f191f14a0c26e`
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

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a72fa9bafc7e0309ae85bc490f26e43f260a75afae39bf2b76749c7502c2b5d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.5 MB (343506476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68166d57464f0f9753c6ad0e158970850194778aed0dc9402df71f4cf927c10`
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

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0bb21700f3debfa10d33f98dc1ab2cbce94add40ade348d65bc8727c987162ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357258735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a26f1ace97b266c2d7518880b134840c5c4219b91885184f042f5146c112002`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:14:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0131d3560d32cda7bce849bba64a1cb479881d9707ba2f1039467bbef4f523b4`  
		Last Modified: Thu, 14 Mar 2019 12:31:05 GMT  
		Size: 85.3 MB (85301810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:d7c995820359209a33c098fc44de42ff22a762459a6fb4c94003b7705bd2bd53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3ae4b6884b8a9e98fed567dc12d6a2d6f8639394cc1c33d74c47a5c9ad910c36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298972395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839d728ffc58a82583f10ed00d06e0d204f74112256bc57672f8c1a1c8a93752`
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

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:2cb148679eff3beea2dfa56714b2ec47b159b270e39076fdbd362e8e84061648
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259645204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd182c0dadb759a96f8f3f9361d506c44702ca61a5695582b0fb39fbf81f2f8`
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

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:873d889f390b390648b8c89c17a4bcedebdbabdd8264709d8f21960e91eb5bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271956925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e83eebf45a51cba8e5bf54740d68a492ae4cbf09eb1c228817138b4db1c5de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:d7c995820359209a33c098fc44de42ff22a762459a6fb4c94003b7705bd2bd53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3ae4b6884b8a9e98fed567dc12d6a2d6f8639394cc1c33d74c47a5c9ad910c36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298972395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839d728ffc58a82583f10ed00d06e0d204f74112256bc57672f8c1a1c8a93752`
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

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:2cb148679eff3beea2dfa56714b2ec47b159b270e39076fdbd362e8e84061648
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259645204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd182c0dadb759a96f8f3f9361d506c44702ca61a5695582b0fb39fbf81f2f8`
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

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:873d889f390b390648b8c89c17a4bcedebdbabdd8264709d8f21960e91eb5bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271956925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e83eebf45a51cba8e5bf54740d68a492ae4cbf09eb1c228817138b4db1c5de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:00:06 GMT
ENV ROS_DISTRO=kinetic
# Thu, 14 Mar 2019 10:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:08:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:08:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:08:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd6ec153600917c27d256ceed8759df2afc1e4db9af24ece3067f9812b6b939`  
		Last Modified: Thu, 14 Mar 2019 12:28:22 GMT  
		Size: 173.9 MB (173875777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3956bbf9e8672837f2ecfd64e546a40e8aa0488f8f010d62f271ee25244e7ea3`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:5fe1d0ea6f405edf529a8fe5a96d9f20bd7030b573edf7b9ce4f17641ceca1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:8bacdaebe0172f1d360df510e60c227d3b6fb7b47f866c920c75639aff3b5368
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381711006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4da7fd71238a26151dbcece1669da77643670a8677bf059c4b96043fec01f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7b2fe0c9069f36e0d2878a5acbf6544ea49c074567ac0a7e486493595a3e9a2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.5 MB (360496531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614a81c7e8582eb448b72c44df7937d1075cea0da95e2668f6fdf4849a2339f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:f3ecf8333a53a19d7807df7b88242160dde22a0cd4dfcbbbd1af5050f7c41dc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:1f2298ca9dcef83a706d105d4b4f361b72a9bff1b12ebc497738a13ae5862f47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.9 MB (392928670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413d0e2a7900d0975b72d40fad5dbfb1b6689697c37f2e772f933f9ee0ea26a1`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:5f59dff077f9000126558b9cf1949f7426c7f0c6382a52002390522aeb1f0de2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.5 MB (343458054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e191b3ddd8580316edaaa496daed21cb6643fa5a949380891d6bc29c4fdd23`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:28:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd7fddfd362c21d8b07ef7f2f1ab534b821cb12d2b1da91bf88eb23a6a9146`  
		Last Modified: Tue, 12 Mar 2019 13:53:46 GMT  
		Size: 83.8 MB (83799417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:035d5e863662d15583345c6c91cd8602b9399c3884f6b0eea1f904c4f278607d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357167916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd534d34b6f02f30259567db58e83cd7b4e686c9cc1fc2ebf9b8d30f658e61dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:45:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb99deb6c47cca63fa5204d0793089ae26c217eb3d832bbed7ac02c485f0b453`  
		Last Modified: Thu, 14 Mar 2019 12:42:12 GMT  
		Size: 85.2 MB (85219424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:074d19d2572ae7be51cd1d71598d1760ae71fbb7590cc72953036ffe53219b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:368641fe65c364440d3674db1cb1eb6395b9dba6d3d1efa2ea3237cae661172e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.1 MB (732091642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8472ccb311673f572bde994d413a98d5e0a12034d81b97180ca0fb7ae8c90cf`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32401600f57c93b535282d3aeb0d76ddff4a76971a4bb7cff452d0c55d3779d`  
		Last Modified: Tue, 12 Mar 2019 01:36:08 GMT  
		Size: 339.2 MB (339162972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:43d29bd39e650c56518f83a05439fb465acf97ae6c65e390f7a33cc8ddb74517
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.7 MB (623747288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c708d8b2b3ad7c7269a835dabdc3fc7b6b09584005538d932a2a96cae51702c4`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:28:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd7fddfd362c21d8b07ef7f2f1ab534b821cb12d2b1da91bf88eb23a6a9146`  
		Last Modified: Tue, 12 Mar 2019 13:53:46 GMT  
		Size: 83.8 MB (83799417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b5954338decc5fc524377bf608de2cb61341e0379c4fadbe106fb3454076c7`  
		Last Modified: Tue, 12 Mar 2019 13:55:57 GMT  
		Size: 280.3 MB (280289234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f3c4420e1255c72acbf9f446e2325a21808c84f74128e3f9625459cf51f97f33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.2 MB (647174423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d215efab7a6de64cf862cbba53b8113d76a680d81bc2725dbd42127c0a259cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:45:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:02:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb99deb6c47cca63fa5204d0793089ae26c217eb3d832bbed7ac02c485f0b453`  
		Last Modified: Thu, 14 Mar 2019 12:42:12 GMT  
		Size: 85.2 MB (85219424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b84c456197ed89a0accb0af06c183985194807e6806cbbc07a08e7fab3ab89`  
		Last Modified: Thu, 14 Mar 2019 12:45:38 GMT  
		Size: 290.0 MB (290006507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:ed64efbc7efb33a270203c9d04d180aa5fdd3ad97b24af14f012e3ac50dcab4a
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
$ docker pull ros@sha256:c94ab0f55a462641304b8c276ce0b6f31ec617ecd2e8521cc7fa49bc3790a369
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.5 MB (816453068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae09837e1890e304719f6d1fc5f4b01f5e1048ef8e1b37664ce1fbc709bbcfdb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:37:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:58:36 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a5b900db33817ea15a14cec16c5309eb71c8fec420f0c9e976604e8abd23c`  
		Last Modified: Tue, 05 Mar 2019 13:35:12 GMT  
		Size: 116.9 MB (116873859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f769a2f84224e62300ad61fc4f0e0e28691c6c7231a1bb95fa65dfa938725b40`  
		Last Modified: Tue, 05 Mar 2019 13:38:43 GMT  
		Size: 378.5 MB (378522034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:074d19d2572ae7be51cd1d71598d1760ae71fbb7590cc72953036ffe53219b62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:368641fe65c364440d3674db1cb1eb6395b9dba6d3d1efa2ea3237cae661172e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.1 MB (732091642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8472ccb311673f572bde994d413a98d5e0a12034d81b97180ca0fb7ae8c90cf`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32401600f57c93b535282d3aeb0d76ddff4a76971a4bb7cff452d0c55d3779d`  
		Last Modified: Tue, 12 Mar 2019 01:36:08 GMT  
		Size: 339.2 MB (339162972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:43d29bd39e650c56518f83a05439fb465acf97ae6c65e390f7a33cc8ddb74517
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.7 MB (623747288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c708d8b2b3ad7c7269a835dabdc3fc7b6b09584005538d932a2a96cae51702c4`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:28:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd7fddfd362c21d8b07ef7f2f1ab534b821cb12d2b1da91bf88eb23a6a9146`  
		Last Modified: Tue, 12 Mar 2019 13:53:46 GMT  
		Size: 83.8 MB (83799417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b5954338decc5fc524377bf608de2cb61341e0379c4fadbe106fb3454076c7`  
		Last Modified: Tue, 12 Mar 2019 13:55:57 GMT  
		Size: 280.3 MB (280289234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f3c4420e1255c72acbf9f446e2325a21808c84f74128e3f9625459cf51f97f33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.2 MB (647174423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d215efab7a6de64cf862cbba53b8113d76a680d81bc2725dbd42127c0a259cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:45:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:02:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb99deb6c47cca63fa5204d0793089ae26c217eb3d832bbed7ac02c485f0b453`  
		Last Modified: Thu, 14 Mar 2019 12:42:12 GMT  
		Size: 85.2 MB (85219424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b84c456197ed89a0accb0af06c183985194807e6806cbbc07a08e7fab3ab89`  
		Last Modified: Thu, 14 Mar 2019 12:45:38 GMT  
		Size: 290.0 MB (290006507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:be63d3494244851bd34e137e84e55f8e606f406e23cf38c3a989941c83dfb1c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:b5f9e10447b9ec821d10102c91345f4de772d40008e59d0e6eaa40d435e415c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496727538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f066bda8fb0ffe314a02e5dedfd1fada67957b8dd0ce26866346cef46580dd`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:07:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84556321426e981d570ab6a6f1a60a4449970ba3e0370255b8fadfbe14dc9ee1`  
		Last Modified: Tue, 12 Mar 2019 01:34:41 GMT  
		Size: 103.8 MB (103798868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:e09617314be247e60b8a10bb3d3d3f07f9bdca65ab1fd5b244b9a0c62572c098
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.6 MB (433613771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481e4a1073b6c6ec4a54f98b3067f87db972ab685ded6f53e4def3353fca72ec`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:28:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:29:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd7fddfd362c21d8b07ef7f2f1ab534b821cb12d2b1da91bf88eb23a6a9146`  
		Last Modified: Tue, 12 Mar 2019 13:53:46 GMT  
		Size: 83.8 MB (83799417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a5c38de11e76171934ef1638f5a2f37fac09e6c803350cc786ecd9e1b513b3`  
		Last Modified: Tue, 12 Mar 2019 13:54:25 GMT  
		Size: 90.2 MB (90155717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b220302bc74247444826285443f6f9a08632a15d299878521b7655999b1a4f4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.2 MB (451231569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90fd351126381d786e86472d74296018c732785d652907276ab2763ab9c3169b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:45:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:51:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb99deb6c47cca63fa5204d0793089ae26c217eb3d832bbed7ac02c485f0b453`  
		Last Modified: Thu, 14 Mar 2019 12:42:12 GMT  
		Size: 85.2 MB (85219424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e39d8ebb67abb7e314f75b0c6316fe7d759c85f2355769323080433760e1a0`  
		Last Modified: Thu, 14 Mar 2019 12:43:07 GMT  
		Size: 94.1 MB (94063653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:b722c18919d92a031657bc850c17d5b47173aaf0ffa39e808f7602f88df75709
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
$ docker pull ros@sha256:f957dd592516d691aac6a2b9fc71ee4d15a816f09514aa7f0b522f42b2042b9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495446541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dda8383fb14cdc4b59c752616437909d4eb4516f194d27d2f4327584696936`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:37:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:40:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a5b900db33817ea15a14cec16c5309eb71c8fec420f0c9e976604e8abd23c`  
		Last Modified: Tue, 05 Mar 2019 13:35:12 GMT  
		Size: 116.9 MB (116873859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d468960e7411dbb16d2763ad98d1eaae7d0bb67ab341a7bd2735f7cc91be7c`  
		Last Modified: Tue, 05 Mar 2019 13:35:46 GMT  
		Size: 57.5 MB (57515507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:be63d3494244851bd34e137e84e55f8e606f406e23cf38c3a989941c83dfb1c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b5f9e10447b9ec821d10102c91345f4de772d40008e59d0e6eaa40d435e415c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496727538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f066bda8fb0ffe314a02e5dedfd1fada67957b8dd0ce26866346cef46580dd`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:07:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84556321426e981d570ab6a6f1a60a4449970ba3e0370255b8fadfbe14dc9ee1`  
		Last Modified: Tue, 12 Mar 2019 01:34:41 GMT  
		Size: 103.8 MB (103798868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:e09617314be247e60b8a10bb3d3d3f07f9bdca65ab1fd5b244b9a0c62572c098
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.6 MB (433613771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:481e4a1073b6c6ec4a54f98b3067f87db972ab685ded6f53e4def3353fca72ec`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:28:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:29:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd7fddfd362c21d8b07ef7f2f1ab534b821cb12d2b1da91bf88eb23a6a9146`  
		Last Modified: Tue, 12 Mar 2019 13:53:46 GMT  
		Size: 83.8 MB (83799417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a5c38de11e76171934ef1638f5a2f37fac09e6c803350cc786ecd9e1b513b3`  
		Last Modified: Tue, 12 Mar 2019 13:54:25 GMT  
		Size: 90.2 MB (90155717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b220302bc74247444826285443f6f9a08632a15d299878521b7655999b1a4f4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.2 MB (451231569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90fd351126381d786e86472d74296018c732785d652907276ab2763ab9c3169b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:45:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:51:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb99deb6c47cca63fa5204d0793089ae26c217eb3d832bbed7ac02c485f0b453`  
		Last Modified: Thu, 14 Mar 2019 12:42:12 GMT  
		Size: 85.2 MB (85219424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e39d8ebb67abb7e314f75b0c6316fe7d759c85f2355769323080433760e1a0`  
		Last Modified: Thu, 14 Mar 2019 12:43:07 GMT  
		Size: 94.1 MB (94063653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:f3ecf8333a53a19d7807df7b88242160dde22a0cd4dfcbbbd1af5050f7c41dc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1f2298ca9dcef83a706d105d4b4f361b72a9bff1b12ebc497738a13ae5862f47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.9 MB (392928670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413d0e2a7900d0975b72d40fad5dbfb1b6689697c37f2e772f933f9ee0ea26a1`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:5f59dff077f9000126558b9cf1949f7426c7f0c6382a52002390522aeb1f0de2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.5 MB (343458054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e191b3ddd8580316edaaa496daed21cb6643fa5a949380891d6bc29c4fdd23`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:28:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd7fddfd362c21d8b07ef7f2f1ab534b821cb12d2b1da91bf88eb23a6a9146`  
		Last Modified: Tue, 12 Mar 2019 13:53:46 GMT  
		Size: 83.8 MB (83799417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:035d5e863662d15583345c6c91cd8602b9399c3884f6b0eea1f904c4f278607d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357167916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd534d34b6f02f30259567db58e83cd7b4e686c9cc1fc2ebf9b8d30f658e61dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:45:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb99deb6c47cca63fa5204d0793089ae26c217eb3d832bbed7ac02c485f0b453`  
		Last Modified: Thu, 14 Mar 2019 12:42:12 GMT  
		Size: 85.2 MB (85219424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:ef71e6c39b8c557b74ff6a815d66755fee3eec1b7b61f61581690e87ace0468e
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
$ docker pull ros@sha256:a6dadba18fd3fc73d4076f946f885aa49334bce9c17ac05570ceb5aec833aa47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.9 MB (437931034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1524a005592ab883a02838ec9ea03d10f5382dfcd7ea6ba47df848f8dd84ac`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:37:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a5b900db33817ea15a14cec16c5309eb71c8fec420f0c9e976604e8abd23c`  
		Last Modified: Tue, 05 Mar 2019 13:35:12 GMT  
		Size: 116.9 MB (116873859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:f3ecf8333a53a19d7807df7b88242160dde22a0cd4dfcbbbd1af5050f7c41dc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:1f2298ca9dcef83a706d105d4b4f361b72a9bff1b12ebc497738a13ae5862f47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.9 MB (392928670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413d0e2a7900d0975b72d40fad5dbfb1b6689697c37f2e772f933f9ee0ea26a1`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:5f59dff077f9000126558b9cf1949f7426c7f0c6382a52002390522aeb1f0de2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.5 MB (343458054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e191b3ddd8580316edaaa496daed21cb6643fa5a949380891d6bc29c4fdd23`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:28:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3fd7fddfd362c21d8b07ef7f2f1ab534b821cb12d2b1da91bf88eb23a6a9146`  
		Last Modified: Tue, 12 Mar 2019 13:53:46 GMT  
		Size: 83.8 MB (83799417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:035d5e863662d15583345c6c91cd8602b9399c3884f6b0eea1f904c4f278607d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357167916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd534d34b6f02f30259567db58e83cd7b4e686c9cc1fc2ebf9b8d30f658e61dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 10:45:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb99deb6c47cca63fa5204d0793089ae26c217eb3d832bbed7ac02c485f0b453`  
		Last Modified: Thu, 14 Mar 2019 12:42:12 GMT  
		Size: 85.2 MB (85219424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:34b74e67d4b3ccbb8e862c41f9792d0d9c486b0380719e2a8fd13a71f8fae8fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:75a17bae61b34da4c9f4bc74cfad0748d9b147ae99d1d1925acbbb98e7e1f99c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e02dfbf19114af6e5ee0f71bf66fa1ac681c5c14f47877b6de205e51853eae`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:1bdd5346700991bb4276d370c4ab69b1318dc781ff576115235bb3526778ae62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259658637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6c28cb42c2a43d8730b9215ffec8457f997c2c71863e82d2c12b95b3a161d1`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bfb5e476d92505aadb95f6f869df53ac4537c0b205d9a9cbf06c3cbf3413d92b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271948492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58d3a9eb996764762d0e173adcc0359bd6f6fd83cac39c6bc809f3f9478ef4b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:fad85925575542aeb2aec9657a06770d1fcb20f10a84f33c2e41c58005ef6d0d
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
$ docker pull ros@sha256:dbf6a872d83f65092a50722410995ecee87306e1cda95b57bd2f00861e524ccf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321057175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d6475f6fa9712d4f7354bfdcf8fe73b19d535be758097119ab18dd0d0d3f46`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:34b74e67d4b3ccbb8e862c41f9792d0d9c486b0380719e2a8fd13a71f8fae8fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:75a17bae61b34da4c9f4bc74cfad0748d9b147ae99d1d1925acbbb98e7e1f99c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e02dfbf19114af6e5ee0f71bf66fa1ac681c5c14f47877b6de205e51853eae`
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
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
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
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1bdd5346700991bb4276d370c4ab69b1318dc781ff576115235bb3526778ae62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259658637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6c28cb42c2a43d8730b9215ffec8457f997c2c71863e82d2c12b95b3a161d1`
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
# Tue, 12 Mar 2019 13:24:12 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 13:26:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:26:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:26:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:26:35 GMT
CMD ["bash"]
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
	-	`sha256:16fbe23ef55258b7938f88afe18e7c8dda150fc615b9959709eedc0679282978`  
		Last Modified: Tue, 12 Mar 2019 13:53:15 GMT  
		Size: 164.6 MB (164631357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4159f14635692d43e1279e834f0d9a360bd6c66868304cefe77da4cd7e98f2bb`  
		Last Modified: Tue, 12 Mar 2019 13:52:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bfb5e476d92505aadb95f6f869df53ac4537c0b205d9a9cbf06c3cbf3413d92b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271948492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58d3a9eb996764762d0e173adcc0359bd6f6fd83cac39c6bc809f3f9478ef4b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:37:10 GMT
ADD file:fb512c07289f9bff179e81ccc3c7db7cfa5cbe0e28c60dcf2582fdb621ef4873 in / 
# Thu, 14 Mar 2019 09:37:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:37:16 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:37:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:37:20 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 09:57:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 09:57:26 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 09:59:22 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:59:24 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 09:59:25 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 10:00:05 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 10:31:33 GMT
ENV ROS_DISTRO=lunar
# Thu, 14 Mar 2019 10:39:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 10:39:55 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 10:39:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 10:40:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:42a68504e090bdbf515c814e7ef1eec51c4e5e86f869c3196416372743583213`  
		Last Modified: Fri, 22 Feb 2019 23:17:09 GMT  
		Size: 39.6 MB (39582965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca2bac1d329215e2f3bc584352d5eb878cc611f42990f3c8b2a4f86caef05cf`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9450bbb566ac27c4e32a7c6a5fc0ad9c4eb7eba18a33c7abc2aabf470369ff6`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909659e6e151b05fe5662d99effc50f4e0e47c27763091c952c98d731bb399a8`  
		Last Modified: Thu, 14 Mar 2019 09:39:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda9352f53a2528e98350f07950b413b3c293340fb1aa8509b6d4893795fa423`  
		Last Modified: Thu, 14 Mar 2019 12:24:38 GMT  
		Size: 15.1 MB (15051078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2576190549336a6dd6a7d477db0cfb8b70bcc4f83acff07c43b4a0c93a63b8f8`  
		Last Modified: Thu, 14 Mar 2019 12:23:41 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d40b6f75169bd6774f6f3cdea3df37c0151c3f768282a0402605b599cf1cb70`  
		Last Modified: Thu, 14 Mar 2019 12:23:39 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db2278317a1d0599c2e3f9e0aca7f5624b55bebd18673ac688976960b19bd4c`  
		Last Modified: Thu, 14 Mar 2019 12:25:46 GMT  
		Size: 42.8 MB (42803322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270734711734315f4c5cf38e8cb93789da5a32b2d81c498d7544afdc057371f5`  
		Last Modified: Thu, 14 Mar 2019 12:23:40 GMT  
		Size: 623.5 KB (623497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d6efef1ade7b8b4fc1292ab12a5a7577889353492d04adb457db5a385e23f`  
		Last Modified: Thu, 14 Mar 2019 12:41:19 GMT  
		Size: 173.9 MB (173867344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f792e88febf2761861d0fb181fb91425ee3a5f08898eb55cd1b210b3b9787b`  
		Last Modified: Thu, 14 Mar 2019 12:39:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:5fe1d0ea6f405edf529a8fe5a96d9f20bd7030b573edf7b9ce4f17641ceca1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:8bacdaebe0172f1d360df510e60c227d3b6fb7b47f866c920c75639aff3b5368
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381711006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4da7fd71238a26151dbcece1669da77643670a8677bf059c4b96043fec01f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7b2fe0c9069f36e0d2878a5acbf6544ea49c074567ac0a7e486493595a3e9a2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.5 MB (360496531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614a81c7e8582eb448b72c44df7937d1075cea0da95e2668f6fdf4849a2339f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:51b1d4f773d6da8607a8cad1266f9fc2f101c117b5b7e5774279d618311fe9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:365e3190bbfb55d4a6f0edb39e7be8faf3a45a45981108406ceb9a06128e7cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **789.0 MB (788953930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906bf719db128cdb89bfefe4515b23ec25941928192b2f1a00cd5c458ca9880c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:21:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305f5af86ce9d4b8be722c2d0e5748a36e25cbd80d4c09b8b901d7a1feda273`  
		Last Modified: Tue, 12 Mar 2019 01:39:25 GMT  
		Size: 359.3 MB (359314086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:73cd2eb5b42e36fbf16c7a8462aaa4a2295e4fc5cb03ebb96526fb4d2e82cdf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.1 MB (691081150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2a20dc61419a21698dc3d484128f4accf1d6b518f2f9af2057e3fee2fd3c85`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:45:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fede9cea18e97ac44f368ee8e41e63e43a8781f5f53b371c741b84df64eaba`  
		Last Modified: Tue, 12 Mar 2019 13:59:47 GMT  
		Size: 309.4 MB (309370144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5afeabe3d0305552ab768e422bc86d1f7eb1bc1e84f350da3a5ee1b476f46df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.4 MB (702407771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2ae20500b1e2475080663bb6946f4acf2b519468df06c357c5a9bfb32fd9d4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:56:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05400cd70ff69fac35e2852da656ded2aabf22e7e7503a4879be32cfbb831bff`  
		Last Modified: Thu, 14 Mar 2019 13:03:59 GMT  
		Size: 341.9 MB (341911240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:51b1d4f773d6da8607a8cad1266f9fc2f101c117b5b7e5774279d618311fe9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:365e3190bbfb55d4a6f0edb39e7be8faf3a45a45981108406ceb9a06128e7cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **789.0 MB (788953930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906bf719db128cdb89bfefe4515b23ec25941928192b2f1a00cd5c458ca9880c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:21:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305f5af86ce9d4b8be722c2d0e5748a36e25cbd80d4c09b8b901d7a1feda273`  
		Last Modified: Tue, 12 Mar 2019 01:39:25 GMT  
		Size: 359.3 MB (359314086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:73cd2eb5b42e36fbf16c7a8462aaa4a2295e4fc5cb03ebb96526fb4d2e82cdf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.1 MB (691081150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2a20dc61419a21698dc3d484128f4accf1d6b518f2f9af2057e3fee2fd3c85`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:45:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fede9cea18e97ac44f368ee8e41e63e43a8781f5f53b371c741b84df64eaba`  
		Last Modified: Tue, 12 Mar 2019 13:59:47 GMT  
		Size: 309.4 MB (309370144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5afeabe3d0305552ab768e422bc86d1f7eb1bc1e84f350da3a5ee1b476f46df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.4 MB (702407771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2ae20500b1e2475080663bb6946f4acf2b519468df06c357c5a9bfb32fd9d4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:56:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05400cd70ff69fac35e2852da656ded2aabf22e7e7503a4879be32cfbb831bff`  
		Last Modified: Thu, 14 Mar 2019 13:03:59 GMT  
		Size: 341.9 MB (341911240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:abaae8346e8ed0160ebc873d40a0573d8aa70ca38d002129b6a9cec337ed89b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:ff90a69f6dbd78a59a3fe120e967e8c81c1f40e9f374d755279660262ae88779
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.2 MB (879241776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cfdd0d348469205ac9c4b4df5bf72ed96555b352febe4840524e44490b66ee1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 05:04:39 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 05:06:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:06:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 05:06:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 05:06:14 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:07:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:10:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179f44b37fa9655ba208e384c7dda5be2e700ef43323725b91b2177bb5fa50b8`  
		Last Modified: Tue, 05 Mar 2019 05:17:01 GMT  
		Size: 269.4 MB (269419318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e195d50183855faa4f2c4366116011f1fb11e092f27ca631aeb2627b30f0f4`  
		Last Modified: Tue, 05 Mar 2019 05:15:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318310d7b90622cb646022f7895951ee24797e44b337f3c4805d04cdbcd0478f`  
		Last Modified: Tue, 05 Mar 2019 05:17:35 GMT  
		Size: 108.5 MB (108461343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c5edf9e6fb3696fd0e273ab4d1ec98e52d3c12d8044f69aea4d03ac94c2cff`  
		Last Modified: Tue, 05 Mar 2019 05:19:24 GMT  
		Size: 380.8 MB (380764332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cb09c96545aa65444eaf687304dffeac7e6522e9ec4011c2f0ba30429f278c01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.9 MB (796932132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4898733dd3aa2df1497233e7d0501be4de7b40c5209ddefc6f6aa50ea34b1f6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:12:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:30:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e616c8fae5cfc173ff0876bc517da5002d9ef008d23e6c2fd4dcbe6e65aaddd`  
		Last Modified: Tue, 05 Mar 2019 13:41:42 GMT  
		Size: 102.9 MB (102940321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b87592d681eb1713e12d55f53ffcdf8b738ffe5853ebad69a743c8ad965d83`  
		Last Modified: Tue, 05 Mar 2019 13:44:35 GMT  
		Size: 355.4 MB (355378154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:fb6125a03e46ce54d3d9496a17909f2fe5ad7e0a7a5edde6791f98a6b6241a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:0b5d7dc8a3043c54081a4bdfd511efb22f7274787316462d2d97217c0297fa3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.4 MB (467449561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdf653b26f28f7c110df1b85d5af181d88604ddfdfa31b619b20177b06f1ac0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:16:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efbfd747bc71a913e29cd7179ce55dd353eb34a3f69c4806ea7c0d9dbf33bde`  
		Last Modified: Tue, 12 Mar 2019 01:37:54 GMT  
		Size: 37.8 MB (37809717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:7a48957528cb0cb27beef12c00b6fddd973ff4bc9cbb204e44ddc0bfe9c350a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.1 MB (415111981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65922c88cdf92bcc7e14bd7bebc6d751e306c1c5c557923f1a76dd1c3dd81815`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:41:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e526bdbe6d47f9f45cf0fb7a8bfcfb46dad2e10a22ac2e10a2be4307499cb409`  
		Last Modified: Tue, 12 Mar 2019 13:57:59 GMT  
		Size: 33.4 MB (33400975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b044e7d6407c7aae547fc5e389fdcbde6d12d48aa86c123a4fd6264b4c616372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.1 MB (396077333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1144dc738c1c3d2b70cfe63d227d99bafedaded3409354c22f952875a7369fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:25:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725f47453bed2b252fe6df8fe32c037a6d776aada69170b566b74a2e2cc9a14f`  
		Last Modified: Thu, 14 Mar 2019 12:56:15 GMT  
		Size: 35.6 MB (35580802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:fb6125a03e46ce54d3d9496a17909f2fe5ad7e0a7a5edde6791f98a6b6241a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:0b5d7dc8a3043c54081a4bdfd511efb22f7274787316462d2d97217c0297fa3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.4 MB (467449561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdf653b26f28f7c110df1b85d5af181d88604ddfdfa31b619b20177b06f1ac0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:16:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efbfd747bc71a913e29cd7179ce55dd353eb34a3f69c4806ea7c0d9dbf33bde`  
		Last Modified: Tue, 12 Mar 2019 01:37:54 GMT  
		Size: 37.8 MB (37809717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:7a48957528cb0cb27beef12c00b6fddd973ff4bc9cbb204e44ddc0bfe9c350a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.1 MB (415111981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65922c88cdf92bcc7e14bd7bebc6d751e306c1c5c557923f1a76dd1c3dd81815`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:41:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e526bdbe6d47f9f45cf0fb7a8bfcfb46dad2e10a22ac2e10a2be4307499cb409`  
		Last Modified: Tue, 12 Mar 2019 13:57:59 GMT  
		Size: 33.4 MB (33400975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b044e7d6407c7aae547fc5e389fdcbde6d12d48aa86c123a4fd6264b4c616372
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.1 MB (396077333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1144dc738c1c3d2b70cfe63d227d99bafedaded3409354c22f952875a7369fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:25:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725f47453bed2b252fe6df8fe32c037a6d776aada69170b566b74a2e2cc9a14f`  
		Last Modified: Thu, 14 Mar 2019 12:56:15 GMT  
		Size: 35.6 MB (35580802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:525dbcbec3852eea26d7dcbb22d530a6bf4eb5bc36c66607131a2e76fc9e14c2
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
$ docker pull ros@sha256:ef4b439db9e27a2de52f5886a63545e870391c93c207cd275e53cce9134e02e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.2 MB (494155660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f403527178b7abcbb04fdb1b788b5642fdfbee23c88c1688a5103d3dd22b1870`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:12:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:15:58 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e616c8fae5cfc173ff0876bc517da5002d9ef008d23e6c2fd4dcbe6e65aaddd`  
		Last Modified: Tue, 05 Mar 2019 13:41:42 GMT  
		Size: 102.9 MB (102940321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ee2d590bbd0b66a359b4f2e9c6c15c41beff76b51955c67df18aa2c40f44dc`  
		Last Modified: Tue, 05 Mar 2019 13:42:12 GMT  
		Size: 52.6 MB (52601682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:5fe1d0ea6f405edf529a8fe5a96d9f20bd7030b573edf7b9ce4f17641ceca1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:8bacdaebe0172f1d360df510e60c227d3b6fb7b47f866c920c75639aff3b5368
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381711006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4da7fd71238a26151dbcece1669da77643670a8677bf059c4b96043fec01f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7b2fe0c9069f36e0d2878a5acbf6544ea49c074567ac0a7e486493595a3e9a2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.5 MB (360496531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614a81c7e8582eb448b72c44df7937d1075cea0da95e2668f6fdf4849a2339f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:5fe1d0ea6f405edf529a8fe5a96d9f20bd7030b573edf7b9ce4f17641ceca1bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:8bacdaebe0172f1d360df510e60c227d3b6fb7b47f866c920c75639aff3b5368
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381711006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4da7fd71238a26151dbcece1669da77643670a8677bf059c4b96043fec01f5b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:40:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a990225cd6d39ef71cfd091426a6ee65cf00fcf4b7a5143aeef42998fdfb84e9`  
		Last Modified: Tue, 12 Mar 2019 13:57:35 GMT  
		Size: 62.1 MB (62074557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7b2fe0c9069f36e0d2878a5acbf6544ea49c074567ac0a7e486493595a3e9a2b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.5 MB (360496531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:614a81c7e8582eb448b72c44df7937d1075cea0da95e2668f6fdf4849a2339f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
# Thu, 14 Mar 2019 11:21:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9529f93f624b031757f9c994a8bb61bb37e237966d7439c184a954487eb71cd0`  
		Last Modified: Thu, 14 Mar 2019 12:53:10 GMT  
		Size: 65.6 MB (65558290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:ae08a55d4fe847ce4eebc2fde05704b95d3946f086dc24f902632ff8ae784455
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
$ docker pull ros@sha256:ee751a0a80e32c126a33c77c02c9e3733ef0cecdab7215e5577ad1e6ab23a7cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.6 MB (441553978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d48cf08e7b39de50e9dae96f1409273c7230bbf7977d685df1c1c4441c4ace`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:12:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e616c8fae5cfc173ff0876bc517da5002d9ef008d23e6c2fd4dcbe6e65aaddd`  
		Last Modified: Tue, 05 Mar 2019 13:41:42 GMT  
		Size: 102.9 MB (102940321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:079d52500be7540cd7514edca432cd3b302814d58c0aeb3affea49a3aece01dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a54234cfcfc1645e1ca58f5acd008316dc839a7cec8fc475f09a6692037305ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359026601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52e4108afbf385d824fa9821fcb0cf52b918d18c3fe9ca7f7eb4fbb24dc2c81`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:f24c9c991a6bade6c85b37b1d2307caec2b52a417fa775dfb753c5e0b696d6d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319636449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda3f548457dad76176b8ab6768775c59ad91895cb1fc3dbcdec42711f804be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:69abce1c349a0047c260fe4e90f9496229993dc03e0d8a455fa1160bab29cd3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294938241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc57af293534ec8aca51f5086d59d80e723cc1ab3019012e9c94523877b10299`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:079d52500be7540cd7514edca432cd3b302814d58c0aeb3affea49a3aece01dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:a54234cfcfc1645e1ca58f5acd008316dc839a7cec8fc475f09a6692037305ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359026601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52e4108afbf385d824fa9821fcb0cf52b918d18c3fe9ca7f7eb4fbb24dc2c81`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:f24c9c991a6bade6c85b37b1d2307caec2b52a417fa775dfb753c5e0b696d6d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319636449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffda3f548457dad76176b8ab6768775c59ad91895cb1fc3dbcdec42711f804be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:42:51 GMT
ADD file:ee8258018aa132e6acb35329269b72b13b48f1f8c6ce922afa4b1cc6826a5c16 in / 
# Tue, 12 Mar 2019 12:42:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:42:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:42:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:02:56 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:24 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:33:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:33:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:34:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:34:59 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:35:00 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:35:20 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:35:20 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 13:38:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:38:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:38:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:38:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0271361e8a748614d0ba38f51c7a988f326368d204dd208c8fa316b9c3256a8a`  
		Last Modified: Fri, 08 Mar 2019 23:45:14 GMT  
		Size: 27.7 MB (27724155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f82dbae99403c2042928314aca7a23c89d49820ab94d23704497ff98e75ec236`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6b13b46c8edb7b87f8f1e566518d9d14e8cfcccbd738fb42f3f9f0d6bf56ef`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492da8380468c9df5987a639a78f80e639877ed0737502667a2c88a35f642c2c`  
		Last Modified: Tue, 12 Mar 2019 12:45:10 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0f95e89310b7624947aeb9415495ae17abeb36b2030d56f0021ac9ca98ab2f`  
		Last Modified: Tue, 12 Mar 2019 13:16:47 GMT  
		Size: 837.3 KB (837284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26d8d7f27e90678af748eee6cd7b35df84f2deb1d544634e95a3445d3b2139e`  
		Last Modified: Tue, 12 Mar 2019 13:16:48 GMT  
		Size: 13.2 MB (13240680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ca321e2a32e6b8ea7a5a600a3d7c127c2059cc87be79ea0cc5678afde4cdaf`  
		Last Modified: Tue, 12 Mar 2019 13:56:05 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8afb0272a878092457e64602e979921fd8901455c0e47e17ae3f20e5396276b`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b74fe47b016d7c7d4071bb2d78a49a440d2fc4af1b2b869c4bcd3e2ce094fa`  
		Last Modified: Tue, 12 Mar 2019 13:56:20 GMT  
		Size: 45.0 MB (45021919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f025e298224d27b283f2bab1d97d0a2b8e6c257296adc7a4c1c9b492c6abe2`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 621.2 KB (621195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da57e2ee42d753f46a5a6491341519dc8f4166e9d397eaa4e9cb91c259d47755`  
		Last Modified: Tue, 12 Mar 2019 13:57:09 GMT  
		Size: 232.2 MB (232182602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4584523ffa588ae443878162089e8e9954873b396bdb86e833ce8b697337e55f`  
		Last Modified: Tue, 12 Mar 2019 13:56:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:69abce1c349a0047c260fe4e90f9496229993dc03e0d8a455fa1160bab29cd3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294938241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc57af293534ec8aca51f5086d59d80e723cc1ab3019012e9c94523877b10299`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 14 Mar 2019 09:34:18 GMT
ADD file:4cccf4e4a71783b1ac058bcfcabe23b3901e829c3859551be9d7e732cb9e3f86 in / 
# Thu, 14 Mar 2019 09:34:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Mar 2019 09:34:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 09:34:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Mar 2019 09:34:32 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 11:03:51 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:46 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:05:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 14 Mar 2019 11:05:59 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 14 Mar 2019 11:08:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:08:48 GMT
ENV LANG=C.UTF-8
# Thu, 14 Mar 2019 11:08:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 14 Mar 2019 11:09:24 GMT
RUN rosdep init     && rosdep update
# Thu, 14 Mar 2019 11:09:26 GMT
ENV ROS_DISTRO=melodic
# Thu, 14 Mar 2019 11:18:22 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 14 Mar 2019 11:18:27 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 14 Mar 2019 11:18:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 14 Mar 2019 11:18:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a0ceea30e08b5fa042d10308a43b8b093b67ce44e98a69ea8d277d00077387ab`  
		Last Modified: Fri, 08 Mar 2019 23:47:38 GMT  
		Size: 29.2 MB (29175537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ef245d4e8728acd667d550023b9ffbb688c7976f78f72986d132072041e5a1`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb25026742c32e7fe5417efb6bc0ff5ad1eb9963007aebd5f71e9bc333e9ba`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62b2948ac15d07c725e6074399d5e49e916e79b2c7738d6ad63e4d1b090db8f`  
		Last Modified: Thu, 14 Mar 2019 09:37:47 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9237b4813ac5b34ab7f0e977085e4f0539d141283d74f5f40cecdb5a05e1103`  
		Last Modified: Thu, 14 Mar 2019 12:45:57 GMT  
		Size: 837.1 KB (837067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74beaed411f0d9f0a4e700e30d1901587fcf9a7f6287c1d879bce72d39dbe4d`  
		Last Modified: Thu, 14 Mar 2019 12:46:09 GMT  
		Size: 13.8 MB (13842786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aedc728b9b5b9365a11b1cf33a3dad2da58566fffdaf49ce9291b311c36aa201`  
		Last Modified: Thu, 14 Mar 2019 12:45:51 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff1b8ac82e1b1b91136d8705286e7b81bc2be4554804f0ae7bb7423d20a6198`  
		Last Modified: Thu, 14 Mar 2019 12:45:49 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcbe1a16be30642b1fd6f39d45ee623428ed709d61e80299d08b78760b2f8c2b`  
		Last Modified: Thu, 14 Mar 2019 12:46:21 GMT  
		Size: 47.6 MB (47611292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f921dcfa8643e4abb6439cb65b32102dacf2817ce21ca9f7fa3348f1d5a6b3`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 623.5 KB (623500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc9c916eeb5b6c4229fb9262a7e402a4a14877cb79492adf45ddc60c2ebd0d7`  
		Last Modified: Thu, 14 Mar 2019 12:49:18 GMT  
		Size: 202.8 MB (202839499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c80c14b8394037699f9cd87d3bbd44f364fd2ebeaae4163aef92b544a58417`  
		Last Modified: Thu, 14 Mar 2019 12:45:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:489d990b173e0a64cc255993698804d8d24fac337bb0749b51ed19f47947ab7c
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
$ docker pull ros@sha256:913b50487aa43be66d3b67d5bf073e6acd9e85acff0f21956db75929ee995c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338613657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5a47864e30ad0cf0a8dca719fcb50f965af744c4a9da75c5f7d5651c094c48`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
