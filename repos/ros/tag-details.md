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
-	[`ros:dashing`](#rosdashing)
-	[`ros:dashing-ros-base`](#rosdashing-ros-base)
-	[`ros:dashing-ros-base-bionic`](#rosdashing-ros-base-bionic)
-	[`ros:dashing-ros-core`](#rosdashing-ros-core)
-	[`ros:dashing-ros-core-bionic`](#rosdashing-ros-core-bionic)
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
$ docker pull ros@sha256:fbaeb727a14f3acc0c7041245814c11660b4676a6fd28a6c62835983c560196f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:95919ba0a3c14a06a853bfe851fb8341e40746acdb890b9def77632ac748bab1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259863030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f59557ae8e96e8a506033602bcbd203b3c06a9b5385282c8c1e955e1ef71ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:41:44 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:42:57 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:42:58 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:42:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:42:59 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:43:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1192e3797c4595f76446605a8344c5cda89c0834382fb4e2d0b797c4324e05`  
		Last Modified: Sat, 01 Jun 2019 00:46:29 GMT  
		Size: 46.9 MB (46914075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebbb2507c3890852a35d27bb40f9358af6c6ad8d813a93fd19ad73d59a1bb2`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed1871d621b78bf7db5673cbfd973df772b6b92498bf8b47bc81557db426983`  
		Last Modified: Sat, 01 Jun 2019 00:46:36 GMT  
		Size: 3.1 MB (3134247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ac78be10bbbfe97059889d7fe65e5f2bdddb7afbfd790ce8d492d5e57d77541c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190732697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f032d7912669b44e0467e14712a20c26e8d2ce20c912fc44bc9d51b106584aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:49:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:49:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:50:02 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:50:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:50:03 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:50:29 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b937f6012310ade42efa27e5d67ca231bec26c274774d78d778dd529a571d0`  
		Last Modified: Sat, 01 Jun 2019 00:53:10 GMT  
		Size: 36.9 MB (36900833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2b33c4d284cc18d8b170e999256a2e7f061d199e48ad8f742cc577b8f25019`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcb40796fa54974d23042ef0af8128c732c76401a070d6c9a269a8da9a071fb`  
		Last Modified: Sat, 01 Jun 2019 00:53:22 GMT  
		Size: 2.9 MB (2889646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:fbaeb727a14f3acc0c7041245814c11660b4676a6fd28a6c62835983c560196f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:95919ba0a3c14a06a853bfe851fb8341e40746acdb890b9def77632ac748bab1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259863030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f59557ae8e96e8a506033602bcbd203b3c06a9b5385282c8c1e955e1ef71ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:41:44 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:42:57 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:42:58 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:42:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:42:59 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:43:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1192e3797c4595f76446605a8344c5cda89c0834382fb4e2d0b797c4324e05`  
		Last Modified: Sat, 01 Jun 2019 00:46:29 GMT  
		Size: 46.9 MB (46914075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebbb2507c3890852a35d27bb40f9358af6c6ad8d813a93fd19ad73d59a1bb2`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed1871d621b78bf7db5673cbfd973df772b6b92498bf8b47bc81557db426983`  
		Last Modified: Sat, 01 Jun 2019 00:46:36 GMT  
		Size: 3.1 MB (3134247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ac78be10bbbfe97059889d7fe65e5f2bdddb7afbfd790ce8d492d5e57d77541c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190732697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f032d7912669b44e0467e14712a20c26e8d2ce20c912fc44bc9d51b106584aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:49:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:49:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:50:02 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:50:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:50:03 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:50:29 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b937f6012310ade42efa27e5d67ca231bec26c274774d78d778dd529a571d0`  
		Last Modified: Sat, 01 Jun 2019 00:53:10 GMT  
		Size: 36.9 MB (36900833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2b33c4d284cc18d8b170e999256a2e7f061d199e48ad8f742cc577b8f25019`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcb40796fa54974d23042ef0af8128c732c76401a070d6c9a269a8da9a071fb`  
		Last Modified: Sat, 01 Jun 2019 00:53:22 GMT  
		Size: 2.9 MB (2889646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:fbaeb727a14f3acc0c7041245814c11660b4676a6fd28a6c62835983c560196f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:95919ba0a3c14a06a853bfe851fb8341e40746acdb890b9def77632ac748bab1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259863030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f59557ae8e96e8a506033602bcbd203b3c06a9b5385282c8c1e955e1ef71ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:41:44 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:42:57 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:42:58 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:42:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:42:59 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:43:21 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1192e3797c4595f76446605a8344c5cda89c0834382fb4e2d0b797c4324e05`  
		Last Modified: Sat, 01 Jun 2019 00:46:29 GMT  
		Size: 46.9 MB (46914075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebbb2507c3890852a35d27bb40f9358af6c6ad8d813a93fd19ad73d59a1bb2`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed1871d621b78bf7db5673cbfd973df772b6b92498bf8b47bc81557db426983`  
		Last Modified: Sat, 01 Jun 2019 00:46:36 GMT  
		Size: 3.1 MB (3134247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ac78be10bbbfe97059889d7fe65e5f2bdddb7afbfd790ce8d492d5e57d77541c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190732697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f032d7912669b44e0467e14712a20c26e8d2ce20c912fc44bc9d51b106584aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:49:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:49:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:50:02 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:50:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:50:03 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:50:29 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b937f6012310ade42efa27e5d67ca231bec26c274774d78d778dd529a571d0`  
		Last Modified: Sat, 01 Jun 2019 00:53:10 GMT  
		Size: 36.9 MB (36900833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2b33c4d284cc18d8b170e999256a2e7f061d199e48ad8f742cc577b8f25019`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fcb40796fa54974d23042ef0af8128c732c76401a070d6c9a269a8da9a071fb`  
		Last Modified: Sat, 01 Jun 2019 00:53:22 GMT  
		Size: 2.9 MB (2889646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:a4d5fc37ec97f5228169170a949a288c84bc76a0f9b550b9164ecea11465c371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:fb3af90adef6de5d1692427b7e73b1d068bb39055027e65f6a89f5f3dc66401d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256728783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169ca835e65a136e32fe3d25402a8b82d30771faa660febfa0a5eec969d8a153`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:41:44 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:42:57 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:42:58 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:42:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:42:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1192e3797c4595f76446605a8344c5cda89c0834382fb4e2d0b797c4324e05`  
		Last Modified: Sat, 01 Jun 2019 00:46:29 GMT  
		Size: 46.9 MB (46914075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebbb2507c3890852a35d27bb40f9358af6c6ad8d813a93fd19ad73d59a1bb2`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9ff69a733b6fdca8140d5bc3d80bbd65d16a564ce06193e94d67bfa6d3963a50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187843051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8298ff016843e2d17f3ebe6d30f3ef7997704ada1593566722478a33ac78bf65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:49:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:49:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:50:02 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:50:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:50:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b937f6012310ade42efa27e5d67ca231bec26c274774d78d778dd529a571d0`  
		Last Modified: Sat, 01 Jun 2019 00:53:10 GMT  
		Size: 36.9 MB (36900833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2b33c4d284cc18d8b170e999256a2e7f061d199e48ad8f742cc577b8f25019`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:a4d5fc37ec97f5228169170a949a288c84bc76a0f9b550b9164ecea11465c371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:fb3af90adef6de5d1692427b7e73b1d068bb39055027e65f6a89f5f3dc66401d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256728783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169ca835e65a136e32fe3d25402a8b82d30771faa660febfa0a5eec969d8a153`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:41:44 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:42:57 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:42:58 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:42:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:42:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1192e3797c4595f76446605a8344c5cda89c0834382fb4e2d0b797c4324e05`  
		Last Modified: Sat, 01 Jun 2019 00:46:29 GMT  
		Size: 46.9 MB (46914075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aebbb2507c3890852a35d27bb40f9358af6c6ad8d813a93fd19ad73d59a1bb2`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9ff69a733b6fdca8140d5bc3d80bbd65d16a564ce06193e94d67bfa6d3963a50
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187843051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8298ff016843e2d17f3ebe6d30f3ef7997704ada1593566722478a33ac78bf65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:49:02 GMT
ENV ROS_DISTRO=bouncy
# Sat, 01 Jun 2019 00:49:59 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:50:02 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:50:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:50:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b937f6012310ade42efa27e5d67ca231bec26c274774d78d778dd529a571d0`  
		Last Modified: Sat, 01 Jun 2019 00:53:10 GMT  
		Size: 36.9 MB (36900833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e2b33c4d284cc18d8b170e999256a2e7f061d199e48ad8f742cc577b8f25019`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:b575a16226de6d1e90d2c51392823e0bcd6b93719c31e120ef4e332941b3759f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:db8a975d7c9049b88db064de8e3c830a1b27d68b3dfd0396e012e8d8be179a71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263193830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c94bf8de2386aa1c7c22cb24e62d6d7abb1c88140282d9b6366545558e6016`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:43:28 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:44:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:44:34 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:44:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:44:35 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:44:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f82f8435cc744e4c5136dba1165b6b5dd8822429db78da45e2771da85302e`  
		Last Modified: Sat, 01 Jun 2019 00:47:04 GMT  
		Size: 50.2 MB (50204387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692553187d5b0587d0d4599cdf144cd5cdc4dec9aec68292d2c92578b26d99d`  
		Last Modified: Sat, 01 Jun 2019 00:46:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d887732c50164a601370bab86f4c906c5185463fb6da4e9d212008ca8b6cb`  
		Last Modified: Sat, 01 Jun 2019 00:47:13 GMT  
		Size: 3.2 MB (3174735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5bc75951297acb3b6489e926970b46d63b2f2089bcdbf042efb9ba22b1c183e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193629561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950c6911f75647a677d21a09948b7b12dc58616221f81d3f9680d61cf31409d0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:50:34 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:51:43 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:51:45 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:51:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:51:46 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931780fb0e02837bfb0fe352eaf84007d0abc28b38285d38dcaa61d3e4d7d544`  
		Last Modified: Sat, 01 Jun 2019 00:53:45 GMT  
		Size: 39.8 MB (39750728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a89c67be0a3c701c4da51f9156301c738dc777f102cb8428ed9ae391da7dd`  
		Last Modified: Sat, 01 Jun 2019 00:53:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde2c88487a0534a98bec862f52fb961a692915e948f044e2cdbc3e73e71e811`  
		Last Modified: Sat, 01 Jun 2019 00:53:57 GMT  
		Size: 2.9 MB (2936615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:b575a16226de6d1e90d2c51392823e0bcd6b93719c31e120ef4e332941b3759f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:db8a975d7c9049b88db064de8e3c830a1b27d68b3dfd0396e012e8d8be179a71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263193830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c94bf8de2386aa1c7c22cb24e62d6d7abb1c88140282d9b6366545558e6016`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:43:28 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:44:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:44:34 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:44:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:44:35 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:44:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f82f8435cc744e4c5136dba1165b6b5dd8822429db78da45e2771da85302e`  
		Last Modified: Sat, 01 Jun 2019 00:47:04 GMT  
		Size: 50.2 MB (50204387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692553187d5b0587d0d4599cdf144cd5cdc4dec9aec68292d2c92578b26d99d`  
		Last Modified: Sat, 01 Jun 2019 00:46:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d887732c50164a601370bab86f4c906c5185463fb6da4e9d212008ca8b6cb`  
		Last Modified: Sat, 01 Jun 2019 00:47:13 GMT  
		Size: 3.2 MB (3174735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5bc75951297acb3b6489e926970b46d63b2f2089bcdbf042efb9ba22b1c183e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193629561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950c6911f75647a677d21a09948b7b12dc58616221f81d3f9680d61cf31409d0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:50:34 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:51:43 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:51:45 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:51:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:51:46 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931780fb0e02837bfb0fe352eaf84007d0abc28b38285d38dcaa61d3e4d7d544`  
		Last Modified: Sat, 01 Jun 2019 00:53:45 GMT  
		Size: 39.8 MB (39750728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a89c67be0a3c701c4da51f9156301c738dc777f102cb8428ed9ae391da7dd`  
		Last Modified: Sat, 01 Jun 2019 00:53:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde2c88487a0534a98bec862f52fb961a692915e948f044e2cdbc3e73e71e811`  
		Last Modified: Sat, 01 Jun 2019 00:53:57 GMT  
		Size: 2.9 MB (2936615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:b575a16226de6d1e90d2c51392823e0bcd6b93719c31e120ef4e332941b3759f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:db8a975d7c9049b88db064de8e3c830a1b27d68b3dfd0396e012e8d8be179a71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.2 MB (263193830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c94bf8de2386aa1c7c22cb24e62d6d7abb1c88140282d9b6366545558e6016`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:43:28 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:44:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:44:34 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:44:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:44:35 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:44:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f82f8435cc744e4c5136dba1165b6b5dd8822429db78da45e2771da85302e`  
		Last Modified: Sat, 01 Jun 2019 00:47:04 GMT  
		Size: 50.2 MB (50204387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692553187d5b0587d0d4599cdf144cd5cdc4dec9aec68292d2c92578b26d99d`  
		Last Modified: Sat, 01 Jun 2019 00:46:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681d887732c50164a601370bab86f4c906c5185463fb6da4e9d212008ca8b6cb`  
		Last Modified: Sat, 01 Jun 2019 00:47:13 GMT  
		Size: 3.2 MB (3174735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5bc75951297acb3b6489e926970b46d63b2f2089bcdbf042efb9ba22b1c183e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193629561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950c6911f75647a677d21a09948b7b12dc58616221f81d3f9680d61cf31409d0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:50:34 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:51:43 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:51:45 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:51:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:51:46 GMT
CMD ["bash"]
# Sat, 01 Jun 2019 00:52:07 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931780fb0e02837bfb0fe352eaf84007d0abc28b38285d38dcaa61d3e4d7d544`  
		Last Modified: Sat, 01 Jun 2019 00:53:45 GMT  
		Size: 39.8 MB (39750728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a89c67be0a3c701c4da51f9156301c738dc777f102cb8428ed9ae391da7dd`  
		Last Modified: Sat, 01 Jun 2019 00:53:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde2c88487a0534a98bec862f52fb961a692915e948f044e2cdbc3e73e71e811`  
		Last Modified: Sat, 01 Jun 2019 00:53:57 GMT  
		Size: 2.9 MB (2936615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:37c266dca15d7c8ca4b75f2aa91afcfb6dcdf9b7cf6a4c2eb3933bceec93fcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e57f5b50926a366459770bb39962b4ac2009dec384200c52ab9e27f32f9b5421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260019095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30c7bd7a3f3f0de64770ca21f7fb18251bc11be88009d49fa75b8d4d0636fb9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:43:28 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:44:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:44:34 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:44:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:44:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f82f8435cc744e4c5136dba1165b6b5dd8822429db78da45e2771da85302e`  
		Last Modified: Sat, 01 Jun 2019 00:47:04 GMT  
		Size: 50.2 MB (50204387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692553187d5b0587d0d4599cdf144cd5cdc4dec9aec68292d2c92578b26d99d`  
		Last Modified: Sat, 01 Jun 2019 00:46:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4020c294fb31db3d73068cedee70b38238ec96a62c178678300201e7cae05ef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190692946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c11337d5f5f00e1b56183ee11ffbefe7fee0a672f3522d3294aeaac6bf2749`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:50:34 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:51:43 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:51:45 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:51:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:51:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931780fb0e02837bfb0fe352eaf84007d0abc28b38285d38dcaa61d3e4d7d544`  
		Last Modified: Sat, 01 Jun 2019 00:53:45 GMT  
		Size: 39.8 MB (39750728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a89c67be0a3c701c4da51f9156301c738dc777f102cb8428ed9ae391da7dd`  
		Last Modified: Sat, 01 Jun 2019 00:53:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:37c266dca15d7c8ca4b75f2aa91afcfb6dcdf9b7cf6a4c2eb3933bceec93fcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:e57f5b50926a366459770bb39962b4ac2009dec384200c52ab9e27f32f9b5421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260019095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30c7bd7a3f3f0de64770ca21f7fb18251bc11be88009d49fa75b8d4d0636fb9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:43:28 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:44:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:44:34 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:44:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:44:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301f82f8435cc744e4c5136dba1165b6b5dd8822429db78da45e2771da85302e`  
		Last Modified: Sat, 01 Jun 2019 00:47:04 GMT  
		Size: 50.2 MB (50204387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692553187d5b0587d0d4599cdf144cd5cdc4dec9aec68292d2c92578b26d99d`  
		Last Modified: Sat, 01 Jun 2019 00:46:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4020c294fb31db3d73068cedee70b38238ec96a62c178678300201e7cae05ef0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190692946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c11337d5f5f00e1b56183ee11ffbefe7fee0a672f3522d3294aeaac6bf2749`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Sat, 01 Jun 2019 00:50:34 GMT
ENV ROS_DISTRO=crystal
# Sat, 01 Jun 2019 00:51:43 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:51:45 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 01 Jun 2019 00:51:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 01 Jun 2019 00:51:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:931780fb0e02837bfb0fe352eaf84007d0abc28b38285d38dcaa61d3e4d7d544`  
		Last Modified: Sat, 01 Jun 2019 00:53:45 GMT  
		Size: 39.8 MB (39750728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523a89c67be0a3c701c4da51f9156301c738dc777f102cb8428ed9ae391da7dd`  
		Last Modified: Sat, 01 Jun 2019 00:53:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:dashing`

```console
$ docker pull ros@sha256:b4b059ae4384f1aca0ad492e6748890e42b8986ff4e5243b522e3bc72b5394a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:dashing` - linux; amd64

```console
$ docker pull ros@sha256:031119613d1861f59d5310172e183962dd4714cb5ba63ac7cab081419f8b0371
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288148519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b63fd4439de885d8f1eaf66a25b0f6a92c962d6a24dd9c07e8f5dc2874c5b4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:24:19 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:25:48 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:25:49 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:25:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:25:49 GMT
CMD ["bash"]
# Mon, 03 Jun 2019 20:26:16 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-base=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca80f13e50418ca050fdfaaaeee8f8d84f88f804c3793bd124073af4c9ac43d`  
		Last Modified: Mon, 03 Jun 2019 20:27:39 GMT  
		Size: 74.0 MB (74014703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f8991862ff5f4bdfadd7cd78dc3a634305244fd73cc4a1829adab2cf20556d`  
		Last Modified: Mon, 03 Jun 2019 20:27:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bffca7a1132d4b2336edeb14259a5949a2d17c8e1464cd98611ef0087f425b`  
		Last Modified: Mon, 03 Jun 2019 20:27:45 GMT  
		Size: 4.3 MB (4319108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:dashing` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4b91cf05008f68847875b7066463ae76bdf6e2cd10edae1f4d9bd2305b8a2130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215859275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819162bc25e8f53d9f68dd091c0433f736bdfc51a9089fdfe282dd3083b288b0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:55:18 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:56:24 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:56:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:56:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:56:28 GMT
CMD ["bash"]
# Mon, 03 Jun 2019 20:56:51 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-base=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff9fd6b234faab8ff64bd7f74c1ad9b550720e583b4aa7c729f916afbff8d5`  
		Last Modified: Mon, 03 Jun 2019 20:58:00 GMT  
		Size: 61.2 MB (61245110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c59f7eb0ec47f1aef1170f5240b2ee638ad569c0c4334a1a906782c973bb8`  
		Last Modified: Mon, 03 Jun 2019 20:57:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03007cb8859fb0d1d2d76752dfae59735dc5e3ecf9f7ce2cf989dd8341b7313`  
		Last Modified: Mon, 03 Jun 2019 20:58:11 GMT  
		Size: 3.7 MB (3671947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:dashing-ros-base`

```console
$ docker pull ros@sha256:b4b059ae4384f1aca0ad492e6748890e42b8986ff4e5243b522e3bc72b5394a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:dashing-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:031119613d1861f59d5310172e183962dd4714cb5ba63ac7cab081419f8b0371
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288148519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b63fd4439de885d8f1eaf66a25b0f6a92c962d6a24dd9c07e8f5dc2874c5b4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:24:19 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:25:48 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:25:49 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:25:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:25:49 GMT
CMD ["bash"]
# Mon, 03 Jun 2019 20:26:16 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-base=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca80f13e50418ca050fdfaaaeee8f8d84f88f804c3793bd124073af4c9ac43d`  
		Last Modified: Mon, 03 Jun 2019 20:27:39 GMT  
		Size: 74.0 MB (74014703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f8991862ff5f4bdfadd7cd78dc3a634305244fd73cc4a1829adab2cf20556d`  
		Last Modified: Mon, 03 Jun 2019 20:27:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bffca7a1132d4b2336edeb14259a5949a2d17c8e1464cd98611ef0087f425b`  
		Last Modified: Mon, 03 Jun 2019 20:27:45 GMT  
		Size: 4.3 MB (4319108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:dashing-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4b91cf05008f68847875b7066463ae76bdf6e2cd10edae1f4d9bd2305b8a2130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215859275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819162bc25e8f53d9f68dd091c0433f736bdfc51a9089fdfe282dd3083b288b0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:55:18 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:56:24 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:56:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:56:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:56:28 GMT
CMD ["bash"]
# Mon, 03 Jun 2019 20:56:51 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-base=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff9fd6b234faab8ff64bd7f74c1ad9b550720e583b4aa7c729f916afbff8d5`  
		Last Modified: Mon, 03 Jun 2019 20:58:00 GMT  
		Size: 61.2 MB (61245110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c59f7eb0ec47f1aef1170f5240b2ee638ad569c0c4334a1a906782c973bb8`  
		Last Modified: Mon, 03 Jun 2019 20:57:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03007cb8859fb0d1d2d76752dfae59735dc5e3ecf9f7ce2cf989dd8341b7313`  
		Last Modified: Mon, 03 Jun 2019 20:58:11 GMT  
		Size: 3.7 MB (3671947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:dashing-ros-base-bionic`

```console
$ docker pull ros@sha256:b4b059ae4384f1aca0ad492e6748890e42b8986ff4e5243b522e3bc72b5394a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:dashing-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:031119613d1861f59d5310172e183962dd4714cb5ba63ac7cab081419f8b0371
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288148519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b63fd4439de885d8f1eaf66a25b0f6a92c962d6a24dd9c07e8f5dc2874c5b4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:24:19 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:25:48 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:25:49 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:25:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:25:49 GMT
CMD ["bash"]
# Mon, 03 Jun 2019 20:26:16 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-base=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca80f13e50418ca050fdfaaaeee8f8d84f88f804c3793bd124073af4c9ac43d`  
		Last Modified: Mon, 03 Jun 2019 20:27:39 GMT  
		Size: 74.0 MB (74014703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f8991862ff5f4bdfadd7cd78dc3a634305244fd73cc4a1829adab2cf20556d`  
		Last Modified: Mon, 03 Jun 2019 20:27:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bffca7a1132d4b2336edeb14259a5949a2d17c8e1464cd98611ef0087f425b`  
		Last Modified: Mon, 03 Jun 2019 20:27:45 GMT  
		Size: 4.3 MB (4319108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:dashing-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4b91cf05008f68847875b7066463ae76bdf6e2cd10edae1f4d9bd2305b8a2130
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.9 MB (215859275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819162bc25e8f53d9f68dd091c0433f736bdfc51a9089fdfe282dd3083b288b0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:55:18 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:56:24 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:56:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:56:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:56:28 GMT
CMD ["bash"]
# Mon, 03 Jun 2019 20:56:51 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-base=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff9fd6b234faab8ff64bd7f74c1ad9b550720e583b4aa7c729f916afbff8d5`  
		Last Modified: Mon, 03 Jun 2019 20:58:00 GMT  
		Size: 61.2 MB (61245110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c59f7eb0ec47f1aef1170f5240b2ee638ad569c0c4334a1a906782c973bb8`  
		Last Modified: Mon, 03 Jun 2019 20:57:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03007cb8859fb0d1d2d76752dfae59735dc5e3ecf9f7ce2cf989dd8341b7313`  
		Last Modified: Mon, 03 Jun 2019 20:58:11 GMT  
		Size: 3.7 MB (3671947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:dashing-ros-core`

```console
$ docker pull ros@sha256:07aa13ec6bc60d0ae6b9803c0cb8478b4e017fed1c46f5ed511f0dbbd3856806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:dashing-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d80e9c3ec2efaaf3925fbbea613954b3b95b73430687e7254e8c5a84266ad04b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.8 MB (283829411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9292093483e849712fe6104b965e30ddc74835db5d0632803cf8260866fb30ab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:24:19 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:25:48 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:25:49 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:25:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:25:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca80f13e50418ca050fdfaaaeee8f8d84f88f804c3793bd124073af4c9ac43d`  
		Last Modified: Mon, 03 Jun 2019 20:27:39 GMT  
		Size: 74.0 MB (74014703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f8991862ff5f4bdfadd7cd78dc3a634305244fd73cc4a1829adab2cf20556d`  
		Last Modified: Mon, 03 Jun 2019 20:27:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:dashing-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c7928abdb91c45f88c1756056df3e2d97322e1ac383665bff5e43e136a92fb8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212187328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12a1d85327fcbe08f4b4d88e9dbf88b2a83d48b4cfc01dd695820bddf9b08f9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:55:18 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:56:24 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:56:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:56:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:56:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff9fd6b234faab8ff64bd7f74c1ad9b550720e583b4aa7c729f916afbff8d5`  
		Last Modified: Mon, 03 Jun 2019 20:58:00 GMT  
		Size: 61.2 MB (61245110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c59f7eb0ec47f1aef1170f5240b2ee638ad569c0c4334a1a906782c973bb8`  
		Last Modified: Mon, 03 Jun 2019 20:57:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:dashing-ros-core-bionic`

```console
$ docker pull ros@sha256:07aa13ec6bc60d0ae6b9803c0cb8478b4e017fed1c46f5ed511f0dbbd3856806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:dashing-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:d80e9c3ec2efaaf3925fbbea613954b3b95b73430687e7254e8c5a84266ad04b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.8 MB (283829411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9292093483e849712fe6104b965e30ddc74835db5d0632803cf8260866fb30ab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:16:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:40:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:40:12 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:41:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:23 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:41:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:41:40 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:41:44 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:24:19 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:25:48 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:25:49 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:25:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:25:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d719729a4057707a02f27987565d833c270316a75778e1e38c4a0e573cbad9`  
		Last Modified: Wed, 15 May 2019 23:38:16 GMT  
		Size: 151.6 MB (151620770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c1d8b597bfc025e4232e22737f1532f90b250fcb7eb43e505bb9b8c51d023c`  
		Last Modified: Sat, 01 Jun 2019 00:46:07 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1cd42337d501e1ff70b4fbd2dbd0c7b853aba8056bef1782201b68c7462c68`  
		Last Modified: Sat, 01 Jun 2019 00:46:06 GMT  
		Size: 5.4 KB (5431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e034ca0ab405b7d5213c854df2b71d1a157f3c40335ad47e66498cede391d4f`  
		Last Modified: Sat, 01 Jun 2019 00:46:19 GMT  
		Size: 27.9 MB (27946376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9942bd45718a9b2d34347ba50ae9ad9bf53726fbf300158e140b02739c53fb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 458.4 KB (458400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a09b65fd477072655a642c8d5fbfcaccb2d4f8ab4e10b6bafc55299fcf2cbb`  
		Last Modified: Sat, 01 Jun 2019 00:46:05 GMT  
		Size: 89.5 KB (89477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca80f13e50418ca050fdfaaaeee8f8d84f88f804c3793bd124073af4c9ac43d`  
		Last Modified: Mon, 03 Jun 2019 20:27:39 GMT  
		Size: 74.0 MB (74014703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f8991862ff5f4bdfadd7cd78dc3a634305244fd73cc4a1829adab2cf20556d`  
		Last Modified: Mon, 03 Jun 2019 20:27:15 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:dashing-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c7928abdb91c45f88c1756056df3e2d97322e1ac383665bff5e43e136a92fb8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.2 MB (212187328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12a1d85327fcbe08f4b4d88e9dbf88b2a83d48b4cfc01dd695820bddf9b08f9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:39:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:47:31 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 01 Jun 2019 00:47:33 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 01 Jun 2019 00:48:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:48:33 GMT
ENV LANG=C.UTF-8
# Sat, 01 Jun 2019 00:48:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 01 Jun 2019 00:48:55 GMT
RUN rosdep init     && rosdep update
# Sat, 01 Jun 2019 00:49:01 GMT
RUN pip3 install -U     argcomplete
# Mon, 03 Jun 2019 20:55:18 GMT
ENV ROS_DISTRO=dashing
# Mon, 03 Jun 2019 20:56:24 GMT
RUN apt-get update && apt-get install -y     ros-dashing-ros-core=0.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 03 Jun 2019 20:56:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Mon, 03 Jun 2019 20:56:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 03 Jun 2019 20:56:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54541bb62ee676f03bd8c63458274bf5636ddc4ce2d63bc799a249dc6409bfb9`  
		Last Modified: Wed, 29 May 2019 00:06:22 GMT  
		Size: 97.0 MB (97029389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b002b2d7101f5674f956eb20fd56b43a872f36034ac9e98b09635254a306b5e2`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a620a5c306b9dd5923b2746eab0196142fd588a9e11abd6d3a002e56155bb108`  
		Last Modified: Sat, 01 Jun 2019 00:52:51 GMT  
		Size: 5.4 KB (5430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d09c5f25a28b26de1761369da6d5a744cb2ed30d1bf8364bebc39dc3df4a4`  
		Last Modified: Sat, 01 Jun 2019 00:53:01 GMT  
		Size: 26.6 MB (26645047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f803ce806d037c08b569dd61dfac78ebc5226a917160ef06aee7e7df297551`  
		Last Modified: Sat, 01 Jun 2019 00:52:50 GMT  
		Size: 458.4 KB (458442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df093e8e24f76ee78f923d4505dfe3fb1dbc30b107dd2c385dad9c700e16aec`  
		Last Modified: Sat, 01 Jun 2019 00:52:49 GMT  
		Size: 89.6 KB (89609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ff9fd6b234faab8ff64bd7f74c1ad9b550720e583b4aa7c729f916afbff8d5`  
		Last Modified: Mon, 03 Jun 2019 20:58:00 GMT  
		Size: 61.2 MB (61245110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428c59f7eb0ec47f1aef1170f5240b2ee638ad569c0c4334a1a906782c973bb8`  
		Last Modified: Mon, 03 Jun 2019 20:57:36 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:200272dd74665b96fda5e1338f367f5b9f269ba1a955aceb3dce5ee820b68191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:131f6966231e2fa1fc0371c1a07cd6fbb1aae79ab2d4a8b26bfa214652ea3de1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.5 MB (313467104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f52d746dc75ac7944904261878a756b5064a4dfc610781e1fe3bb87c93d045b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:23:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143fdd1d33edde6eca93496c8836f535f6c972d98a78326b16762f46c67d970d`  
		Last Modified: Sat, 08 Jun 2019 00:07:03 GMT  
		Size: 46.8 MB (46775972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:a916de7a380088dffcc26116471e3e988a7e0e924ff2d3c453d2977d45df424b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284484200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f66d836530d5108c525dec368f17ae64f5fb9c29d42514eb6bb3c24f3d630`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:02:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dc0ba5af6a8cf6479f68239d656357bdb8d407b30f21ca3105f95ceb400c7e`  
		Last Modified: Sat, 08 Jun 2019 00:42:39 GMT  
		Size: 40.4 MB (40388621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:aa728663ef3351399ffb7ad765fe43300f387aea9d5d3d4411d3e2c65b538678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:d6d2738eeb60285f792d5268185205d91944a389add85d8faa6fde30e8853df3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549721969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91fb5286f7a3b898c7e5658eed13099b39d2aaa5b50b12d4ca4999fae6259c69`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:23:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:26:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143fdd1d33edde6eca93496c8836f535f6c972d98a78326b16762f46c67d970d`  
		Last Modified: Sat, 08 Jun 2019 00:07:03 GMT  
		Size: 46.8 MB (46775972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36a4f4155e3524ed1e1a274c467bc330e20daa319b0c4acef1d5079ba70d4dc`  
		Last Modified: Sat, 08 Jun 2019 00:08:13 GMT  
		Size: 236.3 MB (236254865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:b6563add7f829ad384ac31b2afea4e12a99eacbcb49498c9888ef3c6455f912c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.3 MB (496319966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b4a6100dd582c593b16db93740245ec07c6ff73875d7f7943acb43f4907aa8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:02:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:06:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dc0ba5af6a8cf6479f68239d656357bdb8d407b30f21ca3105f95ceb400c7e`  
		Last Modified: Sat, 08 Jun 2019 00:42:39 GMT  
		Size: 40.4 MB (40388621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837f19b643a8a05bd8a8e7fb456e683fd99ab24be31d886ccdfa273c511f329d`  
		Last Modified: Sat, 08 Jun 2019 00:44:00 GMT  
		Size: 211.8 MB (211835766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:aa728663ef3351399ffb7ad765fe43300f387aea9d5d3d4411d3e2c65b538678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:d6d2738eeb60285f792d5268185205d91944a389add85d8faa6fde30e8853df3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.7 MB (549721969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91fb5286f7a3b898c7e5658eed13099b39d2aaa5b50b12d4ca4999fae6259c69`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:23:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:26:49 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143fdd1d33edde6eca93496c8836f535f6c972d98a78326b16762f46c67d970d`  
		Last Modified: Sat, 08 Jun 2019 00:07:03 GMT  
		Size: 46.8 MB (46775972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36a4f4155e3524ed1e1a274c467bc330e20daa319b0c4acef1d5079ba70d4dc`  
		Last Modified: Sat, 08 Jun 2019 00:08:13 GMT  
		Size: 236.3 MB (236254865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:b6563add7f829ad384ac31b2afea4e12a99eacbcb49498c9888ef3c6455f912c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.3 MB (496319966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b4a6100dd582c593b16db93740245ec07c6ff73875d7f7943acb43f4907aa8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:02:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:06:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dc0ba5af6a8cf6479f68239d656357bdb8d407b30f21ca3105f95ceb400c7e`  
		Last Modified: Sat, 08 Jun 2019 00:42:39 GMT  
		Size: 40.4 MB (40388621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837f19b643a8a05bd8a8e7fb456e683fd99ab24be31d886ccdfa273c511f329d`  
		Last Modified: Sat, 08 Jun 2019 00:44:00 GMT  
		Size: 211.8 MB (211835766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:91c982f083fc690f6214fd66d732c0f983e6354bfddbd7f70bc813d1ae0f14a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:83685add982cfa0f55036aca6ea2b2e44d68d056eb06467a8a8d412e79e10318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.5 MB (332497792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23baf26ef5332d7a3bdd2c5553a80a5fb91c2e2615aa578cb879121a140e451b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:23:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:23:58 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143fdd1d33edde6eca93496c8836f535f6c972d98a78326b16762f46c67d970d`  
		Last Modified: Sat, 08 Jun 2019 00:07:03 GMT  
		Size: 46.8 MB (46775972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae5e267f5a8434f3869f1bdd456eb095a1cc6eacc860bf09b71db1d836d5dd9`  
		Last Modified: Sat, 08 Jun 2019 00:07:22 GMT  
		Size: 19.0 MB (19030688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:a7109163c10883ea4aa9982b706cffdee5e7027dd005077123efc9be04df8db4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302171377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c0c12d15e93c9485dd107c54ca35a654ddfcdc6085f7436aeb288ad5a514ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:02:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:03:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dc0ba5af6a8cf6479f68239d656357bdb8d407b30f21ca3105f95ceb400c7e`  
		Last Modified: Sat, 08 Jun 2019 00:42:39 GMT  
		Size: 40.4 MB (40388621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77966d5d33aa188d85ce3d00182f2365d60c8240e2f797d6a61872679c0a8a56`  
		Last Modified: Sat, 08 Jun 2019 00:42:55 GMT  
		Size: 17.7 MB (17687177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:91c982f083fc690f6214fd66d732c0f983e6354bfddbd7f70bc813d1ae0f14a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:83685add982cfa0f55036aca6ea2b2e44d68d056eb06467a8a8d412e79e10318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.5 MB (332497792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23baf26ef5332d7a3bdd2c5553a80a5fb91c2e2615aa578cb879121a140e451b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:23:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:23:58 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143fdd1d33edde6eca93496c8836f535f6c972d98a78326b16762f46c67d970d`  
		Last Modified: Sat, 08 Jun 2019 00:07:03 GMT  
		Size: 46.8 MB (46775972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae5e267f5a8434f3869f1bdd456eb095a1cc6eacc860bf09b71db1d836d5dd9`  
		Last Modified: Sat, 08 Jun 2019 00:07:22 GMT  
		Size: 19.0 MB (19030688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:a7109163c10883ea4aa9982b706cffdee5e7027dd005077123efc9be04df8db4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302171377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48c0c12d15e93c9485dd107c54ca35a654ddfcdc6085f7436aeb288ad5a514ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:02:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:03:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dc0ba5af6a8cf6479f68239d656357bdb8d407b30f21ca3105f95ceb400c7e`  
		Last Modified: Sat, 08 Jun 2019 00:42:39 GMT  
		Size: 40.4 MB (40388621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77966d5d33aa188d85ce3d00182f2365d60c8240e2f797d6a61872679c0a8a56`  
		Last Modified: Sat, 08 Jun 2019 00:42:55 GMT  
		Size: 17.7 MB (17687177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:200272dd74665b96fda5e1338f367f5b9f269ba1a955aceb3dce5ee820b68191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:131f6966231e2fa1fc0371c1a07cd6fbb1aae79ab2d4a8b26bfa214652ea3de1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.5 MB (313467104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f52d746dc75ac7944904261878a756b5064a4dfc610781e1fe3bb87c93d045b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:23:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143fdd1d33edde6eca93496c8836f535f6c972d98a78326b16762f46c67d970d`  
		Last Modified: Sat, 08 Jun 2019 00:07:03 GMT  
		Size: 46.8 MB (46775972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:a916de7a380088dffcc26116471e3e988a7e0e924ff2d3c453d2977d45df424b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284484200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f66d836530d5108c525dec368f17ae64f5fb9c29d42514eb6bb3c24f3d630`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:02:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dc0ba5af6a8cf6479f68239d656357bdb8d407b30f21ca3105f95ceb400c7e`  
		Last Modified: Sat, 08 Jun 2019 00:42:39 GMT  
		Size: 40.4 MB (40388621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:200272dd74665b96fda5e1338f367f5b9f269ba1a955aceb3dce5ee820b68191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:131f6966231e2fa1fc0371c1a07cd6fbb1aae79ab2d4a8b26bfa214652ea3de1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.5 MB (313467104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f52d746dc75ac7944904261878a756b5064a4dfc610781e1fe3bb87c93d045b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:23:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143fdd1d33edde6eca93496c8836f535f6c972d98a78326b16762f46c67d970d`  
		Last Modified: Sat, 08 Jun 2019 00:07:03 GMT  
		Size: 46.8 MB (46775972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:a916de7a380088dffcc26116471e3e988a7e0e924ff2d3c453d2977d45df424b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.5 MB (284484200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:247f66d836530d5108c525dec368f17ae64f5fb9c29d42514eb6bb3c24f3d630`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:02:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9dc0ba5af6a8cf6479f68239d656357bdb8d407b30f21ca3105f95ceb400c7e`  
		Last Modified: Sat, 08 Jun 2019 00:42:39 GMT  
		Size: 40.4 MB (40388621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:cc86177bd2696f4e22a7da746976381c920ecb829b379bf2bf51448373a0e8c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:628dddc4b6ac5339b005fe4f1afbc61697768cadc97285707bed12547891a1ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266691132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ba84041b4229135e8a86e6cdf76f53041089eae1d53b2f1f078353241be89b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:2544bd64f38a2fbdee56690057c9bf91e2b81e2e1c816b3500e71b4a28645bcb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244095579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d0976ff3020119587aaede18b61d3a55ca99ea5c815f315b34280e80eb06c5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:cc86177bd2696f4e22a7da746976381c920ecb829b379bf2bf51448373a0e8c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:628dddc4b6ac5339b005fe4f1afbc61697768cadc97285707bed12547891a1ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266691132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0ba84041b4229135e8a86e6cdf76f53041089eae1d53b2f1f078353241be89b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:11 GMT
ADD file:1e01ab604c0cc308430848d15d75fa9c09a2c53f156a6a2dbdee4ac618c8c8aa in / 
# Wed, 15 May 2019 21:21:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:13 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:29:56 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:20:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:20:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:20:51 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:20:59 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:20:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 07 Jun 2019 23:22:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:22:39 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:22:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:22:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7344f52cb744a28edb7b2c806f4227d07219709d2365c32a42b580165d261c1`  
		Last Modified: Wed, 15 May 2019 12:22:08 GMT  
		Size: 67.2 MB (67191601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:515c9bb515362c9d26b0c6acaa3ad0a79c20cf421d56a8c5bb4ddc60a336239b`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1eabe0537eb2d3647100f04687474cc1c232b4e512e70fd0a09b93d55da8f69`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4701f1215c13b72f8e1fbd292558fc4cb49655209db1b450cbb5c068be64956c`  
		Last Modified: Wed, 15 May 2019 21:22:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70bb54e8f8da18624b751ed9da1e48f1ff62e62f3228f0e16fda14db23d115f9`  
		Last Modified: Wed, 15 May 2019 23:20:49 GMT  
		Size: 18.0 MB (18040655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6554f6e42575909cb297653e0847b7b6fed42be494dc26b133d2e219d5b84867`  
		Last Modified: Sat, 08 Jun 2019 00:06:12 GMT  
		Size: 13.1 KB (13098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007bd718e1e57d1ee79000035a5c2baf9f9904d4eee863ed81b4443d603c011`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 260.4 KB (260357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d02ec589d29f96274aebcab6f73a016a5fd085da5ad3530eb788989a0da8e6`  
		Last Modified: Sat, 08 Jun 2019 00:06:20 GMT  
		Size: 31.0 MB (30958748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a2ce53a2546ee760d0f302dc8f4bec9fca90178227f5d87b6b338261d85d10`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 452.5 KB (452487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4e869e1390c450aa38f1b4ddc3bed197bb57457ebd7a7a7cf42a9715410df98`  
		Last Modified: Sat, 08 Jun 2019 00:06:46 GMT  
		Size: 149.7 MB (149700816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b8a64f99310f3dc126fad97f52c88c6436ea7b54c0f785e9685dc847a1ed6e`  
		Last Modified: Sat, 08 Jun 2019 00:06:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:2544bd64f38a2fbdee56690057c9bf91e2b81e2e1c816b3500e71b4a28645bcb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244095579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d0976ff3020119587aaede18b61d3a55ca99ea5c815f315b34280e80eb06c5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:38 GMT
ADD file:5a23fd6ac38e37ff5736b56e6bda65245c53cad8ede347990541a3ecc5547fca in / 
# Wed, 15 May 2019 22:00:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:43 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:20:14 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:57:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:57:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:58:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:48 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:58:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:59:05 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:59:05 GMT
ENV ROS_DISTRO=indigo
# Sat, 08 Jun 2019 00:01:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:18 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:01:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:01:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e61899ba83168070e1f62c03d9c951b49380755b789b58dde6674c1fd77b5976`  
		Last Modified: Wed, 15 May 2019 22:03:16 GMT  
		Size: 61.5 MB (61535055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15ab03fb18c99d76f60fb7e8da9d90feb75fa24c4dea743b7ee92e2a92cd83`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9150d30e002a17c813eed22654e990e37de8934b23d5a36ac2ca001808adb6`  
		Last Modified: Wed, 15 May 2019 22:02:54 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f509ae3a8676ea3bb07352c8e28e88a66d8bde0b2b7159c869a0a93d907fce6a`  
		Last Modified: Wed, 15 May 2019 22:02:53 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba16eebed3b1089eb31396478372b24c39a012c3e3ded274aefcea913ffb646`  
		Last Modified: Wed, 15 May 2019 23:09:35 GMT  
		Size: 16.0 MB (15995700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0676206307675a2e39d6f060169ea0713d1188b82932126856a499a960df7279`  
		Last Modified: Sat, 08 Jun 2019 00:41:26 GMT  
		Size: 13.1 KB (13101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cda9652ef5f40e2121a5cb30a3c1088ea7fc3f42dc49a1157a5b9cf5965be56`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 260.4 KB (260354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8dcb0bf9ed6e5be527f42d02c3c8f6fea10de99102cd929b22dd51daae2fd1`  
		Last Modified: Sat, 08 Jun 2019 00:41:35 GMT  
		Size: 28.4 MB (28425829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafaa82109897cb7de69ce7051caf3ffd9facf83ff2fb08651ce6b1dd4527962`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 452.7 KB (452661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0b9569b2a1e5fc6195c71b6f925ea46490a59c6693fee08d6dbf48162e0bd0`  
		Last Modified: Sat, 08 Jun 2019 00:42:13 GMT  
		Size: 137.3 MB (137335368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe7c3080175a34e1c3fdf920620c0a2b8b300f8a82d4348947690464426c2e2`  
		Last Modified: Sat, 08 Jun 2019 00:41:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:83232e49c43624d460e394818cbf4e0eecc9ad9c0de505b9c342bc83e6750d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:c6e3715091b2c295d724ed8d36a24b11c89bb6e05e7de66e03ea3509c2664bf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.7 MB (384743940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15edb146170e24d7a8907d5cbc5d3263f941f6d215139cb4ab5f7a00e65c9889`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:31:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e12c304dda29c43b94fa9e1ab3c8d8c3e2211830131e89516b66e617d4cdc`  
		Last Modified: Sat, 08 Jun 2019 00:09:26 GMT  
		Size: 85.7 MB (85691057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:ae3742f8e0f3066073ddf0aa549bee4a021d80f083db754ec43f2c31d3354721
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336124270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b58894666383bbfd9d9d1770cf58e4df3346721cfb1dda0f31943d37f03e791`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:12:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c8dd05e4c3a672b6d6b1e8f82451fff0ca8d986f641dc7631a4da98a8fd4ad`  
		Last Modified: Sat, 08 Jun 2019 00:45:44 GMT  
		Size: 76.5 MB (76466900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f98b5c1b1710495c60168b55e03dfbc33831541b95291c4f6a0b9e3e2ea0616
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349972907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eabb73924df9d9c326cea87db9deaabcce0a85868175f1664063fd5e804549`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:45:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992563966f2290b557359660bb700c776ec77a8452b59eff16626fe4fb22e316`  
		Last Modified: Sat, 08 Jun 2019 00:35:11 GMT  
		Size: 78.0 MB (77980164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:1a5575b5a16dd7f13fd6349f871e8bff02b76e0c7b64a1bec0e86b2154d96810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:c9c3e1d58ebf6d623786dc22153c3dffe4dcbe4c1e507b2fa8db5e9155d339c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.4 MB (725433866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c782a1a522044e1254dd73b3861775819a02b9afee84b0661a27a97915742a64`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:31:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:35:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e12c304dda29c43b94fa9e1ab3c8d8c3e2211830131e89516b66e617d4cdc`  
		Last Modified: Sat, 08 Jun 2019 00:09:26 GMT  
		Size: 85.7 MB (85691057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16e256c6b6b87b7aaa18b008a41c14c7eb0fb093b2b9aafafd5c800c39b9f72`  
		Last Modified: Sat, 08 Jun 2019 00:11:11 GMT  
		Size: 340.7 MB (340689926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:e74a535eaf145b0980099019010ddb4ea43ceacbc7aa8909b67996f3d3ddcb1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.9 MB (616890550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7674b155c6a773bf5a2b1199ce2d0ef33a9a5a31fe279d502d244ba1893a406`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:12:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:18:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c8dd05e4c3a672b6d6b1e8f82451fff0ca8d986f641dc7631a4da98a8fd4ad`  
		Last Modified: Sat, 08 Jun 2019 00:45:44 GMT  
		Size: 76.5 MB (76466900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad217ca2cbcf080f2c9025fdb3c2ca35e6ae9eebf7ce11386542754275d0870`  
		Last Modified: Sat, 08 Jun 2019 00:47:57 GMT  
		Size: 280.8 MB (280766280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b991bc79afdc42dc8f98cb36e657f6a8b924cd39b8bc4715828dd4246441b2ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 MB (641191564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ab220d71059ddfad08b60d3a4900a8710027954755390b3c7cb575c183d101`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:45:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992563966f2290b557359660bb700c776ec77a8452b59eff16626fe4fb22e316`  
		Last Modified: Sat, 08 Jun 2019 00:35:11 GMT  
		Size: 78.0 MB (77980164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d448cce4bfbdf9fbd3ab7f25165084597baf01ef763b7bf6f0069f5aef4dc6`  
		Last Modified: Sat, 08 Jun 2019 00:37:51 GMT  
		Size: 291.2 MB (291218657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:1a5575b5a16dd7f13fd6349f871e8bff02b76e0c7b64a1bec0e86b2154d96810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c9c3e1d58ebf6d623786dc22153c3dffe4dcbe4c1e507b2fa8db5e9155d339c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.4 MB (725433866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c782a1a522044e1254dd73b3861775819a02b9afee84b0661a27a97915742a64`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:31:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:35:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e12c304dda29c43b94fa9e1ab3c8d8c3e2211830131e89516b66e617d4cdc`  
		Last Modified: Sat, 08 Jun 2019 00:09:26 GMT  
		Size: 85.7 MB (85691057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16e256c6b6b87b7aaa18b008a41c14c7eb0fb093b2b9aafafd5c800c39b9f72`  
		Last Modified: Sat, 08 Jun 2019 00:11:11 GMT  
		Size: 340.7 MB (340689926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:e74a535eaf145b0980099019010ddb4ea43ceacbc7aa8909b67996f3d3ddcb1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.9 MB (616890550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7674b155c6a773bf5a2b1199ce2d0ef33a9a5a31fe279d502d244ba1893a406`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:12:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:18:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c8dd05e4c3a672b6d6b1e8f82451fff0ca8d986f641dc7631a4da98a8fd4ad`  
		Last Modified: Sat, 08 Jun 2019 00:45:44 GMT  
		Size: 76.5 MB (76466900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad217ca2cbcf080f2c9025fdb3c2ca35e6ae9eebf7ce11386542754275d0870`  
		Last Modified: Sat, 08 Jun 2019 00:47:57 GMT  
		Size: 280.8 MB (280766280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b991bc79afdc42dc8f98cb36e657f6a8b924cd39b8bc4715828dd4246441b2ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 MB (641191564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48ab220d71059ddfad08b60d3a4900a8710027954755390b3c7cb575c183d101`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:45:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992563966f2290b557359660bb700c776ec77a8452b59eff16626fe4fb22e316`  
		Last Modified: Sat, 08 Jun 2019 00:35:11 GMT  
		Size: 78.0 MB (77980164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d448cce4bfbdf9fbd3ab7f25165084597baf01ef763b7bf6f0069f5aef4dc6`  
		Last Modified: Sat, 08 Jun 2019 00:37:51 GMT  
		Size: 291.2 MB (291218657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:d97e0d40007bc60c89941234fe327202f0970c7fdf8ed5c5eb4a13ea776dedae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:68f7c92fcdf3cb1e053ed1c03399f4a2ca1d3b7b47e0f9b426cf7ed521a36dd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488378460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6acf543af43e80cf6d5b6d1b889f56d6e2bfb458acc8a0d7e129344b5ec0b28`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:31:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:32:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e12c304dda29c43b94fa9e1ab3c8d8c3e2211830131e89516b66e617d4cdc`  
		Last Modified: Sat, 08 Jun 2019 00:09:26 GMT  
		Size: 85.7 MB (85691057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90f23c9d5fecfbd865c24380dd0b92e9d975a8421aef82e805b8d2c8fbffbbd`  
		Last Modified: Sat, 08 Jun 2019 00:09:56 GMT  
		Size: 103.6 MB (103634520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:6bcb038f72c9f5b31d9c09e0454b4b0107bf426850c746970a71cd5b7c79c51b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426146954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d7bb16aef2acfba62bb6c00624cd4d1c01e79760b7208ef3822a3e7ef0e4b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:12:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:14:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c8dd05e4c3a672b6d6b1e8f82451fff0ca8d986f641dc7631a4da98a8fd4ad`  
		Last Modified: Sat, 08 Jun 2019 00:45:44 GMT  
		Size: 76.5 MB (76466900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9c358c6fa58fa8351c3c9fb17b5064f0023126292718053435e865ce067a99`  
		Last Modified: Sat, 08 Jun 2019 00:46:19 GMT  
		Size: 90.0 MB (90022684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c2e8f773518d627316b818b0f9351dc43abd05f19bccd2521d85a0607c1b8fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443877043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885d0a31d572c96c2d86d4e8fdbc916b4f1147038b568536cbf88c8d5df01595`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:45:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:46:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992563966f2290b557359660bb700c776ec77a8452b59eff16626fe4fb22e316`  
		Last Modified: Sat, 08 Jun 2019 00:35:11 GMT  
		Size: 78.0 MB (77980164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924d2ef0dbc0c93f5c5dc3d5ec7fb472ceaf836c5605f53d9b814cce28bfded0`  
		Last Modified: Sat, 08 Jun 2019 00:36:06 GMT  
		Size: 93.9 MB (93904136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:d97e0d40007bc60c89941234fe327202f0970c7fdf8ed5c5eb4a13ea776dedae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:68f7c92fcdf3cb1e053ed1c03399f4a2ca1d3b7b47e0f9b426cf7ed521a36dd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488378460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6acf543af43e80cf6d5b6d1b889f56d6e2bfb458acc8a0d7e129344b5ec0b28`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:31:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:32:55 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e12c304dda29c43b94fa9e1ab3c8d8c3e2211830131e89516b66e617d4cdc`  
		Last Modified: Sat, 08 Jun 2019 00:09:26 GMT  
		Size: 85.7 MB (85691057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90f23c9d5fecfbd865c24380dd0b92e9d975a8421aef82e805b8d2c8fbffbbd`  
		Last Modified: Sat, 08 Jun 2019 00:09:56 GMT  
		Size: 103.6 MB (103634520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:6bcb038f72c9f5b31d9c09e0454b4b0107bf426850c746970a71cd5b7c79c51b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426146954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d7bb16aef2acfba62bb6c00624cd4d1c01e79760b7208ef3822a3e7ef0e4b5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:12:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:14:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c8dd05e4c3a672b6d6b1e8f82451fff0ca8d986f641dc7631a4da98a8fd4ad`  
		Last Modified: Sat, 08 Jun 2019 00:45:44 GMT  
		Size: 76.5 MB (76466900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9c358c6fa58fa8351c3c9fb17b5064f0023126292718053435e865ce067a99`  
		Last Modified: Sat, 08 Jun 2019 00:46:19 GMT  
		Size: 90.0 MB (90022684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c2e8f773518d627316b818b0f9351dc43abd05f19bccd2521d85a0607c1b8fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443877043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:885d0a31d572c96c2d86d4e8fdbc916b4f1147038b568536cbf88c8d5df01595`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:45:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:46:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992563966f2290b557359660bb700c776ec77a8452b59eff16626fe4fb22e316`  
		Last Modified: Sat, 08 Jun 2019 00:35:11 GMT  
		Size: 78.0 MB (77980164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924d2ef0dbc0c93f5c5dc3d5ec7fb472ceaf836c5605f53d9b814cce28bfded0`  
		Last Modified: Sat, 08 Jun 2019 00:36:06 GMT  
		Size: 93.9 MB (93904136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:83232e49c43624d460e394818cbf4e0eecc9ad9c0de505b9c342bc83e6750d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:c6e3715091b2c295d724ed8d36a24b11c89bb6e05e7de66e03ea3509c2664bf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.7 MB (384743940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15edb146170e24d7a8907d5cbc5d3263f941f6d215139cb4ab5f7a00e65c9889`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:31:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e12c304dda29c43b94fa9e1ab3c8d8c3e2211830131e89516b66e617d4cdc`  
		Last Modified: Sat, 08 Jun 2019 00:09:26 GMT  
		Size: 85.7 MB (85691057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:ae3742f8e0f3066073ddf0aa549bee4a021d80f083db754ec43f2c31d3354721
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336124270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b58894666383bbfd9d9d1770cf58e4df3346721cfb1dda0f31943d37f03e791`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:12:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c8dd05e4c3a672b6d6b1e8f82451fff0ca8d986f641dc7631a4da98a8fd4ad`  
		Last Modified: Sat, 08 Jun 2019 00:45:44 GMT  
		Size: 76.5 MB (76466900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f98b5c1b1710495c60168b55e03dfbc33831541b95291c4f6a0b9e3e2ea0616
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349972907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eabb73924df9d9c326cea87db9deaabcce0a85868175f1664063fd5e804549`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:45:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992563966f2290b557359660bb700c776ec77a8452b59eff16626fe4fb22e316`  
		Last Modified: Sat, 08 Jun 2019 00:35:11 GMT  
		Size: 78.0 MB (77980164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:83232e49c43624d460e394818cbf4e0eecc9ad9c0de505b9c342bc83e6750d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c6e3715091b2c295d724ed8d36a24b11c89bb6e05e7de66e03ea3509c2664bf6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.7 MB (384743940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15edb146170e24d7a8907d5cbc5d3263f941f6d215139cb4ab5f7a00e65c9889`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:31:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4e12c304dda29c43b94fa9e1ab3c8d8c3e2211830131e89516b66e617d4cdc`  
		Last Modified: Sat, 08 Jun 2019 00:09:26 GMT  
		Size: 85.7 MB (85691057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:ae3742f8e0f3066073ddf0aa549bee4a021d80f083db754ec43f2c31d3354721
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336124270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b58894666383bbfd9d9d1770cf58e4df3346721cfb1dda0f31943d37f03e791`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:12:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c8dd05e4c3a672b6d6b1e8f82451fff0ca8d986f641dc7631a4da98a8fd4ad`  
		Last Modified: Sat, 08 Jun 2019 00:45:44 GMT  
		Size: 76.5 MB (76466900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0f98b5c1b1710495c60168b55e03dfbc33831541b95291c4f6a0b9e3e2ea0616
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349972907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eabb73924df9d9c326cea87db9deaabcce0a85868175f1664063fd5e804549`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:45:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992563966f2290b557359660bb700c776ec77a8452b59eff16626fe4fb22e316`  
		Last Modified: Sat, 08 Jun 2019 00:35:11 GMT  
		Size: 78.0 MB (77980164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:8a36b1ab0030a80623a919ed3db246771442c009ed9f3443d62f219d634c9af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:eef7297f1865646971ccc6956396f2a91ba01360b174a8aa39575c0991f2711a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299052883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b788efe919e0fd85a4482e14fcc7471d3945ddee7f7da34266febd7629c2719d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:c472cfa512b5431ff290a7d7087b15f07f1edc03661909da81c64982e05600e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259657370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee73f44b7bccdb0f8ef5676eab68a8f17ba7b007d2edd77775c1facc22693a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bd505525a379217edf238c742c3a5a3bdde3bf655db3f8360b46103ecf67630
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271992743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dc945fc1ff0bd1c31a0fcc49aceac7501e1476e1940fa6a37c578b29dcc918`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:8a36b1ab0030a80623a919ed3db246771442c009ed9f3443d62f219d634c9af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:eef7297f1865646971ccc6956396f2a91ba01360b174a8aa39575c0991f2711a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299052883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b788efe919e0fd85a4482e14fcc7471d3945ddee7f7da34266febd7629c2719d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:28:04 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:29:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:29:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:29:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:29:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bc99f5cbffadda8b78ba5c5f2f2adf83674c016e6eb9d466a55365c1043a96`  
		Last Modified: Sat, 08 Jun 2019 00:09:01 GMT  
		Size: 193.3 MB (193263391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2f0988027de8d2e2607428ee1255970279d774bff63cd8f7c1aa309734ca7d`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:c472cfa512b5431ff290a7d7087b15f07f1edc03661909da81c64982e05600e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259657370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee73f44b7bccdb0f8ef5676eab68a8f17ba7b007d2edd77775c1facc22693a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:08:33 GMT
ENV ROS_DISTRO=kinetic
# Sat, 08 Jun 2019 00:11:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:11:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:11:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1020655ba97c6c3ce6b80814d2472438e6316945463981191ed7053572b0b064`  
		Last Modified: Sat, 08 Jun 2019 00:45:12 GMT  
		Size: 164.6 MB (164625861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5497cc3096783a9ebd948350a88c01e24a25ee4503e4fb10db8ef31bfe9a23`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8bd505525a379217edf238c742c3a5a3bdde3bf655db3f8360b46103ecf67630
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271992743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58dc945fc1ff0bd1c31a0fcc49aceac7501e1476e1940fa6a37c578b29dcc918`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:41:19 GMT
ENV ROS_DISTRO=kinetic
# Fri, 07 Jun 2019 23:43:34 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:43:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:43:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:43:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c158d35e5f1b051829290309d4f851ff9b818801da4cf8daf79cdaab686d790`  
		Last Modified: Sat, 08 Jun 2019 00:34:36 GMT  
		Size: 173.9 MB (173903062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627d3eeb4c727be29913c3b6f1cde2c57dfa943c95c940d621af3e5496fbcc89`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:51d1223ec0a14a2e128d06bae141422b4267b10260fb043d065f1c7fb80ef578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:0a1eccd6e9d5d9ed530bc8d1741fbeef2f7bba90695d41771eb7d49caebd1d9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.0 MB (425967522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f93effde23a6a1178666aefecab382fbff82dae210a9515887de5df5842fca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:3823b1f3a2f526eb076e92f696bfa4be54078dc1ac12d6e83954f9576738c74b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.4 MB (378358141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b89af9a5ccc36a94b02c431ff649bde0cbe28e84895c8314950e2692e137976`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c9572af11157453cae6bcc7bc7cc7b2507de86977f5c1ea1cdfc9b8d0562c42c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357169592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596eb0fa3074412dd8cdd1304f1c2e9bed962e9d5badb6f2f1b6c342dc302384`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:a26b0aa1305e8a0bf0c1058c06c789bcbe7bd5a30052c6bb72797a08c367156d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:15ccdf218c0486ed1bb9bdefb96469c1468c3795603789ad80dd0b0a1908b4a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384645023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28bfd0cce883da80d3481787e78e411cb5eff999ba3aa1a70c8bd6dc4c84056`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:38:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121345ff6e6c15c441c44d1fd6909dbd57245aac516ec7c793d68c034cffea22`  
		Last Modified: Sat, 08 Jun 2019 00:12:26 GMT  
		Size: 85.6 MB (85619953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:5d70a1fa345aa47009810f7a2c7dd71fe6403b6da025c414ffca8e1c2e225ac8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336057937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a565ed34354f4534b161ea11e7c6b2cd0b8b61b8fdcb0adb0d933c98735398eb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:22:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eaf37887a77b6ce9fb28debfd50ddb97e2bb11825a7faf4cbb477da317c38c`  
		Last Modified: Sat, 08 Jun 2019 00:49:32 GMT  
		Size: 76.4 MB (76396771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0dd50afed6a40c4596d7c1f5478829335c3c31c96dd756924ad2fe477235d523
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349885226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab6ece08ee5216fcd94626c7efb699f62c5845c06ce079b18ac73f8daa6e44c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:54:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af585517394da1529183715bc5634a1afc1bda1182446ac24653068e07875e4`  
		Last Modified: Sat, 08 Jun 2019 00:39:37 GMT  
		Size: 77.9 MB (77889572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:050748522040bc9f084a71d07a98bf5e29c9eee66863513604a7cc613d504328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:bcec7edd26601f9296133f67d087ed75b9d552ab130137f11d706c6f0843e665
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.8 MB (723759388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8397d1099cfb7d73443e0e23badc940460840d11ae60ca2520d5a278aa483ed`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:38:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:40:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121345ff6e6c15c441c44d1fd6909dbd57245aac516ec7c793d68c034cffea22`  
		Last Modified: Sat, 08 Jun 2019 00:12:26 GMT  
		Size: 85.6 MB (85619953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb70ca38e8d50af38958c0be251e4ec927557aef61eb3a9bca01bd574bb8c56`  
		Last Modified: Sat, 08 Jun 2019 00:14:13 GMT  
		Size: 339.1 MB (339114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:2f1418a63ee37f424011d1c14f6779a122a710ac1e502ac170ee5d87e092f754
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.4 MB (616384633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd37d398b657230e6101d5985762f2475c945ac4077af98ef94c468af30a876`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:22:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:28:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eaf37887a77b6ce9fb28debfd50ddb97e2bb11825a7faf4cbb477da317c38c`  
		Last Modified: Sat, 08 Jun 2019 00:49:32 GMT  
		Size: 76.4 MB (76396771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cb640b53d725109b44f786dc0c9aee4edaeafad55c4b90446e5c85b348bc89`  
		Last Modified: Sat, 08 Jun 2019 00:51:54 GMT  
		Size: 280.3 MB (280326696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b4990d8475319aec21222f111636b1bf60a983abfdaf371d1a2af7cdc20c436d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639865298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92e781818e1b5cc3830694bfb9570c9feae0c5b5065e9bc300325f8ee5ad137`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:54:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:59:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af585517394da1529183715bc5634a1afc1bda1182446ac24653068e07875e4`  
		Last Modified: Sat, 08 Jun 2019 00:39:37 GMT  
		Size: 77.9 MB (77889572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22bd31f274370a5538c09b90e077c073fa62afa6af21952aaaeea9a0a59c10b`  
		Last Modified: Sat, 08 Jun 2019 00:42:09 GMT  
		Size: 290.0 MB (289980072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:39ea1c8fb61079a97c6220c681551a97fae784043fa3d73b46ca04e38d68fc74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:d32eb559c66dfa46db918ff023bf5afb89cf9170bd186845d5796a430b67463a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.1 MB (933117419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49589c2dcffc00af9bdab25a36f3e9d8658da4731245c724c3ba39d386fc2b6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:36:02 GMT
ENV ROS_DISTRO=lunar
# Tue, 11 Jun 2019 07:38:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:38:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:38:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:38:13 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:39:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:46:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9778d1569e21f1ba421953f26ceb6dd7f7eef53e966181373e2bcf2223e574e5`  
		Last Modified: Tue, 11 Jun 2019 07:58:14 GMT  
		Size: 251.2 MB (251181917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60152eade6e2d9b36295f9916063b60ea8dd4a1274aec87f1cc955a413b228e`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba89385c55791a2f8281c611422bf77281a362f4e474ad1238e054c0e1ee579d`  
		Last Modified: Tue, 11 Jun 2019 07:59:02 GMT  
		Size: 123.1 MB (123064913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef2de7992690b85a77a664a58f413252e84aea76aa29869556e6eaee0fc123f`  
		Last Modified: Tue, 11 Jun 2019 08:02:01 GMT  
		Size: 438.4 MB (438430375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ff4c78b47860d23bb6650b3228e339bffcdb648848cc04ca8e5db6c7a7a8aa72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.5 MB (816450154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad11738a2a3136fd1c1fa8e0738b9d82576ac5fadc39f6bda39bf2b01b9f8362`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:01:46 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:03:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:03:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:03:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:03:59 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:05:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:11:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9c16548f0045008d04a938587cedb92ff554a9d21cf8a75fb3806be9f362d`  
		Last Modified: Sat, 08 Jun 2019 00:43:22 GMT  
		Size: 206.1 MB (206098495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89c203f26e83494ddfd0fb5489bff95ed161f013607036cc23a5ac9f95abc2a`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e16370a912dba4564be7bfd5b07a423f3eb204c6e1762b5e009932ef7855d45`  
		Last Modified: Sat, 08 Jun 2019 00:44:00 GMT  
		Size: 116.9 MB (116885935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7039840df71101518d9f6bbeb764192ead53a626112b04e7b047bd7ef296e426`  
		Last Modified: Sat, 08 Jun 2019 00:46:35 GMT  
		Size: 378.6 MB (378623447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:050748522040bc9f084a71d07a98bf5e29c9eee66863513604a7cc613d504328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:bcec7edd26601f9296133f67d087ed75b9d552ab130137f11d706c6f0843e665
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.8 MB (723759388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8397d1099cfb7d73443e0e23badc940460840d11ae60ca2520d5a278aa483ed`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:38:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:40:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121345ff6e6c15c441c44d1fd6909dbd57245aac516ec7c793d68c034cffea22`  
		Last Modified: Sat, 08 Jun 2019 00:12:26 GMT  
		Size: 85.6 MB (85619953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb70ca38e8d50af38958c0be251e4ec927557aef61eb3a9bca01bd574bb8c56`  
		Last Modified: Sat, 08 Jun 2019 00:14:13 GMT  
		Size: 339.1 MB (339114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:2f1418a63ee37f424011d1c14f6779a122a710ac1e502ac170ee5d87e092f754
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.4 MB (616384633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dd37d398b657230e6101d5985762f2475c945ac4077af98ef94c468af30a876`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:22:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:28:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eaf37887a77b6ce9fb28debfd50ddb97e2bb11825a7faf4cbb477da317c38c`  
		Last Modified: Sat, 08 Jun 2019 00:49:32 GMT  
		Size: 76.4 MB (76396771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cb640b53d725109b44f786dc0c9aee4edaeafad55c4b90446e5c85b348bc89`  
		Last Modified: Sat, 08 Jun 2019 00:51:54 GMT  
		Size: 280.3 MB (280326696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b4990d8475319aec21222f111636b1bf60a983abfdaf371d1a2af7cdc20c436d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639865298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92e781818e1b5cc3830694bfb9570c9feae0c5b5065e9bc300325f8ee5ad137`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:54:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:59:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af585517394da1529183715bc5634a1afc1bda1182446ac24653068e07875e4`  
		Last Modified: Sat, 08 Jun 2019 00:39:37 GMT  
		Size: 77.9 MB (77889572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22bd31f274370a5538c09b90e077c073fa62afa6af21952aaaeea9a0a59c10b`  
		Last Modified: Sat, 08 Jun 2019 00:42:09 GMT  
		Size: 290.0 MB (289980072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:d925b8013fb15a51d04e1e7b9b82debcbf34847f605ad01590a3b4142107162a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:6536d9050e1a81513cbb7e1216382073a40196944996c15ed3c5f5f4a4c94cbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488374438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5992b57a1d1789ffe6cbc04ffb730a9cf1f5fa1876af303971f875a742adebb3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:38:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:38:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121345ff6e6c15c441c44d1fd6909dbd57245aac516ec7c793d68c034cffea22`  
		Last Modified: Sat, 08 Jun 2019 00:12:26 GMT  
		Size: 85.6 MB (85619953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463b618ad491dbbd1a1b8bcfaa22667c02c580d4fd6f09739bfbdd694c87fe28`  
		Last Modified: Sat, 08 Jun 2019 00:12:54 GMT  
		Size: 103.7 MB (103729415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:1519a0f39537eb4c5da8d9b76a82bd4797272784dc830cb2b84f23b69adb1228
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426153544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7e8ea6eb3c08e274451b8b2c72c7d80bcfa6556894d23c3ba8bc825391aaa2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:22:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eaf37887a77b6ce9fb28debfd50ddb97e2bb11825a7faf4cbb477da317c38c`  
		Last Modified: Sat, 08 Jun 2019 00:49:32 GMT  
		Size: 76.4 MB (76396771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c70a529d1b2155fe8e582fa4b5029114f1a25c47e56f3aea25568d01f23b03b`  
		Last Modified: Sat, 08 Jun 2019 00:50:19 GMT  
		Size: 90.1 MB (90095607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:baf3e397c56348622f16912efc5278ab2b743eac22342f43ece515769b420d08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443878456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be280204b998dda8530f2b9dc232d6c3e1407477aa92160047ba40691cceb9b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:54:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:55:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af585517394da1529183715bc5634a1afc1bda1182446ac24653068e07875e4`  
		Last Modified: Sat, 08 Jun 2019 00:39:37 GMT  
		Size: 77.9 MB (77889572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9ef3e3203681572e10657801a8bacc3d231c5b5672a3ca9a4ebe34b74da1d6`  
		Last Modified: Sat, 08 Jun 2019 00:40:17 GMT  
		Size: 94.0 MB (93993230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:a2c41a4cd1dd03929cd3aed2d623da5f58bcebc113216b1b2c4d976b843e3725
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:54a2cc1ad634a92f80f5c0fe13f35ad197fc4202eb04be9f2471cf68881fe146
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.1 MB (555121774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22021fce7343fe52f295796fddbcd527566d91304bde7fc28fd9ffc868d3ea8e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:36:02 GMT
ENV ROS_DISTRO=lunar
# Tue, 11 Jun 2019 07:38:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:38:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:38:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:38:13 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:39:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:41:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9778d1569e21f1ba421953f26ceb6dd7f7eef53e966181373e2bcf2223e574e5`  
		Last Modified: Tue, 11 Jun 2019 07:58:14 GMT  
		Size: 251.2 MB (251181917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60152eade6e2d9b36295f9916063b60ea8dd4a1274aec87f1cc955a413b228e`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba89385c55791a2f8281c611422bf77281a362f4e474ad1238e054c0e1ee579d`  
		Last Modified: Tue, 11 Jun 2019 07:59:02 GMT  
		Size: 123.1 MB (123064913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4da71069efbdd1cb162cb70378c157329961d41cbd9c2702bdb3b4fe1d2b52`  
		Last Modified: Tue, 11 Jun 2019 07:59:31 GMT  
		Size: 60.4 MB (60434730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1be99fa3b0abedc8cd1e27b02a620601533d2a08f8690280eeb4918c45cf04c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495359678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be6710fb53033dd1ce0d76e74fc557c6a3c720fc89e987e1f055be2441a2c7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:01:46 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:03:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:03:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:03:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:03:59 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:05:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9c16548f0045008d04a938587cedb92ff554a9d21cf8a75fb3806be9f362d`  
		Last Modified: Sat, 08 Jun 2019 00:43:22 GMT  
		Size: 206.1 MB (206098495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89c203f26e83494ddfd0fb5489bff95ed161f013607036cc23a5ac9f95abc2a`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e16370a912dba4564be7bfd5b07a423f3eb204c6e1762b5e009932ef7855d45`  
		Last Modified: Sat, 08 Jun 2019 00:44:00 GMT  
		Size: 116.9 MB (116885935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5626070a99930b0e6f18a119303d9a04ba2b54a820bfa0a594d996fb38a8ef9f`  
		Last Modified: Sat, 08 Jun 2019 00:44:27 GMT  
		Size: 57.5 MB (57532971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:d925b8013fb15a51d04e1e7b9b82debcbf34847f605ad01590a3b4142107162a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6536d9050e1a81513cbb7e1216382073a40196944996c15ed3c5f5f4a4c94cbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488374438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5992b57a1d1789ffe6cbc04ffb730a9cf1f5fa1876af303971f875a742adebb3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:38:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:38:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121345ff6e6c15c441c44d1fd6909dbd57245aac516ec7c793d68c034cffea22`  
		Last Modified: Sat, 08 Jun 2019 00:12:26 GMT  
		Size: 85.6 MB (85619953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463b618ad491dbbd1a1b8bcfaa22667c02c580d4fd6f09739bfbdd694c87fe28`  
		Last Modified: Sat, 08 Jun 2019 00:12:54 GMT  
		Size: 103.7 MB (103729415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1519a0f39537eb4c5da8d9b76a82bd4797272784dc830cb2b84f23b69adb1228
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426153544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7e8ea6eb3c08e274451b8b2c72c7d80bcfa6556894d23c3ba8bc825391aaa2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:22:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:24:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eaf37887a77b6ce9fb28debfd50ddb97e2bb11825a7faf4cbb477da317c38c`  
		Last Modified: Sat, 08 Jun 2019 00:49:32 GMT  
		Size: 76.4 MB (76396771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c70a529d1b2155fe8e582fa4b5029114f1a25c47e56f3aea25568d01f23b03b`  
		Last Modified: Sat, 08 Jun 2019 00:50:19 GMT  
		Size: 90.1 MB (90095607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:baf3e397c56348622f16912efc5278ab2b743eac22342f43ece515769b420d08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443878456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be280204b998dda8530f2b9dc232d6c3e1407477aa92160047ba40691cceb9b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:54:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:55:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af585517394da1529183715bc5634a1afc1bda1182446ac24653068e07875e4`  
		Last Modified: Sat, 08 Jun 2019 00:39:37 GMT  
		Size: 77.9 MB (77889572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9ef3e3203681572e10657801a8bacc3d231c5b5672a3ca9a4ebe34b74da1d6`  
		Last Modified: Sat, 08 Jun 2019 00:40:17 GMT  
		Size: 94.0 MB (93993230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:a26b0aa1305e8a0bf0c1058c06c789bcbe7bd5a30052c6bb72797a08c367156d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:15ccdf218c0486ed1bb9bdefb96469c1468c3795603789ad80dd0b0a1908b4a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384645023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28bfd0cce883da80d3481787e78e411cb5eff999ba3aa1a70c8bd6dc4c84056`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:38:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121345ff6e6c15c441c44d1fd6909dbd57245aac516ec7c793d68c034cffea22`  
		Last Modified: Sat, 08 Jun 2019 00:12:26 GMT  
		Size: 85.6 MB (85619953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:5d70a1fa345aa47009810f7a2c7dd71fe6403b6da025c414ffca8e1c2e225ac8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336057937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a565ed34354f4534b161ea11e7c6b2cd0b8b61b8fdcb0adb0d933c98735398eb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:22:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eaf37887a77b6ce9fb28debfd50ddb97e2bb11825a7faf4cbb477da317c38c`  
		Last Modified: Sat, 08 Jun 2019 00:49:32 GMT  
		Size: 76.4 MB (76396771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0dd50afed6a40c4596d7c1f5478829335c3c31c96dd756924ad2fe477235d523
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349885226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab6ece08ee5216fcd94626c7efb699f62c5845c06ce079b18ac73f8daa6e44c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:54:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af585517394da1529183715bc5634a1afc1bda1182446ac24653068e07875e4`  
		Last Modified: Sat, 08 Jun 2019 00:39:37 GMT  
		Size: 77.9 MB (77889572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:29c09a483d07c570e2623195e58e4a4d949e05faf043877c0f454771134475a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:ecb05d54e5f53e815bcfcf6a4d200b560de13e6738219ffb24e06f665a251958
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.7 MB (494687044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:223448ad720a26f649b0cd168c7c39b392a8b01d1e68470584bab3271956ccb3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:36:02 GMT
ENV ROS_DISTRO=lunar
# Tue, 11 Jun 2019 07:38:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:38:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:38:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:38:13 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:39:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9778d1569e21f1ba421953f26ceb6dd7f7eef53e966181373e2bcf2223e574e5`  
		Last Modified: Tue, 11 Jun 2019 07:58:14 GMT  
		Size: 251.2 MB (251181917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60152eade6e2d9b36295f9916063b60ea8dd4a1274aec87f1cc955a413b228e`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba89385c55791a2f8281c611422bf77281a362f4e474ad1238e054c0e1ee579d`  
		Last Modified: Tue, 11 Jun 2019 07:59:02 GMT  
		Size: 123.1 MB (123064913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:be81793310cb12540e6ed4b1783fa5af50e319a0c91da3f256eb109f4d58daa7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.8 MB (437826707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9092e7665169047b769c034707fc0701e8cc85606e2aed0b125b0816d86c3e69`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:01:46 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:03:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:03:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:03:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:03:59 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:05:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9c16548f0045008d04a938587cedb92ff554a9d21cf8a75fb3806be9f362d`  
		Last Modified: Sat, 08 Jun 2019 00:43:22 GMT  
		Size: 206.1 MB (206098495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89c203f26e83494ddfd0fb5489bff95ed161f013607036cc23a5ac9f95abc2a`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e16370a912dba4564be7bfd5b07a423f3eb204c6e1762b5e009932ef7855d45`  
		Last Modified: Sat, 08 Jun 2019 00:44:00 GMT  
		Size: 116.9 MB (116885935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:a26b0aa1305e8a0bf0c1058c06c789bcbe7bd5a30052c6bb72797a08c367156d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:15ccdf218c0486ed1bb9bdefb96469c1468c3795603789ad80dd0b0a1908b4a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384645023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b28bfd0cce883da80d3481787e78e411cb5eff999ba3aa1a70c8bd6dc4c84056`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:38:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121345ff6e6c15c441c44d1fd6909dbd57245aac516ec7c793d68c034cffea22`  
		Last Modified: Sat, 08 Jun 2019 00:12:26 GMT  
		Size: 85.6 MB (85619953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:5d70a1fa345aa47009810f7a2c7dd71fe6403b6da025c414ffca8e1c2e225ac8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336057937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a565ed34354f4534b161ea11e7c6b2cd0b8b61b8fdcb0adb0d933c98735398eb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:22:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87eaf37887a77b6ce9fb28debfd50ddb97e2bb11825a7faf4cbb477da317c38c`  
		Last Modified: Sat, 08 Jun 2019 00:49:32 GMT  
		Size: 76.4 MB (76396771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0dd50afed6a40c4596d7c1f5478829335c3c31c96dd756924ad2fe477235d523
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349885226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab6ece08ee5216fcd94626c7efb699f62c5845c06ce079b18ac73f8daa6e44c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:54:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af585517394da1529183715bc5634a1afc1bda1182446ac24653068e07875e4`  
		Last Modified: Sat, 08 Jun 2019 00:39:37 GMT  
		Size: 77.9 MB (77889572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:d5f41a271f68ff4161ceb59e626b8a0189b1707f5262a23e10f502e7457f8046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:1a6716d38d5869ac9e45adfd1ff570bbd978a14ba9d895328ee25a9918a40582
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299025070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d194133ae2aa2e9f6f88979885e1e5f40f702de7fe5be6094c00579c7acabdd5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:581913c820df32fc81710736b20e2cc6d4e951b7f209878e788986c2ae252e39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259661166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bb5ad943995b90f72cfc3310afd020af3b0d746f9d7e24370d0b80c9d4f5b06`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d82303c435aa453a41863faa60f7d66cb2f6242e27c9d64a0e90231827eba84f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271995654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6678873a498a476a20e5cfd8e93d72f1b486aaa001f60c80372f5b2daced44d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:b1cb548adc249f8bfe7bac30af6f062ba1578ee5bf463de06032faea8937300c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:d9dc93e83a4da773ad3519d268d5e2ce36f2099d16b9ec6da100d06e44843f1d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.6 MB (371622131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c07a11db80b7f5ee40609501cd478d8a97db23b0f8acf9c0a43d975531e179`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:36:02 GMT
ENV ROS_DISTRO=lunar
# Tue, 11 Jun 2019 07:38:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:38:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:38:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:38:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9778d1569e21f1ba421953f26ceb6dd7f7eef53e966181373e2bcf2223e574e5`  
		Last Modified: Tue, 11 Jun 2019 07:58:14 GMT  
		Size: 251.2 MB (251181917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60152eade6e2d9b36295f9916063b60ea8dd4a1274aec87f1cc955a413b228e`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:06076336d53ef251362bd3d5db7083fb3e8966a81dcfe06d38f53663200cea9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320940772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1431f5c1f863aab69092a0cecfa05b2165e409c1263e3345fbcd681573f683`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:01:46 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:03:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:03:58 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:03:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:03:59 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e9c16548f0045008d04a938587cedb92ff554a9d21cf8a75fb3806be9f362d`  
		Last Modified: Sat, 08 Jun 2019 00:43:22 GMT  
		Size: 206.1 MB (206098495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89c203f26e83494ddfd0fb5489bff95ed161f013607036cc23a5ac9f95abc2a`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:d5f41a271f68ff4161ceb59e626b8a0189b1707f5262a23e10f502e7457f8046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:1a6716d38d5869ac9e45adfd1ff570bbd978a14ba9d895328ee25a9918a40582
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (299025070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d194133ae2aa2e9f6f88979885e1e5f40f702de7fe5be6094c00579c7acabdd5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:21:22 GMT
ADD file:a65e0467dbedc0992151651c136374c16f65d9905eac9d04d0925039ada64e4c in / 
# Wed, 15 May 2019 21:21:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:21:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:21:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:21:24 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:46:52 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:27:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:27:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:27:54 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:27:55 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:28:04 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:36:12 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:37:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:37:20 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:37:20 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:37:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ff7e2e5f967fb9c4e8099e63508ab0dddebe3f820d08ca7fd568431b0d10c0e`  
		Last Modified: Wed, 15 May 2019 21:22:41 GMT  
		Size: 43.8 MB (43767987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59856638ac9f32d4caa0f5761b2597fe251642786fdfe1b917ddbb074b890c29`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f317d6d954b9a59c54b2cb09e1f30cd3e872796e431cd2ceac5ed570beb2939`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dde5e2a643eca8fde0eed52f4aed31f3ecd9c1b2f24d5e3729cd8d2ae68177`  
		Last Modified: Wed, 15 May 2019 21:22:34 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f2b688b7cfdef1ba2b0b16be39445cc1b3a127239113436022a6fc5c72748ff`  
		Last Modified: Wed, 15 May 2019 22:04:16 GMT  
		Size: 16.7 MB (16665409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3de3ed36c535cf81ec26bc4339a03b10d80cf8836f0d681c19d48c7c2aab4f`  
		Last Modified: Sat, 08 Jun 2019 00:08:18 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ccf18297a4d92f2a87d8ca3747d904ef32e36d5cca942aa9b6140f907ce06e3`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 5.5 KB (5503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:391aabec2b7904e8b9b1bc7b775caf09b922d000937ed2554c2d9be064350d94`  
		Last Modified: Sat, 08 Jun 2019 00:08:29 GMT  
		Size: 44.9 MB (44883265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c05745f6da40349edabefd237a3242c68d0e77c2d2a287dd955349c1284436a`  
		Last Modified: Sat, 08 Jun 2019 00:08:17 GMT  
		Size: 452.5 KB (452485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9429b3ccc920793ad6fbbced1b4da7b16d8e337642c64acb138b22ce1db3fb3e`  
		Last Modified: Sat, 08 Jun 2019 00:11:58 GMT  
		Size: 193.2 MB (193235578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4deaa412f90ff3afca59fa33b9b4e5f4a299cc597f7a5b6a19bdc595e76b6e69`  
		Last Modified: Sat, 08 Jun 2019 00:11:16 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:581913c820df32fc81710736b20e2cc6d4e951b7f209878e788986c2ae252e39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259661166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bb5ad943995b90f72cfc3310afd020af3b0d746f9d7e24370d0b80c9d4f5b06`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:01:11 GMT
ADD file:e3e908dea62d6ac5d75feed4ce747f828c7039bffa89e8c5f2403c754486bcba in / 
# Wed, 15 May 2019 22:01:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:01:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:01:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:01:23 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:31:30 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:07:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:07:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:08:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:08:15 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:08:16 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:08:33 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:18:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 08 Jun 2019 00:21:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:21:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:21:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:21:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a027e7245f4cbc5ca68d6d8b7c053c760c7a00e13bdd11098f2acc920d556686`  
		Last Modified: Wed, 15 May 2019 22:03:35 GMT  
		Size: 38.7 MB (38661450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ffdafd8d70bbc42fd829175e2099e4e82a1db6cc891e17b92cd4a3c021e8d`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0e9656d1ad6a2f07f7017853107b870a96216b23cf9569a49e2cf8b2a2cae4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c082f43dadcf929bc212f6e08772d345664127b16957b61148e59f5293b9ab4`  
		Last Modified: Wed, 15 May 2019 22:03:23 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd7fa9e50e5e9cde882175f43d5febb46aff105bdd796a815b4d2243804a9b2`  
		Last Modified: Wed, 15 May 2019 23:12:18 GMT  
		Size: 15.0 MB (14955265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7749c3550a7cbfe8f79aced19b5ae277a5b3fce06714e2b8102b5397434c7546`  
		Last Modified: Sat, 08 Jun 2019 00:44:15 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f7089463871abb1f960a4f9731a747df54c2d5ad0f3ee9ac3343f3fca169f1`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 5.5 KB (5548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d48f821f694db1e086ec176939defbf2b9fb621294bc547121d8421e0b55ff5`  
		Last Modified: Sat, 08 Jun 2019 00:44:29 GMT  
		Size: 40.9 MB (40941762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a94a4edb473cdb3d624cc5ddbc5baa1ec7dc29876e13f7169fdafb2cc982aa4`  
		Last Modified: Sat, 08 Jun 2019 00:44:14 GMT  
		Size: 452.7 KB (452655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5687681bdb3c0512dab3b33018a1e417774605fd6cadf891f71247f896d65e44`  
		Last Modified: Sat, 08 Jun 2019 00:49:01 GMT  
		Size: 164.6 MB (164629657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92ff092bd752c3aba562529a3ff67d0553abeb7b61ca6b69cf28d3497d083a5`  
		Last Modified: Sat, 08 Jun 2019 00:48:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d82303c435aa453a41863faa60f7d66cb2f6242e27c9d64a0e90231827eba84f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271995654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6678873a498a476a20e5cfd8e93d72f1b486aaa001f60c80372f5b2daced44d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:02:10 GMT
ADD file:81f87271787be80ea77e1821297834511b89549fa034684308ea3bf67bb677d3 in / 
# Wed, 15 May 2019 22:02:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:02:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:02:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:02:21 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 22:46:39 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:39:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:40:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:40:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:41:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:41:19 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:50:30 GMT
ENV ROS_DISTRO=lunar
# Fri, 07 Jun 2019 23:52:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:215d50fb2ac2471381e13d47c544497c277a594500caf44ebf82fea12d469315`  
		Last Modified: Wed, 15 May 2019 22:04:26 GMT  
		Size: 39.7 MB (39735614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dd288ee506b85bb8957c3bb1b3db4f69a1a82d6e660d01c9e80788a055e69c`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afb7b35c54f8584570b5ef18953d0349d2002d1234904bacad8c4710b455487`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dade4d0269c77cc45e4ac681641980b9f5894b24bc302f226286271bd30e225`  
		Last Modified: Wed, 15 May 2019 22:04:14 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0dcb85f68a97cd034dc4883626d0621e742e424bce25eb8e1ec7bd2e8e589`  
		Last Modified: Tue, 28 May 2019 23:44:36 GMT  
		Size: 15.1 MB (15055001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d3201f0a6eeabdeb92108ab347d56d431948f12e9591da332dc45c33e9b2d2`  
		Last Modified: Sat, 08 Jun 2019 00:33:41 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079ca31b103f153297e4a91cce5b4224918151a83f775e1463f62973483baba6`  
		Last Modified: Sat, 08 Jun 2019 00:33:40 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a6d2da6bce90e42500e94419482e7c56238547d5c6a431e0309dc52aed9b27`  
		Last Modified: Sat, 08 Jun 2019 00:33:54 GMT  
		Size: 42.8 MB (42826186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e979dc7beeb012c8fc534f81d0f9e05ce120f980bab8cc11f41b54d6a69c81`  
		Last Modified: Sat, 08 Jun 2019 00:33:39 GMT  
		Size: 452.6 KB (452556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978e18077e575dfb01c8d70278182958af781c43c0eb773d73738bde94b3f7ee`  
		Last Modified: Sat, 08 Jun 2019 00:38:58 GMT  
		Size: 173.9 MB (173905973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef8d85bbd36f4f5b694a0856a8962ad7c868055174792852882a573684387e`  
		Last Modified: Sat, 08 Jun 2019 00:38:01 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:51d1223ec0a14a2e128d06bae141422b4267b10260fb043d065f1c7fb80ef578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:0a1eccd6e9d5d9ed530bc8d1741fbeef2f7bba90695d41771eb7d49caebd1d9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.0 MB (425967522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f93effde23a6a1178666aefecab382fbff82dae210a9515887de5df5842fca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:3823b1f3a2f526eb076e92f696bfa4be54078dc1ac12d6e83954f9576738c74b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.4 MB (378358141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b89af9a5ccc36a94b02c431ff649bde0cbe28e84895c8314950e2692e137976`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c9572af11157453cae6bcc7bc7cc7b2507de86977f5c1ea1cdfc9b8d0562c42c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357169592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596eb0fa3074412dd8cdd1304f1c2e9bed962e9d5badb6f2f1b6c342dc302384`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:e700fcb30e66deade001bdeba84130e1cc33a5f7e95e46af402ab7ee2ccde31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:7dfa2ff6103d4eb66eaadc666eb5cc08b9cc03fbb86440d657b2357d4ecbe7f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **786.4 MB (786446041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584d424e2fd17734cf9d78adb1a49af94fb382b01bf425523800faa7da9d59cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a87c7bf467ebbc80ba4b5f6bc99745934a241cd4d9065deab2ea7c4bb1ccaf`  
		Last Modified: Sat, 08 Jun 2019 00:20:53 GMT  
		Size: 360.5 MB (360478519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:1ece5df6349466f0be8bc561be88ed5085c34ce9ca488911fb131da8a6631aa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.9 MB (688868956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a214d9eb8ecefd00c189f3835e8db584f5d50852e6173e9317280816dee788`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:40:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b632742d5a512c5203d5f902f825307087ed44a7ee52083e5357386c8b8512`  
		Last Modified: Sat, 08 Jun 2019 00:55:54 GMT  
		Size: 310.5 MB (310510815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:df9da387e1337376a78a788981211a7443036a97eabcff48097094463a8d0834
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.3 MB (700266053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17bf635afde801c2757578c65932d896d689976d7d38bb58754aef1363ed53d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:24:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ce54d20d64b98b97eaf1382ab3c855ce8511ccf71ab996b9628a74771d72fa`  
		Last Modified: Sat, 08 Jun 2019 00:50:52 GMT  
		Size: 343.1 MB (343096461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:e700fcb30e66deade001bdeba84130e1cc33a5f7e95e46af402ab7ee2ccde31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:7dfa2ff6103d4eb66eaadc666eb5cc08b9cc03fbb86440d657b2357d4ecbe7f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **786.4 MB (786446041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:584d424e2fd17734cf9d78adb1a49af94fb382b01bf425523800faa7da9d59cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:58:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a87c7bf467ebbc80ba4b5f6bc99745934a241cd4d9065deab2ea7c4bb1ccaf`  
		Last Modified: Sat, 08 Jun 2019 00:20:53 GMT  
		Size: 360.5 MB (360478519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:1ece5df6349466f0be8bc561be88ed5085c34ce9ca488911fb131da8a6631aa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.9 MB (688868956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a214d9eb8ecefd00c189f3835e8db584f5d50852e6173e9317280816dee788`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:40:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b632742d5a512c5203d5f902f825307087ed44a7ee52083e5357386c8b8512`  
		Last Modified: Sat, 08 Jun 2019 00:55:54 GMT  
		Size: 310.5 MB (310510815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:df9da387e1337376a78a788981211a7443036a97eabcff48097094463a8d0834
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.3 MB (700266053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17bf635afde801c2757578c65932d896d689976d7d38bb58754aef1363ed53d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:24:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ce54d20d64b98b97eaf1382ab3c855ce8511ccf71ab996b9628a74771d72fa`  
		Last Modified: Sat, 08 Jun 2019 00:50:52 GMT  
		Size: 343.1 MB (343096461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:149112ee572d26be56327bef2aa0cce6941efe01e454f91be7d5078dabd367b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:1ffc7424b13d8e47cfb83dfb7cdf52c78d08d141db3bf05ac89a9dc2d47239c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.1 MB (879114798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc9ae6c525d35827ff4bd69b5814e7dbd0bc5ca05666b96702228ca5a7c9ecc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:46:54 GMT
ENV ROS_DISTRO=melodic
# Tue, 11 Jun 2019 07:49:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:49:22 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:49:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:49:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:50:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:55:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ff836545d8853a45a32d375c553789a361cc25335d45ee22458105615b1d9f`  
		Last Modified: Tue, 11 Jun 2019 08:03:31 GMT  
		Size: 269.5 MB (269499941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7411aff7023a6878a021482bcbdc0b13cd679418f5f63ca1e4b61300b858b53f`  
		Last Modified: Tue, 11 Jun 2019 08:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279971e48b327df375a49c274a730f187a0e773a0152a6e020ebb4143518254`  
		Last Modified: Tue, 11 Jun 2019 08:04:12 GMT  
		Size: 108.5 MB (108461292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919208b20c720cbe8d8686f1c37035f076722dc560f09a4c29fe2fb4d6a8b012`  
		Last Modified: Tue, 11 Jun 2019 08:07:02 GMT  
		Size: 380.7 MB (380713351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ccd9722f482171fefc723e64b0495d4457007ab8d17fe36032849359706a08d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.0 MB (796971801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6464caa5f44bc4289c3e098fae80a1eba1957b21d58111e199b6015d273a148`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:24:43 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:26:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:26:40 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:26:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:26:41 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:27:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:32:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0020bfa8e8d576f4049eff90d61eb6c9beca5d5d8696ae9034977fabcf6524`  
		Last Modified: Sat, 08 Jun 2019 00:52:25 GMT  
		Size: 223.7 MB (223693060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a03e3a6efbd3febb03abd6e4a77f3598a645e0ddc1bccc59c5521de060a36`  
		Last Modified: Sat, 08 Jun 2019 00:51:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72b57ea2fd9d7f4983cdfb64fe17793eca2ef03cadd9a9cbaa0a434c0a39d0d`  
		Last Modified: Sat, 08 Jun 2019 00:53:01 GMT  
		Size: 102.9 MB (102947770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81fe00643c36aff5f7270566181eddb6c614c0cd85fdf96a0c3369c43da6e6b`  
		Last Modified: Sat, 08 Jun 2019 00:55:52 GMT  
		Size: 355.5 MB (355488693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:b681c61af7c3aacce03bbfcbb7cb045ca52f296da6388e7d46a3657a44858e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:0ae56bfb876cbad12d9752f84d6c747e5bd5a9d41501f658c1bbc817406a9981
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.8 MB (463780009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5995b57a83155897990b407ac6fef565ddede5505d0c41c7b76af98513b4c02e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:54:01 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e151a2fb68cccc468419a0cc6cd5218fb84fdd959313746b6839d8aab33a9899`  
		Last Modified: Sat, 08 Jun 2019 00:19:33 GMT  
		Size: 37.8 MB (37812487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:6db83784cd04a4e18ef941fa6e145e9e21d8350c7250bc1ecff8803788d4aa5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.8 MB (411767000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80054503e3a336d4b8e171f5f5b9d36c28eb3257c16b50e106a015f28172b3de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:36:14 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308183f7e194c2b8c9429364ab1f813fc175dd1e8b2fc53e4f825e3300d50ed6`  
		Last Modified: Sat, 08 Jun 2019 00:54:03 GMT  
		Size: 33.4 MB (33408859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f4a44a12eb77a9a0d17af2eb369ee915b92e38ebf5d93a3bb8364fbcd75acd4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.8 MB (392751834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75ff24c3ea682a50a23e86977d065fbd5c2008fef6193046680a871574a83d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:19:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92876023fb33f3adf54ed922150ed604cc740a758a0e9ab2f123f03dddc86c1`  
		Last Modified: Sat, 08 Jun 2019 00:48:45 GMT  
		Size: 35.6 MB (35582242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:b681c61af7c3aacce03bbfcbb7cb045ca52f296da6388e7d46a3657a44858e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:0ae56bfb876cbad12d9752f84d6c747e5bd5a9d41501f658c1bbc817406a9981
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **463.8 MB (463780009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5995b57a83155897990b407ac6fef565ddede5505d0c41c7b76af98513b4c02e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:54:01 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e151a2fb68cccc468419a0cc6cd5218fb84fdd959313746b6839d8aab33a9899`  
		Last Modified: Sat, 08 Jun 2019 00:19:33 GMT  
		Size: 37.8 MB (37812487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:6db83784cd04a4e18ef941fa6e145e9e21d8350c7250bc1ecff8803788d4aa5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.8 MB (411767000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80054503e3a336d4b8e171f5f5b9d36c28eb3257c16b50e106a015f28172b3de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:36:14 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308183f7e194c2b8c9429364ab1f813fc175dd1e8b2fc53e4f825e3300d50ed6`  
		Last Modified: Sat, 08 Jun 2019 00:54:03 GMT  
		Size: 33.4 MB (33408859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f4a44a12eb77a9a0d17af2eb369ee915b92e38ebf5d93a3bb8364fbcd75acd4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.8 MB (392751834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d75ff24c3ea682a50a23e86977d065fbd5c2008fef6193046680a871574a83d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:19:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92876023fb33f3adf54ed922150ed604cc740a758a0e9ab2f123f03dddc86c1`  
		Last Modified: Sat, 08 Jun 2019 00:48:45 GMT  
		Size: 35.6 MB (35582242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:2864d3063693de9733db5f165287451d89484fd60ba28100fc367ae3cd77da86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:540a71b2cc5e5578f3eaa6de562b8fd9157d599607536867af4e49fc42c16f52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.7 MB (553719628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb25271de7bf48e41ca55d32f35089e2647401c0444cdf5efaaa79b573047977`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:46:54 GMT
ENV ROS_DISTRO=melodic
# Tue, 11 Jun 2019 07:49:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:49:22 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:49:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:49:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:50:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:51:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ff836545d8853a45a32d375c553789a361cc25335d45ee22458105615b1d9f`  
		Last Modified: Tue, 11 Jun 2019 08:03:31 GMT  
		Size: 269.5 MB (269499941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7411aff7023a6878a021482bcbdc0b13cd679418f5f63ca1e4b61300b858b53f`  
		Last Modified: Tue, 11 Jun 2019 08:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279971e48b327df375a49c274a730f187a0e773a0152a6e020ebb4143518254`  
		Last Modified: Tue, 11 Jun 2019 08:04:12 GMT  
		Size: 108.5 MB (108461292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da848ba9fbc7e89741abcfedad90880cd2a4c991720142cdc8cb10600c0cd62`  
		Last Modified: Tue, 11 Jun 2019 08:04:35 GMT  
		Size: 55.3 MB (55318181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:88e98581b2ea6d98e92fc6c3c8ff1ecca0182147e8fb4663cd41a95d7a5c11cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.1 MB (494086924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4764d4af1ffe7317f12b3920d6ae741125f989fed207403eaeb9a26935d221fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:24:43 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:26:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:26:40 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:26:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:26:41 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:27:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:28:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0020bfa8e8d576f4049eff90d61eb6c9beca5d5d8696ae9034977fabcf6524`  
		Last Modified: Sat, 08 Jun 2019 00:52:25 GMT  
		Size: 223.7 MB (223693060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a03e3a6efbd3febb03abd6e4a77f3598a645e0ddc1bccc59c5521de060a36`  
		Last Modified: Sat, 08 Jun 2019 00:51:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72b57ea2fd9d7f4983cdfb64fe17793eca2ef03cadd9a9cbaa0a434c0a39d0d`  
		Last Modified: Sat, 08 Jun 2019 00:53:01 GMT  
		Size: 102.9 MB (102947770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121c4fcf09471c9a6900dd1c9ea0b6dd9973966b94bda3f928b78812c8d9734c`  
		Last Modified: Sat, 08 Jun 2019 00:53:32 GMT  
		Size: 52.6 MB (52603816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:51d1223ec0a14a2e128d06bae141422b4267b10260fb043d065f1c7fb80ef578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:0a1eccd6e9d5d9ed530bc8d1741fbeef2f7bba90695d41771eb7d49caebd1d9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.0 MB (425967522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f93effde23a6a1178666aefecab382fbff82dae210a9515887de5df5842fca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:3823b1f3a2f526eb076e92f696bfa4be54078dc1ac12d6e83954f9576738c74b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.4 MB (378358141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b89af9a5ccc36a94b02c431ff649bde0cbe28e84895c8314950e2692e137976`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c9572af11157453cae6bcc7bc7cc7b2507de86977f5c1ea1cdfc9b8d0562c42c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357169592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596eb0fa3074412dd8cdd1304f1c2e9bed962e9d5badb6f2f1b6c342dc302384`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:51d1223ec0a14a2e128d06bae141422b4267b10260fb043d065f1c7fb80ef578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:0a1eccd6e9d5d9ed530bc8d1741fbeef2f7bba90695d41771eb7d49caebd1d9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.0 MB (425967522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66f93effde23a6a1178666aefecab382fbff82dae210a9515887de5df5842fca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
# Fri, 07 Jun 2019 23:53:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e966a5aea4829b95d7a5ec19bad60134db80ddab1fcbc007219a36d0f84bef`  
		Last Modified: Sat, 08 Jun 2019 00:19:17 GMT  
		Size: 70.6 MB (70636024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:3823b1f3a2f526eb076e92f696bfa4be54078dc1ac12d6e83954f9576738c74b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.4 MB (378358141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b89af9a5ccc36a94b02c431ff649bde0cbe28e84895c8314950e2692e137976`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:35:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7eb9119df8ef9d96edca1ba4084f2620a2b0c56520e6d995ebff17696f56701`  
		Last Modified: Sat, 08 Jun 2019 00:53:41 GMT  
		Size: 62.1 MB (62103083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c9572af11157453cae6bcc7bc7cc7b2507de86977f5c1ea1cdfc9b8d0562c42c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357169592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596eb0fa3074412dd8cdd1304f1c2e9bed962e9d5badb6f2f1b6c342dc302384`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:18:03 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27edaf4eb357a30d430ca9c1a40d11f8a71cc96174d228b7c3ec8828d5978afd`  
		Last Modified: Sat, 08 Jun 2019 00:48:23 GMT  
		Size: 65.6 MB (65584252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:1ebf3fac41972d29bca107389d6d514e5140597044e13169904e574b843d5649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:ec6f083cc5b57a19272b832a6800e67d5f71980db54862e402132dca49e3bbd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498401447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f33875efe159084fc40ac1cc95ef2c7d5883125afa0b78146c619d13b348306`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:46:54 GMT
ENV ROS_DISTRO=melodic
# Tue, 11 Jun 2019 07:49:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:49:22 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:49:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:49:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 07:50:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ff836545d8853a45a32d375c553789a361cc25335d45ee22458105615b1d9f`  
		Last Modified: Tue, 11 Jun 2019 08:03:31 GMT  
		Size: 269.5 MB (269499941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7411aff7023a6878a021482bcbdc0b13cd679418f5f63ca1e4b61300b858b53f`  
		Last Modified: Tue, 11 Jun 2019 08:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b279971e48b327df375a49c274a730f187a0e773a0152a6e020ebb4143518254`  
		Last Modified: Tue, 11 Jun 2019 08:04:12 GMT  
		Size: 108.5 MB (108461292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a7f0aee6295e7760f54b148ff63f9fbb8d51fe54fea09ccf8a4164d8f27c2c6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441483108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23231b01bdb965ccaef2296746de9c6a34e809aeb51ce89e6b050bd983608df`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:24:43 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:26:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:26:40 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:26:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:26:41 GMT
CMD ["bash"]
# Sat, 08 Jun 2019 00:27:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0020bfa8e8d576f4049eff90d61eb6c9beca5d5d8696ae9034977fabcf6524`  
		Last Modified: Sat, 08 Jun 2019 00:52:25 GMT  
		Size: 223.7 MB (223693060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a03e3a6efbd3febb03abd6e4a77f3598a645e0ddc1bccc59c5521de060a36`  
		Last Modified: Sat, 08 Jun 2019 00:51:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72b57ea2fd9d7f4983cdfb64fe17793eca2ef03cadd9a9cbaa0a434c0a39d0d`  
		Last Modified: Sat, 08 Jun 2019 00:53:01 GMT  
		Size: 102.9 MB (102947770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:2839ba2c9e42820159f82996a3d4a3ce6af2e475472485ba5b49d4cb0b1cdbc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:6abcdce731b85283456524a0a92ea3c91cd5f36e73cad7d9f7dd2a703b442ffa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.3 MB (355331498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8947bc748cedab419a515c7f1a58bb9711a432b20659b333a4b6afb7177a2fd1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:983802ccd2edacbf8265d073fdb0407bdf022f327efbf65aac1aa31d5e963d4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316255058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7bf193ca361206892ce162b22b4c802cffc87f92b07dd96fa6b6468aa9be3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c3e45ab5736c393c1b48b7136e8edf06f780f4dbb5a40c3ba389c6c36ba7f75a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291585340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e48d2b4afb7e2fb2140aad4e471785b6909cc49412d4295b6de927ffb7e5511`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:2839ba2c9e42820159f82996a3d4a3ce6af2e475472485ba5b49d4cb0b1cdbc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:6abcdce731b85283456524a0a92ea3c91cd5f36e73cad7d9f7dd2a703b442ffa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.3 MB (355331498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8947bc748cedab419a515c7f1a58bb9711a432b20659b333a4b6afb7177a2fd1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:54:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:54:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:48:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Fri, 07 Jun 2019 23:48:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 07 Jun 2019 23:49:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:49:21 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jun 2019 23:49:22 GMT
ENV LC_ALL=C.UTF-8
# Fri, 07 Jun 2019 23:49:31 GMT
RUN rosdep init     && rosdep update
# Fri, 07 Jun 2019 23:49:31 GMT
ENV ROS_DISTRO=melodic
# Fri, 07 Jun 2019 23:52:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 07 Jun 2019 23:52:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 07 Jun 2019 23:52:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 07 Jun 2019 23:52:09 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ea25188bb2da81ecdde129c333a396bf48f8caf8e85bb6be208850fee5c4d`  
		Last Modified: Wed, 15 May 2019 22:08:29 GMT  
		Size: 836.6 KB (836561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae984487af8bddc902fd21946f600720932c52b0c52d3bfd1e7378b94e0e3e4f`  
		Last Modified: Wed, 15 May 2019 22:08:33 GMT  
		Size: 14.9 MB (14912958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e993e5c338a9c012a58c2adeaa0aa0bf54fd9358064d6b5b6752242878fd4279`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5420ad81ad499c49331437c80fd8320abb0af9ec20a3aa30aab78b9bc34831ce`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 5.4 KB (5424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c92edf9aeee7b812c3356af97005e0aaa634fadef3e0fb54f3ed28e6dac6f1`  
		Last Modified: Sat, 08 Jun 2019 00:18:15 GMT  
		Size: 49.4 MB (49414358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b4aea44fe30c54546e3c9188de0e3d29c1688b24e819a1327c0b3e1e4a671a`  
		Last Modified: Sat, 08 Jun 2019 00:18:03 GMT  
		Size: 452.6 KB (452605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54e9838c75084f67b6c1643f64cfc313fa97f11f9d088d5656170e94269395b`  
		Last Modified: Sat, 08 Jun 2019 00:18:54 GMT  
		Size: 260.9 MB (260851901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07f33df6cec9c4bca8a758dd4ee167a0b4bb28d86f01fd469057b5f9243cc41`  
		Last Modified: Sat, 08 Jun 2019 00:18:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:983802ccd2edacbf8265d073fdb0407bdf022f327efbf65aac1aa31d5e963d4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316255058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b7bf193ca361206892ce162b22b4c802cffc87f92b07dd96fa6b6468aa9be3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 21:58:24 GMT
ADD file:816ebaa0df5396bcd14111f4c10b3aa1d9644e0fc8cbb961ba8755c1e54d768e in / 
# Wed, 15 May 2019 21:58:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:58:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:58:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:58:32 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:59:05 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:33 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:29:07 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:29:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:30:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:30:11 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:30:12 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:30:29 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:30:29 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:33:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:33:53 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:33:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:33:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:642790bfe707b4b246624090d72784c59aa5f0d16abf95f4f7b3de91b02225b9`  
		Last Modified: Wed, 15 May 2019 22:01:58 GMT  
		Size: 24.4 MB (24445379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7f0a2a454e1b31011791e8b8149efe28d6982ce345a35b250df991e3f1a1ba`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040caec04e297f82c430a724a6bcb3f6971f28885f156a41340c3a56ca43e045`  
		Last Modified: Wed, 15 May 2019 22:01:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0420b6c4d40bf95ae298d323c3add85fca9ffa95936644467c48f42f51cfb7`  
		Last Modified: Wed, 15 May 2019 23:20:02 GMT  
		Size: 837.1 KB (837054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e96407d3b414ea88538009f1c115438f44f7a597f8263c40af5394fdf0b1ea1c`  
		Last Modified: Wed, 15 May 2019 23:20:06 GMT  
		Size: 13.2 MB (13240764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec97b9e0b533e0818c7c4e58302ef32b67be8efe685cb8ae1295d20eb10fff1`  
		Last Modified: Sat, 08 Jun 2019 00:52:09 GMT  
		Size: 1.4 KB (1419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37979be5a8ac07fe1f910e1074bb401332b1eb501c5daecab903f5f5834d8355`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 5.5 KB (5457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616fdc60540ea2979397fa99c0eef33d4b5e68b80a294976e2b889d1d15784b1`  
		Last Modified: Sat, 08 Jun 2019 00:52:24 GMT  
		Size: 45.0 MB (45022495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b43654c082dd1a6fb35bc87fa903788c031eaa11e34e37671782ee3ac25643`  
		Last Modified: Sat, 08 Jun 2019 00:52:08 GMT  
		Size: 452.7 KB (452663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241f26501fb5cba71940c92725eee0a4cdf08e55e1de8cf767cea0b3b8351c81`  
		Last Modified: Sat, 08 Jun 2019 00:53:14 GMT  
		Size: 232.2 MB (232248597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6272d06a76f64e6d69875c0b775f810da0a24c501297085b4da05a2883bfaa77`  
		Last Modified: Sat, 08 Jun 2019 00:52:07 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c3e45ab5736c393c1b48b7136e8edf06f780f4dbb5a40c3ba389c6c36ba7f75a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291585340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e48d2b4afb7e2fb2140aad4e471785b6909cc49412d4295b6de927ffb7e5511`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 15 May 2019 22:00:29 GMT
ADD file:be43c564f2555ee67b2e74ab41831e30f31a867bc87afca48235e973f48e77ba in / 
# Wed, 15 May 2019 22:00:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:00:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:00:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:00:37 GMT
CMD ["/bin/bash"]
# Tue, 28 May 2019 23:18:06 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:18:32 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:12:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:12:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:13:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:13:24 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:13:41 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:13:42 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:16:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:16:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:16:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:16:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:745b76626a20cd9fe8e08356e6bd884a841fb81bd9d3615d5d99d49dba18d15e`  
		Last Modified: Wed, 15 May 2019 22:02:50 GMT  
		Size: 25.9 MB (25874805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce7a8922cb83732658813ef1b15c23f1971b2a24e575af1778e34bec6305d6b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565a1332f5cd2542f5d8f0aeda009d3b94c2b1a9651603872992756741dc210b`  
		Last Modified: Wed, 15 May 2019 22:02:40 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8052383c51af3e9ecc88fd2d3e786d047313f4a7a2a75a6e0dbbd7c44b8656e7`  
		Last Modified: Tue, 28 May 2019 23:57:23 GMT  
		Size: 836.8 KB (836849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5ea84dab96d597e4d16f8466c96544485344e3792a29bc19067442ae1ebb0b`  
		Last Modified: Tue, 28 May 2019 23:57:27 GMT  
		Size: 13.8 MB (13844503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ebfe96204c326b4a896757d6349369e4d2c73cc6653658f6edea006a48db79`  
		Last Modified: Sat, 08 Jun 2019 00:46:43 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bff6ffaf9f54e34968f5b271b96ad9dd9e833803292e28bdae22b92ee0a39f2f`  
		Last Modified: Sat, 08 Jun 2019 00:46:41 GMT  
		Size: 5.5 KB (5455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7515ec2303cc958904d2956175b30511aa49886ee3c498dfeb6721927687aad8`  
		Last Modified: Sat, 08 Jun 2019 00:46:59 GMT  
		Size: 47.6 MB (47625479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f327dcfd01959eeed66d46418271e7eaaffc583db84ba2e0f3d2d2b744d422b`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 452.7 KB (452725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b16528b28638073a93284ed9eeaa0ab2ffd4ce5cddf37ae4866ec4290b6b2a2`  
		Last Modified: Sat, 08 Jun 2019 00:47:51 GMT  
		Size: 202.9 MB (202942874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561be150b8db87d866f559780ae5d77a02d9fd8705792bc47dc18f101b0b5801`  
		Last Modified: Sat, 08 Jun 2019 00:46:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:01f454db77e2f6fab210b17bb34263f4485b87a00e72e452ef8d513d8a42716f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9600a0359a296dfb38160e91dc41a72627ed209209c88380dc971a120933d2dc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.9 MB (389940155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bfe71ccf9b749fc16cdf660afd809cf55024088060af6e1aa2e81e152ed2ae5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:34:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 11 Jun 2019 07:34:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 11 Jun 2019 07:35:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:35:44 GMT
ENV LC_ALL=C.UTF-8
# Tue, 11 Jun 2019 07:36:02 GMT
RUN rosdep init     && rosdep update
# Tue, 11 Jun 2019 07:46:54 GMT
ENV ROS_DISTRO=melodic
# Tue, 11 Jun 2019 07:49:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:49:22 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 11 Jun 2019 07:49:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 11 Jun 2019 07:49:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df675b1ebb834402f7a83f1dc173534327f311851beb4eba463b393de8a36b36`  
		Last Modified: Mon, 10 Jun 2019 23:49:28 GMT  
		Size: 21.1 MB (21091054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625b39fd50f51db605f6f97ecf72c1d1d774051b48b1b53c856951cffa2738dd`  
		Last Modified: Tue, 11 Jun 2019 07:56:47 GMT  
		Size: 1.4 KB (1399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9c225d768aac5406d30cd80c1c60ad8acb99c744dd05f3e38a4f51b6999955`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 5.0 KB (4976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb63bef9b434389e9c8b0b452623fd347f021229ee12624e77fa00c0797c0a7`  
		Last Modified: Tue, 11 Jun 2019 07:57:08 GMT  
		Size: 53.5 MB (53549403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2af7f00e31bdee6e764752cd4461e6096e83b78a4cda5724c567355b0a0da4`  
		Last Modified: Tue, 11 Jun 2019 07:56:46 GMT  
		Size: 453.8 KB (453837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8ff836545d8853a45a32d375c553789a361cc25335d45ee22458105615b1d9f`  
		Last Modified: Tue, 11 Jun 2019 08:03:31 GMT  
		Size: 269.5 MB (269499941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7411aff7023a6878a021482bcbdc0b13cd679418f5f63ca1e4b61300b858b53f`  
		Last Modified: Tue, 11 Jun 2019 08:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5f4b87bc4c7eaab64509c5982a092a95f69b8bc897b2ea708483b4beac0d4ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338535338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a66cc138b3d44e6c2aef911f7ee9b3c4aa874c0b4bcd0b39e785b92474f507aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:00:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Sat, 08 Jun 2019 00:00:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 08 Jun 2019 00:01:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:01:19 GMT
ENV LANG=C.UTF-8
# Sat, 08 Jun 2019 00:01:20 GMT
ENV LC_ALL=C.UTF-8
# Sat, 08 Jun 2019 00:01:45 GMT
RUN rosdep init     && rosdep update
# Sat, 08 Jun 2019 00:24:43 GMT
ENV ROS_DISTRO=melodic
# Sat, 08 Jun 2019 00:26:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 08 Jun 2019 00:26:40 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Sat, 08 Jun 2019 00:26:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 08 Jun 2019 00:26:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74936204b55f2fd2f6ee46ff63cf304606bb277c472cdb00515970ada200549`  
		Last Modified: Tue, 28 May 2019 23:53:07 GMT  
		Size: 19.7 MB (19745769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdfafa85cbb0200cb2a9543b2cd3643aa1a46fdb6d57a89415a40fb749478ab`  
		Last Modified: Sat, 08 Jun 2019 00:42:18 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b22db6d80f262326d5ac51a591bdc7b88f94a6d9ac09f82175e2ae8d4d1bf7c`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 5.0 KB (5013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16753181aa66a7a5805ea6f91bb57b855eab21bc93a9646161cc92950f45acea`  
		Last Modified: Sat, 08 Jun 2019 00:42:36 GMT  
		Size: 51.5 MB (51495220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03d88b18c736bbdd51f1cb5038337ff918fcbae67ce631cb1c21eda94438c3`  
		Last Modified: Sat, 08 Jun 2019 00:42:17 GMT  
		Size: 452.7 KB (452729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0020bfa8e8d576f4049eff90d61eb6c9beca5d5d8696ae9034977fabcf6524`  
		Last Modified: Sat, 08 Jun 2019 00:52:25 GMT  
		Size: 223.7 MB (223693060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7a03e3a6efbd3febb03abd6e4a77f3598a645e0ddc1bccc59c5521de060a36`  
		Last Modified: Sat, 08 Jun 2019 00:51:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
