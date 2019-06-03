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
$ docker pull ros@sha256:ed897ffec4b7f2b6f4af4f725938d25e940d1857fbfb38d78b937b4d5c1c6f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:dc7b0e35891302c373ea468eca173b4ade16ced658d7c878333d91b46a07511c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313677654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a804cd15c3d9d9c49b0b53219e9ecbc7a1df60a55735b4c1bbe234257f840d4c`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:9a62469e50bcd89869ca309dd8d1eb22da5d25a111b54227791f0d693c195af7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284692835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6673d84e7144dc799c5bf81b3d0d8123bfca15565c09e1a2a2060ed1902892c5`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:30dc3e1d9a64aa1728afdf978f7e00970026e8e62d2f5d4886c78e8825a79587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:26e6524d363e0322b2b5d641718d6cff08e48ef7687eed55d5857a94cb2ed554
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.9 MB (549936242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6044ef79e6761a6318055af6af28c0637796005e006c53e99c8cb6ea58b8b566`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:40:12 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404cb4a997a89e4b4000046fe678f451fcc7b42514d080ad2431841200a7c6b`  
		Last Modified: Wed, 15 May 2019 23:23:38 GMT  
		Size: 236.3 MB (236258588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:ad20fcc8bc6b5ac5f8384ee4208047281eb1d0d556df15b958a30b8fcc86a651
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496529073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21298f451e6b0c40678170e75baeb3f5201dbef7d97bb29a0333847eb0a2ee69`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:30:43 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68a88c52d4f875ba812bb53cf169d93d741ba561e763399bc09f730933ae2c`  
		Last Modified: Wed, 15 May 2019 23:12:04 GMT  
		Size: 211.8 MB (211836238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:30dc3e1d9a64aa1728afdf978f7e00970026e8e62d2f5d4886c78e8825a79587
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:26e6524d363e0322b2b5d641718d6cff08e48ef7687eed55d5857a94cb2ed554
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.9 MB (549936242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6044ef79e6761a6318055af6af28c0637796005e006c53e99c8cb6ea58b8b566`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:40:12 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f404cb4a997a89e4b4000046fe678f451fcc7b42514d080ad2431841200a7c6b`  
		Last Modified: Wed, 15 May 2019 23:23:38 GMT  
		Size: 236.3 MB (236258588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:ad20fcc8bc6b5ac5f8384ee4208047281eb1d0d556df15b958a30b8fcc86a651
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.5 MB (496529073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21298f451e6b0c40678170e75baeb3f5201dbef7d97bb29a0333847eb0a2ee69`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:30:43 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68a88c52d4f875ba812bb53cf169d93d741ba561e763399bc09f730933ae2c`  
		Last Modified: Wed, 15 May 2019 23:12:04 GMT  
		Size: 211.8 MB (211836238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:75192a9c0bb1bcb82cd454ab3245dce294d0c5b4844332994546d24cf14a18c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:9fcf8b9582ec03babb9c2b0481bb449a5e4c88651127f83b1f1917e6e6d2b35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332709684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1eb1e7e6c83040b23ecc657c37a67c2dc6bd8677ccbb4508b590cff62e53fb`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:36:05 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c97076b07cb04cbe22a6db0b0c538970503ed2f10993bc14aeaf798689f719e`  
		Last Modified: Wed, 15 May 2019 23:22:17 GMT  
		Size: 19.0 MB (19032030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:477113ab9c0c7a74ab0aecc37a25a61268dc573c9424d945eb788bc4303288b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302381246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21abcdc938b8318a758c4bb94b26450d2310f19873762db91f65768143888cd`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:37 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012a4f1095b3d3fede561d8d1bedf8a8f406de4392fbb0fcf29fb7fcc9908fb6`  
		Last Modified: Wed, 15 May 2019 23:10:51 GMT  
		Size: 17.7 MB (17688411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:75192a9c0bb1bcb82cd454ab3245dce294d0c5b4844332994546d24cf14a18c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:9fcf8b9582ec03babb9c2b0481bb449a5e4c88651127f83b1f1917e6e6d2b35a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.7 MB (332709684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1eb1e7e6c83040b23ecc657c37a67c2dc6bd8677ccbb4508b590cff62e53fb`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:36:05 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c97076b07cb04cbe22a6db0b0c538970503ed2f10993bc14aeaf798689f719e`  
		Last Modified: Wed, 15 May 2019 23:22:17 GMT  
		Size: 19.0 MB (19032030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:477113ab9c0c7a74ab0aecc37a25a61268dc573c9424d945eb788bc4303288b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.4 MB (302381246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21abcdc938b8318a758c4bb94b26450d2310f19873762db91f65768143888cd`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:26:37 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012a4f1095b3d3fede561d8d1bedf8a8f406de4392fbb0fcf29fb7fcc9908fb6`  
		Last Modified: Wed, 15 May 2019 23:10:51 GMT  
		Size: 17.7 MB (17688411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:ed897ffec4b7f2b6f4af4f725938d25e940d1857fbfb38d78b937b4d5c1c6f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:dc7b0e35891302c373ea468eca173b4ade16ced658d7c878333d91b46a07511c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313677654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a804cd15c3d9d9c49b0b53219e9ecbc7a1df60a55735b4c1bbe234257f840d4c`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:9a62469e50bcd89869ca309dd8d1eb22da5d25a111b54227791f0d693c195af7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284692835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6673d84e7144dc799c5bf81b3d0d8123bfca15565c09e1a2a2060ed1902892c5`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:ed897ffec4b7f2b6f4af4f725938d25e940d1857fbfb38d78b937b4d5c1c6f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:dc7b0e35891302c373ea468eca173b4ade16ced658d7c878333d91b46a07511c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.7 MB (313677654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a804cd15c3d9d9c49b0b53219e9ecbc7a1df60a55735b4c1bbe234257f840d4c`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:35:11 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ce81d19dc804688c7e6843ce668cfde37c8ac1eb2930590f88a4a00cad336`  
		Last Modified: Wed, 15 May 2019 23:22:04 GMT  
		Size: 46.8 MB (46777181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:9a62469e50bcd89869ca309dd8d1eb22da5d25a111b54227791f0d693c195af7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284692835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6673d84e7144dc799c5bf81b3d0d8123bfca15565c09e1a2a2060ed1902892c5`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:25:39 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc604354de7fd593ec0c6e1ac24216a04ed76423db2a20e343f6f873369f33b`  
		Last Modified: Wed, 15 May 2019 23:10:35 GMT  
		Size: 40.4 MB (40389477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:7b97b41c4b6ae5e6bf88c353683c8be41b2ca0c6ed463eae453d1019456cc517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:df3fee05c67d49785f8ff8f5b2ac6f444e86a5949905b268475e98bf99d49bee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ac100b56f3fbf3ca4001deb4c9d47cc8b2f96576c56850b4acf07fa0e54124`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:8aacb0d50846a198d767e97a2e1e9420a93fa22b267c7371e9e813e6ac128bb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244303358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f4fbb86d583ca5d74489eb16fc41490b1f60429b3b0c6c13c65cffe049fc326`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:7b97b41c4b6ae5e6bf88c353683c8be41b2ca0c6ed463eae453d1019456cc517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:df3fee05c67d49785f8ff8f5b2ac6f444e86a5949905b268475e98bf99d49bee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.9 MB (266900473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ac100b56f3fbf3ca4001deb4c9d47cc8b2f96576c56850b4acf07fa0e54124`
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
# Wed, 15 May 2019 22:29:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:30:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:31:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:02 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:31:03 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:31:23 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:31:23 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:33:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:33:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:33:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:33:58 GMT
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
	-	`sha256:093714e2e2ec8d829d43696b887599c3da8b446d6c8c85d9fb50c65522863303`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e4b133e0a475892d1e3976cb65ee96d56f6d63f992fcd649efc12ffbc5fd0d`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 260.4 KB (260381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24b47ebb253d93c6b91c95c1c52e83356c77ca5291f655a9a0f1e874a3d9e04`  
		Last Modified: Wed, 15 May 2019 23:20:55 GMT  
		Size: 31.0 MB (30955707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71cd74d34dd32b3d6890eb1d6989a87c588076ce7dce973acb81ac01f09c1dfe`  
		Last Modified: Wed, 15 May 2019 23:20:39 GMT  
		Size: 661.8 KB (661822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd40a2a0606e82c01905508b67411dac83090e54981a5fa98fbf3a0dd044f4c`  
		Last Modified: Wed, 15 May 2019 23:21:39 GMT  
		Size: 149.7 MB (149703861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee69063cdf542d69c5ffe21cb0f034a7674d17e45a121d818ecb2cd2ee3a713`  
		Last Modified: Wed, 15 May 2019 23:20:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:8aacb0d50846a198d767e97a2e1e9420a93fa22b267c7371e9e813e6ac128bb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.3 MB (244303358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f4fbb86d583ca5d74489eb16fc41490b1f60429b3b0c6c13c65cffe049fc326`
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
# Wed, 15 May 2019 22:20:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:20:20 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:21:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:21:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:21:47 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:21:47 GMT
ENV ROS_DISTRO=indigo
# Wed, 15 May 2019 22:24:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:24 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:24:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:24:25 GMT
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
	-	`sha256:5ddf8bea55232d36b1197974ab65bcab0dd94f25ed2eedb9d6ae0ba701dbcfbd`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f1d4e6759ca6e7e6c6ed26fe8ea7a34a5801a207418a8edb679f8b174da480`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 260.3 KB (260339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f95211a813ae1ecd462b1aa5aaf74e15597453dc2566ef49995b2298d54d23`  
		Last Modified: Wed, 15 May 2019 23:09:39 GMT  
		Size: 28.4 MB (28423614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9237a8bc02eb5ca0b4d7310295cb63dc0529aa13531001bbafe4731056493d41`  
		Last Modified: Wed, 15 May 2019 23:09:29 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7cf23e5ce6216423865b5d8cae65a00420807b43723af2d7b03e74d5533fc6`  
		Last Modified: Wed, 15 May 2019 23:10:16 GMT  
		Size: 137.3 MB (137336245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e5a099b8d6d9ad396051c102378c7df744bcbbb281f851880217672361ce922`  
		Last Modified: Wed, 15 May 2019 23:09:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:d5619b9dd5dabec72431e25c81dd1d7952acd4cc1da0aaa7977c0c201172547a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:9beaf597d1c55370a387c7ab786188ddea68759b57a268369df1fcf4433a48dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384923194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be02f9af93edd2958620ce609dd2376daa7eb0b92c898e044dda0f54cb4aff4c`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:2fece891b02cf8950533d4809c5c993ed7723a027a087220f6e9f03e71430b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336320618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c595d92730361fe7a1dd8f3408ed8e45fde3a3ad53d2a72e5563a0d481e1264`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e5373b8cba8e8ca09e3472a264ed1856ca0e25988b6e9cb221c138036d22b604
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349981231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c0bb40d68b3ed805a12abe1447ef8e8515c6db224163c26643bd21e560bf05`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:328db2f0126727bc9f8b4883dcb99e834eb6596bfea0e3501a1a5a6fe3c60bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:baef64fd93da9b6361163167051ad3e8d64b3955bdbb278776d58128cf08b6c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.6 MB (725612627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d1a6130e5d83d1c45c28722e24f6432fafef71ac6884df4514e50b390519cc`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:50:54 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db430e695226b1bb460e4f9a543e925a2e6104780fcbe4f94f93f92564c7c5`  
		Last Modified: Wed, 15 May 2019 23:28:06 GMT  
		Size: 340.7 MB (340689433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:88a183ea40e0d0ade3f77173a3bb05ed271640a83080181ae2e474f460fc6586
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (617034117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea43b9f2c6636e3b630089bdadec7cb4adbd1da695afaccf364bfac0562e72e`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:14 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ecf6dc8f281014392fcad55ae634e9ce1b0078150fd1e1b750b1fc77dae993`  
		Last Modified: Wed, 15 May 2019 23:16:00 GMT  
		Size: 280.7 MB (280713499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:22cc89288b64b034399726b75abc50ab44c12cd4050a2012e4584d80fa3de948
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 MB (641201631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362adc937a7de7a3af577729b4432a37003e207fbd6fb93c5cf44ad4f417df69`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:57:14 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859e5115b4b1beaef7efc49aed09c5423cc95336fe866cb4c0ec18a08f44193c`  
		Last Modified: Tue, 28 May 2019 23:48:56 GMT  
		Size: 291.2 MB (291220400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:328db2f0126727bc9f8b4883dcb99e834eb6596bfea0e3501a1a5a6fe3c60bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:baef64fd93da9b6361163167051ad3e8d64b3955bdbb278776d58128cf08b6c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.6 MB (725612627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2d1a6130e5d83d1c45c28722e24f6432fafef71ac6884df4514e50b390519cc`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:50:54 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db430e695226b1bb460e4f9a543e925a2e6104780fcbe4f94f93f92564c7c5`  
		Last Modified: Wed, 15 May 2019 23:28:06 GMT  
		Size: 340.7 MB (340689433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:88a183ea40e0d0ade3f77173a3bb05ed271640a83080181ae2e474f460fc6586
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (617034117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea43b9f2c6636e3b630089bdadec7cb4adbd1da695afaccf364bfac0562e72e`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:14 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ecf6dc8f281014392fcad55ae634e9ce1b0078150fd1e1b750b1fc77dae993`  
		Last Modified: Wed, 15 May 2019 23:16:00 GMT  
		Size: 280.7 MB (280713499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:22cc89288b64b034399726b75abc50ab44c12cd4050a2012e4584d80fa3de948
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 MB (641201631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:362adc937a7de7a3af577729b4432a37003e207fbd6fb93c5cf44ad4f417df69`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:57:14 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859e5115b4b1beaef7efc49aed09c5423cc95336fe866cb4c0ec18a08f44193c`  
		Last Modified: Tue, 28 May 2019 23:48:56 GMT  
		Size: 291.2 MB (291220400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:75471e91b2b2d91b60c0c4320b0f672ba4da0b8c177fb4bb54d1ae2e79865144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:f817e05b0315beebd9f1eaf3dda9341619d3c2d96fefcb7731150d2916b8c3b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.6 MB (488555931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e354ec16efa6210f57b6a18af7ceacb2a752d3ed571e342e1bd375220175fc`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:15 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35def53075454b3661ae97ded534028519afe9d386018b19df71823841aa8fa`  
		Last Modified: Wed, 15 May 2019 23:26:21 GMT  
		Size: 103.6 MB (103632737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:f5ab0fa88a1c1461b0a77c1244e9c8783a3e54ca91c44a14796a6efaec087feb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426342420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22ef32853140edba0d137e9aa32e881eb05c8d548fc8053c7b55815689dd021`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:39:33 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a1c8a6bbb73eccb73d4823f4be098ef446f5345e1115ea3c90d6c81e471ea`  
		Last Modified: Wed, 15 May 2019 23:14:17 GMT  
		Size: 90.0 MB (90021802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5a6cf1c437c477031570dd9b9218525985ec1a16581fa76c4d3874dae4f68be0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443882397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9887a48072768fe0a86e7292e3c91a9fd6a3eb0c8a9b4f640945423279b5467`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:53:24 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b2fe195ea2ddb3866660cb7aa3771ae41bae98d02ffb7798f920c851fcbbb0`  
		Last Modified: Tue, 28 May 2019 23:46:49 GMT  
		Size: 93.9 MB (93901166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:75471e91b2b2d91b60c0c4320b0f672ba4da0b8c177fb4bb54d1ae2e79865144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f817e05b0315beebd9f1eaf3dda9341619d3c2d96fefcb7731150d2916b8c3b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.6 MB (488555931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e354ec16efa6210f57b6a18af7ceacb2a752d3ed571e342e1bd375220175fc`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:15 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35def53075454b3661ae97ded534028519afe9d386018b19df71823841aa8fa`  
		Last Modified: Wed, 15 May 2019 23:26:21 GMT  
		Size: 103.6 MB (103632737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f5ab0fa88a1c1461b0a77c1244e9c8783a3e54ca91c44a14796a6efaec087feb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.3 MB (426342420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22ef32853140edba0d137e9aa32e881eb05c8d548fc8053c7b55815689dd021`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:39:33 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560a1c8a6bbb73eccb73d4823f4be098ef446f5345e1115ea3c90d6c81e471ea`  
		Last Modified: Wed, 15 May 2019 23:14:17 GMT  
		Size: 90.0 MB (90021802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5a6cf1c437c477031570dd9b9218525985ec1a16581fa76c4d3874dae4f68be0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443882397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9887a48072768fe0a86e7292e3c91a9fd6a3eb0c8a9b4f640945423279b5467`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:53:24 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b2fe195ea2ddb3866660cb7aa3771ae41bae98d02ffb7798f920c851fcbbb0`  
		Last Modified: Tue, 28 May 2019 23:46:49 GMT  
		Size: 93.9 MB (93901166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:d5619b9dd5dabec72431e25c81dd1d7952acd4cc1da0aaa7977c0c201172547a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:9beaf597d1c55370a387c7ab786188ddea68759b57a268369df1fcf4433a48dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384923194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be02f9af93edd2958620ce609dd2376daa7eb0b92c898e044dda0f54cb4aff4c`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:2fece891b02cf8950533d4809c5c993ed7723a027a087220f6e9f03e71430b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336320618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c595d92730361fe7a1dd8f3408ed8e45fde3a3ad53d2a72e5563a0d481e1264`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e5373b8cba8e8ca09e3472a264ed1856ca0e25988b6e9cb221c138036d22b604
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349981231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c0bb40d68b3ed805a12abe1447ef8e8515c6db224163c26643bd21e560bf05`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:d5619b9dd5dabec72431e25c81dd1d7952acd4cc1da0aaa7977c0c201172547a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:9beaf597d1c55370a387c7ab786188ddea68759b57a268369df1fcf4433a48dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384923194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be02f9af93edd2958620ce609dd2376daa7eb0b92c898e044dda0f54cb4aff4c`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:45:27 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c772c72e00d588e0451c035da8faafe56ea9702a4af16e5424a42675ad4990a1`  
		Last Modified: Wed, 15 May 2019 23:25:37 GMT  
		Size: 85.7 MB (85690900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:2fece891b02cf8950533d4809c5c993ed7723a027a087220f6e9f03e71430b23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336320618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c595d92730361fe7a1dd8f3408ed8e45fde3a3ad53d2a72e5563a0d481e1264`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:37:39 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c647b3fb8c3a2b3c9794758bc98a884a2b4e71ce5d7c3fb18d91d6dc2438b63`  
		Last Modified: Wed, 15 May 2019 23:13:37 GMT  
		Size: 76.5 MB (76466848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e5373b8cba8e8ca09e3472a264ed1856ca0e25988b6e9cb221c138036d22b604
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349981231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c0bb40d68b3ed805a12abe1447ef8e8515c6db224163c26643bd21e560bf05`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
CMD ["bash"]
# Tue, 28 May 2019 22:51:52 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efdccf096c63bb831bdce8385336fe6c8c733dd58e51f8b52c10a47da47eb65`  
		Last Modified: Tue, 28 May 2019 23:45:59 GMT  
		Size: 78.0 MB (77980498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:e3744cab4b51bcb6d526bd02ea6e33c9f6d429b925dd9622f8cb3c6da4fcfd66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:999171d4468d2720c2e42ae92917aed74a561ecb173a92a0ad7603b103dabd1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299232294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548e77028b16b3c1947fedd4940631f069f9ddbda282fb3708ad0d31633d8d40`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:38f7e9d8e864b47f4c89f23f44e9beaec6ee1a46d90f67e935b1074c8d6d7a85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259853770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2548917b2d4c3cbf6449d119e2549bd680b27b0fa728998a26911eded85095b8`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9433326e8f9f2fa6d4d47a22709d99ba968f27ee8cc9a3aab78b14617f4d4361
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272000733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921951699faf56c5881e51a4660b9fb97b6c93e0c43fcfdddd0d52a370701dcc`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:e3744cab4b51bcb6d526bd02ea6e33c9f6d429b925dd9622f8cb3c6da4fcfd66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:999171d4468d2720c2e42ae92917aed74a561ecb173a92a0ad7603b103dabd1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299232294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548e77028b16b3c1947fedd4940631f069f9ddbda282fb3708ad0d31633d8d40`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:41:52 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:44:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:44:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:44:03 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac680ca4eb0c297e9b4a3cea29c912d95ecf99eaedebcd7cec232424a2c364a`  
		Last Modified: Wed, 15 May 2019 23:24:57 GMT  
		Size: 193.2 MB (193236497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98825e65376c4a45be1aad61b613971c7c3b34cfb1d1a7f4210f91ebc2aefd02`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:38f7e9d8e864b47f4c89f23f44e9beaec6ee1a46d90f67e935b1074c8d6d7a85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259853770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2548917b2d4c3cbf6449d119e2549bd680b27b0fa728998a26911eded85095b8`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:33:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 15 May 2019 22:35:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:35:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:35:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:35:45 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ebd3da8dcfa3d954d91db3bc9dc3d881e8c564e1be526f78e7e88f55f0a3260`  
		Last Modified: Wed, 15 May 2019 23:13:06 GMT  
		Size: 164.6 MB (164616569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b840eadc63cc0a2f7d9f8c7e1d8d56925d7d8bbf918e6e5e9315a9c3d4983525`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9433326e8f9f2fa6d4d47a22709d99ba968f27ee8cc9a3aab78b14617f4d4361
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272000733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921951699faf56c5881e51a4660b9fb97b6c93e0c43fcfdddd0d52a370701dcc`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:48:04 GMT
ENV ROS_DISTRO=kinetic
# Tue, 28 May 2019 22:50:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:50:16 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:50:17 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:50:17 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b073c0e323d5ac578ab9abcc68c4da58077f1152c8ede93d13f02d6b142812d5`  
		Last Modified: Tue, 28 May 2019 23:45:24 GMT  
		Size: 173.9 MB (173911600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eeaf7981a373ab6a6079e30ed1c81cf2ee22fe2b988f393fe63acad3d815d3`  
		Last Modified: Tue, 28 May 2019 23:44:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:4af65dc9d814abc183c927529a9d0dc0d597f8c6bec4bc02051f27b48a92037c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:d213d07ee8d7052ab6d1a1ba6a0711411636a922415c577e2c402955d4164f81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426173889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d273b71adb470c831efe45fbe99537f410c80d4f77b6d67608484d9d73eece7`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:c5751feb90b71ab29d250dbdd8a29a672d910479a111d0f291a29739b017699b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378546205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9605578f80657db2bee643a7391cf97a2978e3a1120c422f14b009e534016d9`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6876457a0276caffb00183218b41bd3884b049428210d422aa5507674a6d5f32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.1 MB (357147172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8101f88fd31fc8d9997b1eb3f86bcacb594f071c7df322db744ac7fb1432ffc`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:ec5b6156ad9e3cc2af2c97a3c7ef483ec030201731dcb02908c56ca458095478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:a2f9e7d546c919a4f0c0093254ee649efffe4bc395ebb6eeab93b3f81f82c21e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384852061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921b956ce7b20e3faedc8dcf988d7e9a5e3ba4a012df7119ce2ee07629a4567c`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:53:54 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbd6ea2953dd5a9c754dc40f8076a988570b1337c6ea2b1d472e94c850e0c5`  
		Last Modified: Wed, 15 May 2019 23:30:04 GMT  
		Size: 85.6 MB (85619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:5ecbc71000db8a313e98500df9c5b9cce08e65089f0c686c55397cf05341a5c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336267455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a930a74a83b4dc948c6fd0413346489bbe682693955e79bfc8711dcd7c4b32`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:48:58 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc892c4be955ded37332e8f31a4c255d1577d0e8b1142bd9374dbed8c0eb6a2`  
		Last Modified: Wed, 15 May 2019 23:17:32 GMT  
		Size: 76.4 MB (76397187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0181b5c1bed5b0f32e94ba1f7dfc1140814b0c42ff88ebfea33ebcb91c393983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349893921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854f2a835d4f32afcbe70d2a957648e3d2010a9e6089b6992933d1e273802e6f`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:01:25 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ab2a3f2700d458d1ae3464918a27dfc0a8f65a59c190a64efd986f9f174a4`  
		Last Modified: Tue, 28 May 2019 23:50:34 GMT  
		Size: 77.9 MB (77889759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:755277be0b43505435eefbc5d7f7016da092aed787003c0f55d170118723e014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:d6e07b642e866726452d5d33eb16c95281f212926389aefa946c04ddf2069dff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **724.0 MB (723974641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf0173a9ed2fc920713883e9d504acc22e17a189fb37ea26ad6fee637576d1d`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:53:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:59:32 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbd6ea2953dd5a9c754dc40f8076a988570b1337c6ea2b1d472e94c850e0c5`  
		Last Modified: Wed, 15 May 2019 23:30:04 GMT  
		Size: 85.6 MB (85619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844a48d0442c5988f8101a5af358e3c31bb16ff98de70a31bb2833711a0b7137`  
		Last Modified: Wed, 15 May 2019 23:32:40 GMT  
		Size: 339.1 MB (339122580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:306f9f4de695b8daa3981c91b950952e9452704dfb7353ef58ab8897e231c90d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.6 MB (616551238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f3aeaaa16a79375f249880bd2c497516b9dbe9aa2bcf96ac1bb739823b6545`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:48:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:54:46 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc892c4be955ded37332e8f31a4c255d1577d0e8b1142bd9374dbed8c0eb6a2`  
		Last Modified: Wed, 15 May 2019 23:17:32 GMT  
		Size: 76.4 MB (76397187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1243b3c50ab54e242d905810a43e817fcce6fc3c3d1c4c0df9178bcb139f9b1f`  
		Last Modified: Wed, 15 May 2019 23:19:49 GMT  
		Size: 280.3 MB (280283783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e54d3d7176542a43d798761b00a2cf10c4650df10340787c165ea7f0280ad0e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639885018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24957d0e4a9f203955666bf5940e1ffe05aff7caf81a73ff0aa3eccf307c291e`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:01:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:17 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ab2a3f2700d458d1ae3464918a27dfc0a8f65a59c190a64efd986f9f174a4`  
		Last Modified: Tue, 28 May 2019 23:50:34 GMT  
		Size: 77.9 MB (77889759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f9387cd7bde0210eb25392274c874cf1ed88d740adfbcac52857b948fcd95a`  
		Last Modified: Tue, 28 May 2019 23:52:50 GMT  
		Size: 290.0 MB (289991097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:257ff351c4ee875b9a61b6632dcaa2db9b95165ad4a9057b369f88c825aefe8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:957c8cf4949343126b44e0123e523a5e472c691469638fb0a851ac34e496f41a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.4 MB (933358861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36cb19128c2f433c7901ecaad3ea911f49d5b010888383399e21bf123f6438d4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:48:48 GMT
ENV ROS_DISTRO=lunar
# Wed, 08 May 2019 01:50:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:50:01 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:50:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:50:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:51:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:55:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23224fd5f367eb7a6ab20012ce5e1c310342eff32d58ecebb675da2dc50d0dbf`  
		Last Modified: Wed, 08 May 2019 02:02:34 GMT  
		Size: 251.2 MB (251177782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8dc77adad38d8c71e1da0cc9b71adf9f9380c43e234f192957b3de049717c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d7ede2d718953de4bf4166dcafb3597ae7a264db610a690fd3c4cb0e150d42`  
		Last Modified: Wed, 08 May 2019 02:03:15 GMT  
		Size: 123.1 MB (123066684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7ff2ddda786a1753ce588f705c8b6c5d5fa52901a8525c06003edddc12b33e`  
		Last Modified: Wed, 08 May 2019 02:05:22 GMT  
		Size: 438.5 MB (438473565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:dbf5731d08823c002997fccda7f175de6756b4ac19e07026d4e89ac42481971e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.5 MB (816453122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58758cf0ce05da6c162f18600377cf11b96fb3d1ad65fcd4ebb2416200a1b11`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:08:15 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 23:10:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:10:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:10:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:10:16 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:11:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:17:33 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cf0fbc92865dc432c26e464888a4712d43f55747ffc6811a10e156f888146e`  
		Last Modified: Tue, 28 May 2019 23:54:00 GMT  
		Size: 206.1 MB (206095384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cf5c164ec57cc477504375bc6c8f47121cefe17eed2fac6af91e762e1fc35`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aadb38c340eb1f231eea218b374f93aa50e05a1ab0092940e6e303443056e8a`  
		Last Modified: Tue, 28 May 2019 23:54:41 GMT  
		Size: 116.9 MB (116885632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc12820d45428498dd091c0b3cba898464f0d98641cec774a5a5c2ed083217e`  
		Last Modified: Tue, 28 May 2019 23:57:10 GMT  
		Size: 378.6 MB (378630530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:755277be0b43505435eefbc5d7f7016da092aed787003c0f55d170118723e014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:d6e07b642e866726452d5d33eb16c95281f212926389aefa946c04ddf2069dff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **724.0 MB (723974641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf0173a9ed2fc920713883e9d504acc22e17a189fb37ea26ad6fee637576d1d`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:53:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:59:32 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbd6ea2953dd5a9c754dc40f8076a988570b1337c6ea2b1d472e94c850e0c5`  
		Last Modified: Wed, 15 May 2019 23:30:04 GMT  
		Size: 85.6 MB (85619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844a48d0442c5988f8101a5af358e3c31bb16ff98de70a31bb2833711a0b7137`  
		Last Modified: Wed, 15 May 2019 23:32:40 GMT  
		Size: 339.1 MB (339122580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:306f9f4de695b8daa3981c91b950952e9452704dfb7353ef58ab8897e231c90d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.6 MB (616551238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34f3aeaaa16a79375f249880bd2c497516b9dbe9aa2bcf96ac1bb739823b6545`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:48:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:54:46 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc892c4be955ded37332e8f31a4c255d1577d0e8b1142bd9374dbed8c0eb6a2`  
		Last Modified: Wed, 15 May 2019 23:17:32 GMT  
		Size: 76.4 MB (76397187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1243b3c50ab54e242d905810a43e817fcce6fc3c3d1c4c0df9178bcb139f9b1f`  
		Last Modified: Wed, 15 May 2019 23:19:49 GMT  
		Size: 280.3 MB (280283783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e54d3d7176542a43d798761b00a2cf10c4650df10340787c165ea7f0280ad0e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639885018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24957d0e4a9f203955666bf5940e1ffe05aff7caf81a73ff0aa3eccf307c291e`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:01:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:17 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ab2a3f2700d458d1ae3464918a27dfc0a8f65a59c190a64efd986f9f174a4`  
		Last Modified: Tue, 28 May 2019 23:50:34 GMT  
		Size: 77.9 MB (77889759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f9387cd7bde0210eb25392274c874cf1ed88d740adfbcac52857b948fcd95a`  
		Last Modified: Tue, 28 May 2019 23:52:50 GMT  
		Size: 290.0 MB (289991097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:7c8fa31b732b35195824000456db9fdbfa1463e97236b3f3899d8bdb8cfd51bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:04af70351504e804f5839c48c1a8605a4b455745ca05e4fd9de8cd54b514cfeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.6 MB (488585252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e932daa8c2c4ab2971523a10508c1d029407123e8a1987478893cfb977cc0f5f`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:53:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:55:21 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbd6ea2953dd5a9c754dc40f8076a988570b1337c6ea2b1d472e94c850e0c5`  
		Last Modified: Wed, 15 May 2019 23:30:04 GMT  
		Size: 85.6 MB (85619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e04bd5131e295c0869f53fc9f76dafdcb24d2f0438ce663b7142c4ef8c388a7`  
		Last Modified: Wed, 15 May 2019 23:30:44 GMT  
		Size: 103.7 MB (103733191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:7c4df8601b8e307838ea8ea92c7848a26a54d01b5f07253c682db4c4f56f0a2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.4 MB (426362151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b7e19bceac8e54199bc0b82957c8cf23d720ab8421b3b720130c27a76456d0`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:48:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:50:51 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc892c4be955ded37332e8f31a4c255d1577d0e8b1142bd9374dbed8c0eb6a2`  
		Last Modified: Wed, 15 May 2019 23:17:32 GMT  
		Size: 76.4 MB (76397187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801eae3053f82b943138c8fdda6149b6409ae4a5eba0bc6e698bdbaae109e605`  
		Last Modified: Wed, 15 May 2019 23:18:17 GMT  
		Size: 90.1 MB (90094696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:dba777feff740a12c36e691c77c9315571f0911d7c543e7ab3ecf21f9c0c22aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443884553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c858dc4afee5a4b7444ddba1a9d8abc15bb4a1425b46cc56c32aa4cae34972`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:01:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:02:53 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ab2a3f2700d458d1ae3464918a27dfc0a8f65a59c190a64efd986f9f174a4`  
		Last Modified: Tue, 28 May 2019 23:50:34 GMT  
		Size: 77.9 MB (77889759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174906d6d9cffcf77010868afbae2df30122c2b3134dc6f5bf0ee75a6798800f`  
		Last Modified: Tue, 28 May 2019 23:51:12 GMT  
		Size: 94.0 MB (93990632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:87d0139cc31b702553133e71bcda639046ba1bd798e78ea370d494877d1e39cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e41060366f07fbeddc9f94f4f8aef5a50d32ff348e77197e655123e37e107498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555319921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b095ab87f3be2754681b6655ce9cbaaa61af8d518ccde08d13f5f07a4dbb68`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:48:48 GMT
ENV ROS_DISTRO=lunar
# Wed, 08 May 2019 01:50:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:50:01 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:50:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:50:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:51:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:51:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23224fd5f367eb7a6ab20012ce5e1c310342eff32d58ecebb675da2dc50d0dbf`  
		Last Modified: Wed, 08 May 2019 02:02:34 GMT  
		Size: 251.2 MB (251177782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8dc77adad38d8c71e1da0cc9b71adf9f9380c43e234f192957b3de049717c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d7ede2d718953de4bf4166dcafb3597ae7a264db610a690fd3c4cb0e150d42`  
		Last Modified: Wed, 08 May 2019 02:03:15 GMT  
		Size: 123.1 MB (123066684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58735cadca31ee0331b782ce53f9c1147f2d97636407ad9c83c46285c39d2b2f`  
		Last Modified: Wed, 08 May 2019 02:03:37 GMT  
		Size: 60.4 MB (60434625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2cf2131834b13639396cccec81d345d01a939496ce978e8157829375e33dac26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495356242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3fc1d9979cbdec7addc10f6bbef4d623f8640e1dc7dd084e8ce4d7927f291c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:08:15 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 23:10:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:10:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:10:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:10:16 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:11:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:12:55 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cf0fbc92865dc432c26e464888a4712d43f55747ffc6811a10e156f888146e`  
		Last Modified: Tue, 28 May 2019 23:54:00 GMT  
		Size: 206.1 MB (206095384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cf5c164ec57cc477504375bc6c8f47121cefe17eed2fac6af91e762e1fc35`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aadb38c340eb1f231eea218b374f93aa50e05a1ab0092940e6e303443056e8a`  
		Last Modified: Tue, 28 May 2019 23:54:41 GMT  
		Size: 116.9 MB (116885632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:635319a80f3605de2375612b55f51c3791bedafeb974f8f593b1b69c9cea5933`  
		Last Modified: Tue, 28 May 2019 23:55:09 GMT  
		Size: 57.5 MB (57533650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:7c8fa31b732b35195824000456db9fdbfa1463e97236b3f3899d8bdb8cfd51bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:04af70351504e804f5839c48c1a8605a4b455745ca05e4fd9de8cd54b514cfeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.6 MB (488585252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e932daa8c2c4ab2971523a10508c1d029407123e8a1987478893cfb977cc0f5f`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:53:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:55:21 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbd6ea2953dd5a9c754dc40f8076a988570b1337c6ea2b1d472e94c850e0c5`  
		Last Modified: Wed, 15 May 2019 23:30:04 GMT  
		Size: 85.6 MB (85619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e04bd5131e295c0869f53fc9f76dafdcb24d2f0438ce663b7142c4ef8c388a7`  
		Last Modified: Wed, 15 May 2019 23:30:44 GMT  
		Size: 103.7 MB (103733191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:7c4df8601b8e307838ea8ea92c7848a26a54d01b5f07253c682db4c4f56f0a2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.4 MB (426362151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b7e19bceac8e54199bc0b82957c8cf23d720ab8421b3b720130c27a76456d0`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:48:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:50:51 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc892c4be955ded37332e8f31a4c255d1577d0e8b1142bd9374dbed8c0eb6a2`  
		Last Modified: Wed, 15 May 2019 23:17:32 GMT  
		Size: 76.4 MB (76397187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801eae3053f82b943138c8fdda6149b6409ae4a5eba0bc6e698bdbaae109e605`  
		Last Modified: Wed, 15 May 2019 23:18:17 GMT  
		Size: 90.1 MB (90094696 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:dba777feff740a12c36e691c77c9315571f0911d7c543e7ab3ecf21f9c0c22aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443884553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c858dc4afee5a4b7444ddba1a9d8abc15bb4a1425b46cc56c32aa4cae34972`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:01:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:02:53 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ab2a3f2700d458d1ae3464918a27dfc0a8f65a59c190a64efd986f9f174a4`  
		Last Modified: Tue, 28 May 2019 23:50:34 GMT  
		Size: 77.9 MB (77889759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174906d6d9cffcf77010868afbae2df30122c2b3134dc6f5bf0ee75a6798800f`  
		Last Modified: Tue, 28 May 2019 23:51:12 GMT  
		Size: 94.0 MB (93990632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:ec5b6156ad9e3cc2af2c97a3c7ef483ec030201731dcb02908c56ca458095478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a2f9e7d546c919a4f0c0093254ee649efffe4bc395ebb6eeab93b3f81f82c21e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384852061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921b956ce7b20e3faedc8dcf988d7e9a5e3ba4a012df7119ce2ee07629a4567c`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:53:54 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbd6ea2953dd5a9c754dc40f8076a988570b1337c6ea2b1d472e94c850e0c5`  
		Last Modified: Wed, 15 May 2019 23:30:04 GMT  
		Size: 85.6 MB (85619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:5ecbc71000db8a313e98500df9c5b9cce08e65089f0c686c55397cf05341a5c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336267455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a930a74a83b4dc948c6fd0413346489bbe682693955e79bfc8711dcd7c4b32`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:48:58 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc892c4be955ded37332e8f31a4c255d1577d0e8b1142bd9374dbed8c0eb6a2`  
		Last Modified: Wed, 15 May 2019 23:17:32 GMT  
		Size: 76.4 MB (76397187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0181b5c1bed5b0f32e94ba1f7dfc1140814b0c42ff88ebfea33ebcb91c393983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349893921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854f2a835d4f32afcbe70d2a957648e3d2010a9e6089b6992933d1e273802e6f`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:01:25 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ab2a3f2700d458d1ae3464918a27dfc0a8f65a59c190a64efd986f9f174a4`  
		Last Modified: Tue, 28 May 2019 23:50:34 GMT  
		Size: 77.9 MB (77889759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:df8665023b77a1e9f367b3c5fd13fa496dd64af03cf000e4c527ed2629ca5c88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9bfbf85f1b23bee2d37774e0c266e940a1920b17e7feceab59b07f83fa916964
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.9 MB (494885296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c8f54c72c84124824ddab9f260a47ae02a0adf98cc918d2327bef2f38f88e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:48:48 GMT
ENV ROS_DISTRO=lunar
# Wed, 08 May 2019 01:50:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:50:01 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:50:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:50:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:51:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23224fd5f367eb7a6ab20012ce5e1c310342eff32d58ecebb675da2dc50d0dbf`  
		Last Modified: Wed, 08 May 2019 02:02:34 GMT  
		Size: 251.2 MB (251177782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8dc77adad38d8c71e1da0cc9b71adf9f9380c43e234f192957b3de049717c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d7ede2d718953de4bf4166dcafb3597ae7a264db610a690fd3c4cb0e150d42`  
		Last Modified: Wed, 08 May 2019 02:03:15 GMT  
		Size: 123.1 MB (123066684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:872c106d3aae995a3ce7c9ab21a93ab6ddcff24393b5a40813f318402e8c3530
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.8 MB (437822592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a3bdbc2cef539ec246015f9244ff2a5bfeab22f1aa64a91a90939c918f2b79`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:08:15 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 23:10:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:10:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:10:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:10:16 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:11:41 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cf0fbc92865dc432c26e464888a4712d43f55747ffc6811a10e156f888146e`  
		Last Modified: Tue, 28 May 2019 23:54:00 GMT  
		Size: 206.1 MB (206095384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cf5c164ec57cc477504375bc6c8f47121cefe17eed2fac6af91e762e1fc35`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aadb38c340eb1f231eea218b374f93aa50e05a1ab0092940e6e303443056e8a`  
		Last Modified: Tue, 28 May 2019 23:54:41 GMT  
		Size: 116.9 MB (116885632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:ec5b6156ad9e3cc2af2c97a3c7ef483ec030201731dcb02908c56ca458095478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a2f9e7d546c919a4f0c0093254ee649efffe4bc395ebb6eeab93b3f81f82c21e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.9 MB (384852061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921b956ce7b20e3faedc8dcf988d7e9a5e3ba4a012df7119ce2ee07629a4567c`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:53:54 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbd6ea2953dd5a9c754dc40f8076a988570b1337c6ea2b1d472e94c850e0c5`  
		Last Modified: Wed, 15 May 2019 23:30:04 GMT  
		Size: 85.6 MB (85619916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:5ecbc71000db8a313e98500df9c5b9cce08e65089f0c686c55397cf05341a5c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336267455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a930a74a83b4dc948c6fd0413346489bbe682693955e79bfc8711dcd7c4b32`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
CMD ["bash"]
# Wed, 15 May 2019 22:48:58 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc892c4be955ded37332e8f31a4c255d1577d0e8b1142bd9374dbed8c0eb6a2`  
		Last Modified: Wed, 15 May 2019 23:17:32 GMT  
		Size: 76.4 MB (76397187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0181b5c1bed5b0f32e94ba1f7dfc1140814b0c42ff88ebfea33ebcb91c393983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349893921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854f2a835d4f32afcbe70d2a957648e3d2010a9e6089b6992933d1e273802e6f`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:01:25 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9ab2a3f2700d458d1ae3464918a27dfc0a8f65a59c190a64efd986f9f174a4`  
		Last Modified: Tue, 28 May 2019 23:50:34 GMT  
		Size: 77.9 MB (77889759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:d4c178ad8af65557b5cdcb145077126f720ee8d5842868755d901d37bb311d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:393a5b3cf9b7c21e73d16dc8694b363b60aff3e2207bdda829a94d5a4a5c7363
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299232145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9fb5e0652300023bc3658e4c5ae6b053f902a9a4c9519bf178cb1cef908aac`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:d5468ac34a3f5c25cd85504d3c17d1d5b3c2815b0e831b6c62a5655dbbf8a7ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259870268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef53378f80ec42acc0897957d651dcf8c80f4f7b14c9bc6ea28bf828239539f`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:909b973885a9187571f8950d5b5cd826c1d450fb01713f53ae6f15cc92d82288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272004162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448f5b5255a40ef28a439ce1c6c496a8b744a138a8d3770e6aebd3c40822d28c`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:ed9db4a3fa79c647926a3922fdb7c0e17a3da07310f253905f8117e718e204a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:6dc1164151bd432f1fa95173bc1086106ddccebdedf30aba663128562db5591b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371818612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439e35d14beaa176b62e5b54374f25619d30ce5c1ec66d3efa0424469bf7fbb3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:48:48 GMT
ENV ROS_DISTRO=lunar
# Wed, 08 May 2019 01:50:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:50:01 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:50:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:50:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23224fd5f367eb7a6ab20012ce5e1c310342eff32d58ecebb675da2dc50d0dbf`  
		Last Modified: Wed, 08 May 2019 02:02:34 GMT  
		Size: 251.2 MB (251177782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8dc77adad38d8c71e1da0cc9b71adf9f9380c43e234f192957b3de049717c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bd7c938619bfc7640b864954023b25704a26fa3d678a51fcae64a71ae76f95c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.9 MB (320936960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb169827b92ab556caec0463bbbf3b5b253eef744f5a8f560bfadf919563164`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:08:15 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 23:10:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:10:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:10:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:10:16 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cf0fbc92865dc432c26e464888a4712d43f55747ffc6811a10e156f888146e`  
		Last Modified: Tue, 28 May 2019 23:54:00 GMT  
		Size: 206.1 MB (206095384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cf5c164ec57cc477504375bc6c8f47121cefe17eed2fac6af91e762e1fc35`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:d4c178ad8af65557b5cdcb145077126f720ee8d5842868755d901d37bb311d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:393a5b3cf9b7c21e73d16dc8694b363b60aff3e2207bdda829a94d5a4a5c7363
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299232145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d9fb5e0652300023bc3658e4c5ae6b053f902a9a4c9519bf178cb1cef908aac`
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
# Wed, 15 May 2019 22:40:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:40:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:41:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:41:34 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:41:35 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:41:52 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:51:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:52:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:52:43 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:52:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:52:43 GMT
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
	-	`sha256:39fc3aed7cbcd013727cd65458031f606ce5b27b72ddae4ceb3d898fa952568b`  
		Last Modified: Wed, 15 May 2019 23:23:44 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6507bb388569c53462ffdc3fe09e3f861feb916933e4491ce26bd79c267e73e8`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f0939485725a2787ef602e2cd6ce5601e36e18a4685ed1ed08443aa767b45`  
		Last Modified: Wed, 15 May 2019 23:24:08 GMT  
		Size: 44.9 MB (44880241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a36c38c068186a0e10682277fcc874bbe01d04da1bf6c48fd1afc9780228482`  
		Last Modified: Wed, 15 May 2019 23:23:43 GMT  
		Size: 661.8 KB (661835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441cdb32905af052b4c4990bb0fa636cfaf420781fd4aa4030ed864af7fe567e`  
		Last Modified: Wed, 15 May 2019 23:29:21 GMT  
		Size: 193.2 MB (193236348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5fcb65e5c79a17d922503f10aca54ccf814b4cfc79a1f8e498bd127abb58c2`  
		Last Modified: Wed, 15 May 2019 23:28:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:d5468ac34a3f5c25cd85504d3c17d1d5b3c2815b0e831b6c62a5655dbbf8a7ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259870268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef53378f80ec42acc0897957d651dcf8c80f4f7b14c9bc6ea28bf828239539f`
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
# Wed, 15 May 2019 22:31:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:31:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:32:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:32:43 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:32:43 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:33:04 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:44:35 GMT
ENV ROS_DISTRO=lunar
# Wed, 15 May 2019 22:47:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:47:10 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 22:47:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 22:47:11 GMT
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
	-	`sha256:067a438e52bf4eca02db48943df5ca805b5b3b18fba161936ff53ad03a775d01`  
		Last Modified: Wed, 15 May 2019 23:12:12 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc35889e49195e32e05615d842834190879454cc38e118c0e38867044bfec997`  
		Last Modified: Wed, 15 May 2019 23:12:10 GMT  
		Size: 5.5 KB (5542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc40753372d1e264432b73eb31b8c27c850626c9031cb66fbb3983e6e91f1131`  
		Last Modified: Wed, 15 May 2019 23:12:27 GMT  
		Size: 40.9 MB (40938323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf9d1f3de2c4fad35f2c373fdb954b316a0286df658faffb690f4c642cca7ba`  
		Last Modified: Wed, 15 May 2019 23:12:11 GMT  
		Size: 661.8 KB (661818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e21aecb6563149ebdae668bb0a6bc857dae4d8069393539a0300fb2e11dce9`  
		Last Modified: Wed, 15 May 2019 23:17:02 GMT  
		Size: 164.6 MB (164633067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817d6ec2a18c3b7b40e267f11642fd9b9c0571a981dcb24b14107d3b628f68c5`  
		Last Modified: Wed, 15 May 2019 23:16:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:909b973885a9187571f8950d5b5cd826c1d450fb01713f53ae6f15cc92d82288
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272004162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448f5b5255a40ef28a439ce1c6c496a8b744a138a8d3770e6aebd3c40822d28c`
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
# Tue, 28 May 2019 22:46:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 22:46:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 22:47:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:47:46 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 22:47:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 22:48:04 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 22:57:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 28 May 2019 22:59:42 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 22:59:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 22:59:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 22:59:45 GMT
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
	-	`sha256:35cc09cec26d10bcaef7024e937c8618e834c350ce6e086a5b4d8d06f17a5795`  
		Last Modified: Tue, 28 May 2019 23:44:31 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b174b6b6a381189ec610ac9d8fdd003c6710bf6a504c42bb3d2647e0c4e2b22`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 5.5 KB (5540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ad296625b1ac176e35a72df471aec9f6133768edfcb4cea0bbe9a9260a6499`  
		Last Modified: Tue, 28 May 2019 23:44:44 GMT  
		Size: 42.8 MB (42826102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265f84da3cb59c100238b0e856800935bedc736b606182ef0231385d56ff207f`  
		Last Modified: Tue, 28 May 2019 23:44:30 GMT  
		Size: 452.1 KB (452116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e567af1821a0fc2816e0821151cb5731c32646e5250ddc111e5d90c5444959`  
		Last Modified: Tue, 28 May 2019 23:50:02 GMT  
		Size: 173.9 MB (173915029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f0fc1e88f905a455c354f3ff79f94f5c4d4bbf20bcea8e188cae6bea2309c7`  
		Last Modified: Tue, 28 May 2019 23:49:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:4af65dc9d814abc183c927529a9d0dc0d597f8c6bec4bc02051f27b48a92037c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:d213d07ee8d7052ab6d1a1ba6a0711411636a922415c577e2c402955d4164f81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426173889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d273b71adb470c831efe45fbe99537f410c80d4f77b6d67608484d9d73eece7`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:c5751feb90b71ab29d250dbdd8a29a672d910479a111d0f291a29739b017699b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378546205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9605578f80657db2bee643a7391cf97a2978e3a1120c422f14b009e534016d9`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6876457a0276caffb00183218b41bd3884b049428210d422aa5507674a6d5f32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.1 MB (357147172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8101f88fd31fc8d9997b1eb3f86bcacb594f071c7df322db744ac7fb1432ffc`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:eb6c5f931030ba6528ac24f2146c4fb8cbf0bfe1129a93ddb1aa1b6ae6e57d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:8aa219b926337c7ded1471d610e0299c952162e87f112f1bfd960b1ae215f0ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **786.3 MB (786327520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d0f838c1d5ea1c3dfe8a9e0540ff6eb80093c171feb184362a1d8603187bb2`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:14:21 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2773a2d1ffea03a43a05b75ba054176ae14d1e6f0d14897b6692d66cddad03`  
		Last Modified: Wed, 15 May 2019 23:37:14 GMT  
		Size: 360.2 MB (360153631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f8cc7dd5eb892dc3c3e0ec43230cf26383303cb7373b45477e90df69a1a4495b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.8 MB (688789241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e407471d073590b286e982749a84921e65db7bc8600fc45f8efef7f87d9d449`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:46 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d2bbbaade89305e0d3c62871e7362817d7e0860cb8223b2316f546a77c3f8`  
		Last Modified: Wed, 15 May 2019 23:24:13 GMT  
		Size: 310.2 MB (310243036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5256c960f9907b87aba642bb6249146369a6b7d4dacfaed06585d2f6c58e754a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.2 MB (700226395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656b074439b48f72ef8206f2b7b1887e76d8d56cd2dc05085835b7d1652b6337`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:29:46 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25e1d1f1a5c5348b85fabba527db81c4558b16dc36e66d2ae532dc48cf9d96b`  
		Last Modified: Wed, 29 May 2019 00:01:23 GMT  
		Size: 343.1 MB (343079223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:eb6c5f931030ba6528ac24f2146c4fb8cbf0bfe1129a93ddb1aa1b6ae6e57d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:8aa219b926337c7ded1471d610e0299c952162e87f112f1bfd960b1ae215f0ed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **786.3 MB (786327520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d0f838c1d5ea1c3dfe8a9e0540ff6eb80093c171feb184362a1d8603187bb2`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:14:21 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2773a2d1ffea03a43a05b75ba054176ae14d1e6f0d14897b6692d66cddad03`  
		Last Modified: Wed, 15 May 2019 23:37:14 GMT  
		Size: 360.2 MB (360153631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:f8cc7dd5eb892dc3c3e0ec43230cf26383303cb7373b45477e90df69a1a4495b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.8 MB (688789241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e407471d073590b286e982749a84921e65db7bc8600fc45f8efef7f87d9d449`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:46 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d2bbbaade89305e0d3c62871e7362817d7e0860cb8223b2316f546a77c3f8`  
		Last Modified: Wed, 15 May 2019 23:24:13 GMT  
		Size: 310.2 MB (310243036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5256c960f9907b87aba642bb6249146369a6b7d4dacfaed06585d2f6c58e754a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **700.2 MB (700226395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:656b074439b48f72ef8206f2b7b1887e76d8d56cd2dc05085835b7d1652b6337`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:29:46 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25e1d1f1a5c5348b85fabba527db81c4558b16dc36e66d2ae532dc48cf9d96b`  
		Last Modified: Wed, 29 May 2019 00:01:23 GMT  
		Size: 343.1 MB (343079223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:20647dc36d45acb86504ed8e67e6e7cdec8201991ff1d5a9125dac46bd7b565c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:5c9b857fdb2cbd1b7b29d8d0d2b52680e6f6c6605ec6c47a3762463dd22baa02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.4 MB (879359223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db98df701eb8c38ee23deda09002008b334027d379c1480538d8d32f82906464`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:55:39 GMT
ENV ROS_DISTRO=melodic
# Wed, 08 May 2019 01:57:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:57:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:57:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:57:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:57:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:00:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b0f237e6800bd8cd93d1eba6af7ff270cd673e7dca3b3cde75223baf7a1d1c`  
		Last Modified: Wed, 08 May 2019 02:06:26 GMT  
		Size: 269.5 MB (269499783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c137a57430681e4e7cc6c4d68e50bdcbdbd551b92115890ee74c48f399e20c9`  
		Last Modified: Wed, 08 May 2019 02:05:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5202c076b92887bc29a487a374ae6dce2feec957c85ffb20cf87adc38f382dbd`  
		Last Modified: Wed, 08 May 2019 02:06:53 GMT  
		Size: 108.5 MB (108461109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9122b19d47cd553369c62c4527b022d9868cf7adbdb7a963c64b7cb3ce9f5448`  
		Last Modified: Wed, 08 May 2019 02:08:36 GMT  
		Size: 380.8 MB (380757501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:220168be82607951d85b990a546401a1c62b06ebaf4e73f62e6f3a19f1071429
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.0 MB (796971464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b435935bee64b2e4b0f754356d7ad10137e908acfb33f84f6a048503bfbff65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:30:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:31:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:31:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:31:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:31:59 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:33:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:37:50 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a5f7832b7589f8e83dfc7ea24ab537b03a4ce8e2690ff488cf896574356627`  
		Last Modified: Wed, 29 May 2019 00:02:44 GMT  
		Size: 223.7 MB (223691790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09098193ac0e5f6e47daf028499375527ddb42698526c60ba32e9017bbd7dfa2`  
		Last Modified: Wed, 29 May 2019 00:01:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9ceadd6cd16a3bd846b862b2e7a925f7e2aa4fa2020bee2f44224e5ecb3a6a`  
		Last Modified: Wed, 29 May 2019 00:03:23 GMT  
		Size: 102.9 MB (102948146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0542b0de7e44b505c46bdbccb14aee681847aaa20a5ddc17d7fa822c3175f6aa`  
		Last Modified: Wed, 29 May 2019 00:05:45 GMT  
		Size: 355.5 MB (355489952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:17c68da459dc09888b0675319a426e8fec0bebb0d31822b5376f0d7c2b970f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:9cd318297b2bf31e784aef923b1baac37d298930ae276aeb47faadd85167113d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.0 MB (463986367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68539bcc7404bb47dd8839e772ea71761e7e758ee6a74bbc87f6e0c8abba1f9`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:01 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fddbd621154c644aeeb91c3bfdedfab370fca0c69ce6bd13f0fbd35c5d3b0e5`  
		Last Modified: Wed, 15 May 2019 23:35:06 GMT  
		Size: 37.8 MB (37812478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:7097ffa461756d1eb2d11c4c81234a77f1ededb92d57e36d8c9492b1cc415554
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.9 MB (411948056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966a43cfddab22ea681d7aee9a78ca7a7acb6b5cef1383cf9cf8c28bb50b51cf`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:03:25 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089622fb174082df2c86f9bc5369edd5a7ab94b7dce55b91b4dedda91953e0a`  
		Last Modified: Wed, 15 May 2019 23:22:24 GMT  
		Size: 33.4 MB (33401851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3472f657fe92c65bcff587e2b93b2aad17af049bfb55e6af8426d7afcace363f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.7 MB (392733224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eff39cc8f4ac86d4ab0c7a01178763221ac5f7a24f97a90e86f0c7147e43bfd`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:01 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ab879f7f557d791c57cd6192ab993e2252a222579f4ecda89706a5821b5a5b`  
		Last Modified: Tue, 28 May 2019 23:59:18 GMT  
		Size: 35.6 MB (35586052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:17c68da459dc09888b0675319a426e8fec0bebb0d31822b5376f0d7c2b970f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:9cd318297b2bf31e784aef923b1baac37d298930ae276aeb47faadd85167113d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.0 MB (463986367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a68539bcc7404bb47dd8839e772ea71761e7e758ee6a74bbc87f6e0c8abba1f9`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:08:01 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fddbd621154c644aeeb91c3bfdedfab370fca0c69ce6bd13f0fbd35c5d3b0e5`  
		Last Modified: Wed, 15 May 2019 23:35:06 GMT  
		Size: 37.8 MB (37812478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:7097ffa461756d1eb2d11c4c81234a77f1ededb92d57e36d8c9492b1cc415554
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.9 MB (411948056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966a43cfddab22ea681d7aee9a78ca7a7acb6b5cef1383cf9cf8c28bb50b51cf`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:03:25 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089622fb174082df2c86f9bc5369edd5a7ab94b7dce55b91b4dedda91953e0a`  
		Last Modified: Wed, 15 May 2019 23:22:24 GMT  
		Size: 33.4 MB (33401851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3472f657fe92c65bcff587e2b93b2aad17af049bfb55e6af8426d7afcace363f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.7 MB (392733224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eff39cc8f4ac86d4ab0c7a01178763221ac5f7a24f97a90e86f0c7147e43bfd`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:25:01 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ab879f7f557d791c57cd6192ab993e2252a222579f4ecda89706a5821b5a5b`  
		Last Modified: Tue, 28 May 2019 23:59:18 GMT  
		Size: 35.6 MB (35586052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:e8a37d0abda0705ee5745ab56966a35caeb7cf54b6cb5df23c946be8202cac3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:89b4339c525c8f6f89d5216a03ec9a20c9144fe75375b0cbbce8b85a7373d281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.9 MB (553919086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0b1142e13746edd715afe27eb461e22a7f4252ade3768d5be76947a7023e19`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:55:39 GMT
ENV ROS_DISTRO=melodic
# Wed, 08 May 2019 01:57:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:57:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:57:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:57:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:57:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:58:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b0f237e6800bd8cd93d1eba6af7ff270cd673e7dca3b3cde75223baf7a1d1c`  
		Last Modified: Wed, 08 May 2019 02:06:26 GMT  
		Size: 269.5 MB (269499783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c137a57430681e4e7cc6c4d68e50bdcbdbd551b92115890ee74c48f399e20c9`  
		Last Modified: Wed, 08 May 2019 02:05:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5202c076b92887bc29a487a374ae6dce2feec957c85ffb20cf87adc38f382dbd`  
		Last Modified: Wed, 08 May 2019 02:06:53 GMT  
		Size: 108.5 MB (108461109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587064451e6ab246b31081c67d3ec17ca1f5b0f3657bb78488fb84b05d545116`  
		Last Modified: Wed, 08 May 2019 02:07:10 GMT  
		Size: 55.3 MB (55317364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5cf3f3e02d495fb1d04ab683bb396ca487a2009dbcbedc81eb381131f15e63fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.1 MB (494084930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a00a077cc667a65d9301cbbd771bc16595d073c89464faa31cd6a68a2ef5854`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:30:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:31:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:31:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:31:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:31:59 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:33:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:34:08 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a5f7832b7589f8e83dfc7ea24ab537b03a4ce8e2690ff488cf896574356627`  
		Last Modified: Wed, 29 May 2019 00:02:44 GMT  
		Size: 223.7 MB (223691790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09098193ac0e5f6e47daf028499375527ddb42698526c60ba32e9017bbd7dfa2`  
		Last Modified: Wed, 29 May 2019 00:01:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9ceadd6cd16a3bd846b862b2e7a925f7e2aa4fa2020bee2f44224e5ecb3a6a`  
		Last Modified: Wed, 29 May 2019 00:03:23 GMT  
		Size: 102.9 MB (102948146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d02e5e9420e77a83b54653bae95284c12c1ad038d44843c9c5989eeba0349e`  
		Last Modified: Wed, 29 May 2019 00:03:47 GMT  
		Size: 52.6 MB (52603418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:4af65dc9d814abc183c927529a9d0dc0d597f8c6bec4bc02051f27b48a92037c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:d213d07ee8d7052ab6d1a1ba6a0711411636a922415c577e2c402955d4164f81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426173889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d273b71adb470c831efe45fbe99537f410c80d4f77b6d67608484d9d73eece7`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:c5751feb90b71ab29d250dbdd8a29a672d910479a111d0f291a29739b017699b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378546205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9605578f80657db2bee643a7391cf97a2978e3a1120c422f14b009e534016d9`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6876457a0276caffb00183218b41bd3884b049428210d422aa5507674a6d5f32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.1 MB (357147172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8101f88fd31fc8d9997b1eb3f86bcacb594f071c7df322db744ac7fb1432ffc`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:4af65dc9d814abc183c927529a9d0dc0d597f8c6bec4bc02051f27b48a92037c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:d213d07ee8d7052ab6d1a1ba6a0711411636a922415c577e2c402955d4164f81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426173889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d273b71adb470c831efe45fbe99537f410c80d4f77b6d67608484d9d73eece7`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:06:37 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ab57cd7983f17127d5552db6cc1998b113e269a517574e4faa5a98735cec84`  
		Last Modified: Wed, 15 May 2019 23:34:44 GMT  
		Size: 70.6 MB (70636229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:c5751feb90b71ab29d250dbdd8a29a672d910479a111d0f291a29739b017699b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378546205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9605578f80657db2bee643a7391cf97a2978e3a1120c422f14b009e534016d9`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
CMD ["bash"]
# Wed, 15 May 2019 23:02:18 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63feabdb12ef45a3920a1e057e10afcc6471bc3d6dd19c3cc50a76340a1257b6`  
		Last Modified: Wed, 15 May 2019 23:22:01 GMT  
		Size: 62.1 MB (62103297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6876457a0276caffb00183218b41bd3884b049428210d422aa5507674a6d5f32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.1 MB (357147172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8101f88fd31fc8d9997b1eb3f86bcacb594f071c7df322db744ac7fb1432ffc`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:24:02 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b820fbcb4146cb50b7027c1c6fe3def1ad4b3733b1fc191331cad0e43057d3ab`  
		Last Modified: Tue, 28 May 2019 23:58:56 GMT  
		Size: 65.6 MB (65582483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:275546c2497ebd3d8995c134e3a01ac8b309515e95da0ca35871fe08339a87be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:8919ac2df4033f6277fbf6cd8a820c50bf02630bce420d34011b8beb6cddd727
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.6 MB (498601722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f8e1bf6066b3adf567a27de8719e1d9721207da5108f44c1922d64609138dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:55:39 GMT
ENV ROS_DISTRO=melodic
# Wed, 08 May 2019 01:57:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:57:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:57:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:57:04 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:57:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b0f237e6800bd8cd93d1eba6af7ff270cd673e7dca3b3cde75223baf7a1d1c`  
		Last Modified: Wed, 08 May 2019 02:06:26 GMT  
		Size: 269.5 MB (269499783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c137a57430681e4e7cc6c4d68e50bdcbdbd551b92115890ee74c48f399e20c9`  
		Last Modified: Wed, 08 May 2019 02:05:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5202c076b92887bc29a487a374ae6dce2feec957c85ffb20cf87adc38f382dbd`  
		Last Modified: Wed, 08 May 2019 02:06:53 GMT  
		Size: 108.5 MB (108461109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:beac80a075790cffb8008137d37d95901fac22d18bf4de983bc9d628662cd412
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441481512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:291185f9ad6af3490f07479dd01e09fabbccede037215d04936bde8f4856d548`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:30:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:31:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:31:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:31:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:31:59 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:33:07 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a5f7832b7589f8e83dfc7ea24ab537b03a4ce8e2690ff488cf896574356627`  
		Last Modified: Wed, 29 May 2019 00:02:44 GMT  
		Size: 223.7 MB (223691790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09098193ac0e5f6e47daf028499375527ddb42698526c60ba32e9017bbd7dfa2`  
		Last Modified: Wed, 29 May 2019 00:01:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9ceadd6cd16a3bd846b862b2e7a925f7e2aa4fa2020bee2f44224e5ecb3a6a`  
		Last Modified: Wed, 29 May 2019 00:03:23 GMT  
		Size: 102.9 MB (102948146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:37c2f951937608f4f9bcf67d3bc80dd92e3f290c8441c8459f7de27955f7ff44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:f817f577a7848719e3c5ffdbc835582c712d0d3c0d0fae86fc3b84def768f945
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355537660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b795eb5ee0a6fbb872e480c10df163f27a29dd3bef835febcb4b498b7f9bdc42`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:d90186557b3a6197bb91ed59eb8398960405af8e846c1cfe50b7d4dafd3d019b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316442908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00742be720446c8f2683963b95694000558579a692be2627b8f326c49a197709`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8299a955a0143d9c4dbdcf8e8f4503abde1bc32990e902b9999bf796460fe371
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291564689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83436480a2a9fe9f3392ab6d83e61bc760f20d9970cbd0f9fe4f13b6530c646a`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:37c2f951937608f4f9bcf67d3bc80dd92e3f290c8441c8459f7de27955f7ff44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:f817f577a7848719e3c5ffdbc835582c712d0d3c0d0fae86fc3b84def768f945
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355537660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b795eb5ee0a6fbb872e480c10df163f27a29dd3bef835febcb4b498b7f9bdc42`
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
# Wed, 15 May 2019 23:00:05 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 23:00:06 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 23:01:09 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:01:09 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 23:01:10 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 23:01:28 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 23:01:28 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:04:47 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:04:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:04:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:04:49 GMT
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
	-	`sha256:8360fba6bb24a3ecbe8dd83670fb7816643958af9a8836c04adb0d0f4b2d39da`  
		Last Modified: Wed, 15 May 2019 23:32:49 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c01e17b3d3e58dd3d9017a267d01de07f8c8a230f4a86849dd6c3a65932f78`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a332dd7d43c5dc2ea2458cce4893758cc05f649b3f33b5db54b0ca2bec468c8`  
		Last Modified: Wed, 15 May 2019 23:33:11 GMT  
		Size: 49.4 MB (49414138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bf104889d4f484b9e29572cb648a51789ab68fee665c0163440056dea9a6be`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 661.8 KB (661836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7cbb3b6c9b792ec38e68a55d7019015f0841cd046b5996e603853cb12de1b0f`  
		Last Modified: Wed, 15 May 2019 23:34:14 GMT  
		Size: 260.8 MB (260849079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9338c948788d9f3cb85f2019e739562f327ac5d55eb0e960aa6096aa1ef672a`  
		Last Modified: Wed, 15 May 2019 23:32:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:d90186557b3a6197bb91ed59eb8398960405af8e846c1cfe50b7d4dafd3d019b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316442908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00742be720446c8f2683963b95694000558579a692be2627b8f326c49a197709`
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
# Wed, 15 May 2019 22:55:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 15 May 2019 22:55:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 15 May 2019 22:56:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:56:22 GMT
ENV LANG=C.UTF-8
# Wed, 15 May 2019 22:56:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 15 May 2019 22:56:45 GMT
RUN rosdep init     && rosdep update
# Wed, 15 May 2019 22:56:46 GMT
ENV ROS_DISTRO=melodic
# Wed, 15 May 2019 23:00:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:00:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 15 May 2019 23:00:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 15 May 2019 23:00:48 GMT
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
	-	`sha256:f46946ca01cdbb07048572350ff25e5010a569a860bfe8b2e480e971528ae7f0`  
		Last Modified: Wed, 15 May 2019 23:20:01 GMT  
		Size: 1.4 KB (1401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea4f47b8e1161050ae509c3474980309c2fc6c5f776018bedc0a613a0ddd6a4`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 5.5 KB (5450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98befa1ce8111be03efd1b73ad628caff1202d7fe218b9e559cdd502359fb0fa`  
		Last Modified: Wed, 15 May 2019 23:20:19 GMT  
		Size: 45.0 MB (45021451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03a71de66c0f09ddffe6e04e7a36821d1634a0c6953db0b3d295427440e9a52`  
		Last Modified: Wed, 15 May 2019 23:20:00 GMT  
		Size: 661.8 KB (661823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4b25e2ee6e8d8cf69fbe031b2d886d48acbde8a990ecd68edbe36e781190128`  
		Last Modified: Wed, 15 May 2019 23:21:13 GMT  
		Size: 232.2 MB (232228355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f189bd34679acf684d16af01f1a021f247a6eb9a78977e63190e3524714446b6`  
		Last Modified: Wed, 15 May 2019 23:19:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8299a955a0143d9c4dbdcf8e8f4503abde1bc32990e902b9999bf796460fe371
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.6 MB (291564689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83436480a2a9fe9f3392ab6d83e61bc760f20d9970cbd0f9fe4f13b6530c646a`
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
# Tue, 28 May 2019 23:18:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:18:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:19:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:19:38 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:19:38 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:19:55 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:19:56 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:22:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:22:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:22:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:22:46 GMT
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
	-	`sha256:f5d6f1b3df73be8226339d90542a90f319c8bad4320ab861cfcf22c189b1e7f5`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111114437a45ed327ea8e2b6dafb0757fc2b483e80fd8aa69e12eb1e560eb7a7`  
		Last Modified: Tue, 28 May 2019 23:57:20 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6622578b93dffa8180f9a161ac606c74bb9cdb6b835c92149d098991357e74e4`  
		Last Modified: Tue, 28 May 2019 23:57:38 GMT  
		Size: 47.6 MB (47625387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900d7074402ced5f71d5c57ba245c1e60e594e25de65874b4316265f57ec6db`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 452.2 KB (452229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bac861c4ce95acf46e5d84a30a837d1eeae27d4a7640d2d0f5027686e627087`  
		Last Modified: Tue, 28 May 2019 23:58:27 GMT  
		Size: 202.9 MB (202922844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df580111d4f48d101e15c663422713953a9394ff1fc72ef2b0e0b08643d85d42`  
		Last Modified: Tue, 28 May 2019 23:57:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:cb1c594e8f690c13b879db05aafdad412eba40b10add1f2056f5707b2aa55997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:2a8f7ec73ead960f209316388ebc5ce8ca1b95d9f13127b1a4e1c14e332cbef8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.1 MB (390140613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8fa47dff65d48e3c94636befc91f31f8e50ccc2c2788b6dee0cf453a869212d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:55:39 GMT
ENV ROS_DISTRO=melodic
# Wed, 08 May 2019 01:57:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:57:03 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:57:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:57:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b0f237e6800bd8cd93d1eba6af7ff270cd673e7dca3b3cde75223baf7a1d1c`  
		Last Modified: Wed, 08 May 2019 02:06:26 GMT  
		Size: 269.5 MB (269499783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c137a57430681e4e7cc6c4d68e50bdcbdbd551b92115890ee74c48f399e20c9`  
		Last Modified: Wed, 08 May 2019 02:05:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0bebe4df778cad6e9a01e78ac2816dec9c5a76237b3d8d20b3781135bf4a52a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338533366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8e97220ee696e23aba18cca0e7d15c06c88829ecd32ef8ecb410019f6f7591`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 28 May 2019 23:06:51 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:06:56 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 28 May 2019 23:06:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 28 May 2019 23:07:50 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:07:52 GMT
ENV LANG=C.UTF-8
# Tue, 28 May 2019 23:07:52 GMT
ENV LC_ALL=C.UTF-8
# Tue, 28 May 2019 23:08:14 GMT
RUN rosdep init     && rosdep update
# Tue, 28 May 2019 23:30:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 28 May 2019 23:31:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 28 May 2019 23:31:59 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 28 May 2019 23:31:59 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 28 May 2019 23:31:59 GMT
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
	-	`sha256:de3b02bcadf26ff4280438aa7eda37712857f0f489c86cc9a3859beeccf5d440`  
		Last Modified: Tue, 28 May 2019 23:52:59 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b351a478c918013241e6e5b218213dc224a483e83f1b093d535d815d3929299`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 5.0 KB (4998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0dcd0662286afc71c944acc437add77fd04139b8d8c93ef14ad778a39b2ce`  
		Last Modified: Tue, 28 May 2019 23:53:28 GMT  
		Size: 51.5 MB (51495045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f4270949acd42c7a86afecad1d64af6a9c8ffc7b6029ccb8333de5cacab6d1`  
		Last Modified: Tue, 28 May 2019 23:52:58 GMT  
		Size: 452.2 KB (452237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a5f7832b7589f8e83dfc7ea24ab537b03a4ce8e2690ff488cf896574356627`  
		Last Modified: Wed, 29 May 2019 00:02:44 GMT  
		Size: 223.7 MB (223691790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09098193ac0e5f6e47daf028499375527ddb42698526c60ba32e9017bbd7dfa2`  
		Last Modified: Wed, 29 May 2019 00:01:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
