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
$ docker pull ros@sha256:521d524017eabcbef9f77beaf0f77ed0f5c86bd7aeb5a4161084a5b86c731533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent` - linux; amd64

```console
$ docker pull ros@sha256:85e8f46c49038b2a7761eb7223b717ea1b333e3a23f727c952a1c4a0a04202a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338901683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d37134d32b863e4f329f2f7aab3bb181e336dc15137964e2575e031a1fa6665`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 04:01:04 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:01:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 04:01:06 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 23 Jan 2019 04:02:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 04:02:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 04:02:51 GMT
RUN pip3 install -U     argcomplete
# Wed, 23 Jan 2019 04:02:52 GMT
ENV ROS_DISTRO=ardent
# Wed, 23 Jan 2019 04:04:45 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:04:46 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 23 Jan 2019 04:04:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 04:04:47 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:08:58 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b155d5d901aa1c494afe8c3e112aed171c5405a5e0cbe1ae734c6b895a7f4`  
		Last Modified: Wed, 23 Jan 2019 04:41:37 GMT  
		Size: 129.2 MB (129177810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec83f25e60a890c4c6c871d95abd7b39d793520c9c04bfee51bc2e5a6d32c20`  
		Last Modified: Wed, 23 Jan 2019 04:41:07 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb3e0180a952867900302edbc23b97613013205953b9561997f803c7291ceee`  
		Last Modified: Wed, 23 Jan 2019 04:41:06 GMT  
		Size: 5.5 KB (5518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a441758da77371354a72d1a8e5d9c253ac0c86dfa1963b823d2deb9d9af5`  
		Last Modified: Wed, 23 Jan 2019 04:41:20 GMT  
		Size: 33.8 MB (33755012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c078b2c57b622d958b7d2fb8fdf633c6fd2bed4bd67292aec4a7915c0f4ece`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 638.1 KB (638123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9d71f9a55cbcd0d15130c74b9ce7237c105ef6b18f61595a8f1db5a2d9370b`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 114.2 KB (114159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e9fcfc6662c815cda78cae8bf34ba6c305111ffd1252b8de4f794e7ff4f63`  
		Last Modified: Wed, 23 Jan 2019 04:41:30 GMT  
		Size: 51.7 MB (51705818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e29ef4f0e2d98c8291e684ec6cc06ea1451b561d819180fc0d20f84ad9a27`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698466b3d0d60c6ea12e6c6472e64447bdc926d704726c0520b1fd399f004bf4`  
		Last Modified: Wed, 23 Jan 2019 04:42:12 GMT  
		Size: 80.0 MB (79968982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7cfe5f507a40ff6adfa8f345402849999545db9aa6f9509e6d8c3f78c44aa2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277543110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aa28b97e651310cecfbd2335323b653355798e62a70a65a65c27ad14b5c931`
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
# Tue, 29 Jan 2019 18:29:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:29:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:29:42 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:31:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:31:20 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:31:21 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:32:09 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:32:09 GMT
ENV ROS_DISTRO=ardent
# Tue, 29 Jan 2019 18:35:14 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:35:15 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:35:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:35:17 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:38:46 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6da793a8ce877fe97dbf003a117aacf4f0675e7df604ef7c8a0599f04fa6d723`  
		Last Modified: Tue, 29 Jan 2019 19:24:14 GMT  
		Size: 77.1 MB (77122089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648e89e66da50f0a8dcc91ed33fe8df548dbaf274062e657a2bf3db536d96dee`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f4d2de33c43cb0721bc2e26b3e5f97a6c0c8e419f5eb9e2d0e4757d3b706`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39db57bc96f6ed72026f88e890e564431e073b2566a69a8b7d70a3666558768d`  
		Last Modified: Tue, 29 Jan 2019 19:23:57 GMT  
		Size: 32.3 MB (32346258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8869b6efa313c11cad2f8063974afd7739d4807e8079ef396a7951a8d57aa05f`  
		Last Modified: Tue, 29 Jan 2019 19:23:38 GMT  
		Size: 645.6 KB (645575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626abec6d100f7ab84cd0d4630eba566867daa3d1d488d1dc8cc625f54a0ca4`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 114.5 KB (114452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aff7fe80a883244ea66e73e21cd02d176104f363ed3bf6cc34b0af16ca89`  
		Last Modified: Tue, 29 Jan 2019 19:24:09 GMT  
		Size: 50.1 MB (50092721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fabfbd7288da2e98b321e1be0502e6baed0557ab871fed16e810eb09840b7f3`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f80644dec3977f06410281ad9931098da83f76a8cb84cda7f8584e11154f08`  
		Last Modified: Tue, 29 Jan 2019 19:24:57 GMT  
		Size: 77.6 MB (77643533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-base`

```console
$ docker pull ros@sha256:521d524017eabcbef9f77beaf0f77ed0f5c86bd7aeb5a4161084a5b86c731533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:85e8f46c49038b2a7761eb7223b717ea1b333e3a23f727c952a1c4a0a04202a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338901683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d37134d32b863e4f329f2f7aab3bb181e336dc15137964e2575e031a1fa6665`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 04:01:04 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:01:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 04:01:06 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 23 Jan 2019 04:02:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 04:02:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 04:02:51 GMT
RUN pip3 install -U     argcomplete
# Wed, 23 Jan 2019 04:02:52 GMT
ENV ROS_DISTRO=ardent
# Wed, 23 Jan 2019 04:04:45 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:04:46 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 23 Jan 2019 04:04:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 04:04:47 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:08:58 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b155d5d901aa1c494afe8c3e112aed171c5405a5e0cbe1ae734c6b895a7f4`  
		Last Modified: Wed, 23 Jan 2019 04:41:37 GMT  
		Size: 129.2 MB (129177810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec83f25e60a890c4c6c871d95abd7b39d793520c9c04bfee51bc2e5a6d32c20`  
		Last Modified: Wed, 23 Jan 2019 04:41:07 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb3e0180a952867900302edbc23b97613013205953b9561997f803c7291ceee`  
		Last Modified: Wed, 23 Jan 2019 04:41:06 GMT  
		Size: 5.5 KB (5518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a441758da77371354a72d1a8e5d9c253ac0c86dfa1963b823d2deb9d9af5`  
		Last Modified: Wed, 23 Jan 2019 04:41:20 GMT  
		Size: 33.8 MB (33755012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c078b2c57b622d958b7d2fb8fdf633c6fd2bed4bd67292aec4a7915c0f4ece`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 638.1 KB (638123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9d71f9a55cbcd0d15130c74b9ce7237c105ef6b18f61595a8f1db5a2d9370b`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 114.2 KB (114159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e9fcfc6662c815cda78cae8bf34ba6c305111ffd1252b8de4f794e7ff4f63`  
		Last Modified: Wed, 23 Jan 2019 04:41:30 GMT  
		Size: 51.7 MB (51705818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e29ef4f0e2d98c8291e684ec6cc06ea1451b561d819180fc0d20f84ad9a27`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698466b3d0d60c6ea12e6c6472e64447bdc926d704726c0520b1fd399f004bf4`  
		Last Modified: Wed, 23 Jan 2019 04:42:12 GMT  
		Size: 80.0 MB (79968982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7cfe5f507a40ff6adfa8f345402849999545db9aa6f9509e6d8c3f78c44aa2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277543110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aa28b97e651310cecfbd2335323b653355798e62a70a65a65c27ad14b5c931`
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
# Tue, 29 Jan 2019 18:29:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:29:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:29:42 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:31:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:31:20 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:31:21 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:32:09 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:32:09 GMT
ENV ROS_DISTRO=ardent
# Tue, 29 Jan 2019 18:35:14 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:35:15 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:35:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:35:17 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:38:46 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6da793a8ce877fe97dbf003a117aacf4f0675e7df604ef7c8a0599f04fa6d723`  
		Last Modified: Tue, 29 Jan 2019 19:24:14 GMT  
		Size: 77.1 MB (77122089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648e89e66da50f0a8dcc91ed33fe8df548dbaf274062e657a2bf3db536d96dee`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f4d2de33c43cb0721bc2e26b3e5f97a6c0c8e419f5eb9e2d0e4757d3b706`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39db57bc96f6ed72026f88e890e564431e073b2566a69a8b7d70a3666558768d`  
		Last Modified: Tue, 29 Jan 2019 19:23:57 GMT  
		Size: 32.3 MB (32346258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8869b6efa313c11cad2f8063974afd7739d4807e8079ef396a7951a8d57aa05f`  
		Last Modified: Tue, 29 Jan 2019 19:23:38 GMT  
		Size: 645.6 KB (645575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626abec6d100f7ab84cd0d4630eba566867daa3d1d488d1dc8cc625f54a0ca4`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 114.5 KB (114452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aff7fe80a883244ea66e73e21cd02d176104f363ed3bf6cc34b0af16ca89`  
		Last Modified: Tue, 29 Jan 2019 19:24:09 GMT  
		Size: 50.1 MB (50092721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fabfbd7288da2e98b321e1be0502e6baed0557ab871fed16e810eb09840b7f3`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f80644dec3977f06410281ad9931098da83f76a8cb84cda7f8584e11154f08`  
		Last Modified: Tue, 29 Jan 2019 19:24:57 GMT  
		Size: 77.6 MB (77643533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-base-xenial`

```console
$ docker pull ros@sha256:521d524017eabcbef9f77beaf0f77ed0f5c86bd7aeb5a4161084a5b86c731533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:85e8f46c49038b2a7761eb7223b717ea1b333e3a23f727c952a1c4a0a04202a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338901683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d37134d32b863e4f329f2f7aab3bb181e336dc15137964e2575e031a1fa6665`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 04:01:04 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:01:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 04:01:06 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 23 Jan 2019 04:02:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 04:02:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 04:02:51 GMT
RUN pip3 install -U     argcomplete
# Wed, 23 Jan 2019 04:02:52 GMT
ENV ROS_DISTRO=ardent
# Wed, 23 Jan 2019 04:04:45 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:04:46 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 23 Jan 2019 04:04:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 04:04:47 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:08:58 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b155d5d901aa1c494afe8c3e112aed171c5405a5e0cbe1ae734c6b895a7f4`  
		Last Modified: Wed, 23 Jan 2019 04:41:37 GMT  
		Size: 129.2 MB (129177810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec83f25e60a890c4c6c871d95abd7b39d793520c9c04bfee51bc2e5a6d32c20`  
		Last Modified: Wed, 23 Jan 2019 04:41:07 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb3e0180a952867900302edbc23b97613013205953b9561997f803c7291ceee`  
		Last Modified: Wed, 23 Jan 2019 04:41:06 GMT  
		Size: 5.5 KB (5518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a441758da77371354a72d1a8e5d9c253ac0c86dfa1963b823d2deb9d9af5`  
		Last Modified: Wed, 23 Jan 2019 04:41:20 GMT  
		Size: 33.8 MB (33755012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c078b2c57b622d958b7d2fb8fdf633c6fd2bed4bd67292aec4a7915c0f4ece`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 638.1 KB (638123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9d71f9a55cbcd0d15130c74b9ce7237c105ef6b18f61595a8f1db5a2d9370b`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 114.2 KB (114159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e9fcfc6662c815cda78cae8bf34ba6c305111ffd1252b8de4f794e7ff4f63`  
		Last Modified: Wed, 23 Jan 2019 04:41:30 GMT  
		Size: 51.7 MB (51705818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e29ef4f0e2d98c8291e684ec6cc06ea1451b561d819180fc0d20f84ad9a27`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698466b3d0d60c6ea12e6c6472e64447bdc926d704726c0520b1fd399f004bf4`  
		Last Modified: Wed, 23 Jan 2019 04:42:12 GMT  
		Size: 80.0 MB (79968982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f7cfe5f507a40ff6adfa8f345402849999545db9aa6f9509e6d8c3f78c44aa2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277543110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aa28b97e651310cecfbd2335323b653355798e62a70a65a65c27ad14b5c931`
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
# Tue, 29 Jan 2019 18:29:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:29:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:29:42 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:31:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:31:20 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:31:21 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:32:09 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:32:09 GMT
ENV ROS_DISTRO=ardent
# Tue, 29 Jan 2019 18:35:14 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:35:15 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:35:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:35:17 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:38:46 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-base=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:6da793a8ce877fe97dbf003a117aacf4f0675e7df604ef7c8a0599f04fa6d723`  
		Last Modified: Tue, 29 Jan 2019 19:24:14 GMT  
		Size: 77.1 MB (77122089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648e89e66da50f0a8dcc91ed33fe8df548dbaf274062e657a2bf3db536d96dee`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f4d2de33c43cb0721bc2e26b3e5f97a6c0c8e419f5eb9e2d0e4757d3b706`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39db57bc96f6ed72026f88e890e564431e073b2566a69a8b7d70a3666558768d`  
		Last Modified: Tue, 29 Jan 2019 19:23:57 GMT  
		Size: 32.3 MB (32346258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8869b6efa313c11cad2f8063974afd7739d4807e8079ef396a7951a8d57aa05f`  
		Last Modified: Tue, 29 Jan 2019 19:23:38 GMT  
		Size: 645.6 KB (645575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626abec6d100f7ab84cd0d4630eba566867daa3d1d488d1dc8cc625f54a0ca4`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 114.5 KB (114452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aff7fe80a883244ea66e73e21cd02d176104f363ed3bf6cc34b0af16ca89`  
		Last Modified: Tue, 29 Jan 2019 19:24:09 GMT  
		Size: 50.1 MB (50092721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fabfbd7288da2e98b321e1be0502e6baed0557ab871fed16e810eb09840b7f3`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f80644dec3977f06410281ad9931098da83f76a8cb84cda7f8584e11154f08`  
		Last Modified: Tue, 29 Jan 2019 19:24:57 GMT  
		Size: 77.6 MB (77643533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-core`

```console
$ docker pull ros@sha256:871a269bfcef3bbed1e46174da0cf17ce580b4f78a9b2ce572dbcb2bd5be1797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d8322325e3b6b444f6dd4c4578ba99747076abf731d6476e6be1bea95d10cc56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84dd5cc09c56e90331211a96b91efaaee3d60487e774eb276bba1d2df3a47e59`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 04:01:04 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:01:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 04:01:06 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 23 Jan 2019 04:02:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 04:02:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 04:02:51 GMT
RUN pip3 install -U     argcomplete
# Wed, 23 Jan 2019 04:02:52 GMT
ENV ROS_DISTRO=ardent
# Wed, 23 Jan 2019 04:04:45 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:04:46 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 23 Jan 2019 04:04:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 04:04:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b155d5d901aa1c494afe8c3e112aed171c5405a5e0cbe1ae734c6b895a7f4`  
		Last Modified: Wed, 23 Jan 2019 04:41:37 GMT  
		Size: 129.2 MB (129177810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec83f25e60a890c4c6c871d95abd7b39d793520c9c04bfee51bc2e5a6d32c20`  
		Last Modified: Wed, 23 Jan 2019 04:41:07 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb3e0180a952867900302edbc23b97613013205953b9561997f803c7291ceee`  
		Last Modified: Wed, 23 Jan 2019 04:41:06 GMT  
		Size: 5.5 KB (5518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a441758da77371354a72d1a8e5d9c253ac0c86dfa1963b823d2deb9d9af5`  
		Last Modified: Wed, 23 Jan 2019 04:41:20 GMT  
		Size: 33.8 MB (33755012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c078b2c57b622d958b7d2fb8fdf633c6fd2bed4bd67292aec4a7915c0f4ece`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 638.1 KB (638123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9d71f9a55cbcd0d15130c74b9ce7237c105ef6b18f61595a8f1db5a2d9370b`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 114.2 KB (114159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e9fcfc6662c815cda78cae8bf34ba6c305111ffd1252b8de4f794e7ff4f63`  
		Last Modified: Wed, 23 Jan 2019 04:41:30 GMT  
		Size: 51.7 MB (51705818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e29ef4f0e2d98c8291e684ec6cc06ea1451b561d819180fc0d20f84ad9a27`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cbdc1ae3440420bdc588eebc6150a2c364a753cfaa209542b0ae8f024f532daf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199899577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9099c08b97460076ad1ab048e9e5a58cc475262b9cda5e00ae9c849f63fcd9aa`
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
# Tue, 29 Jan 2019 18:29:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:29:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:29:42 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:31:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:31:20 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:31:21 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:32:09 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:32:09 GMT
ENV ROS_DISTRO=ardent
# Tue, 29 Jan 2019 18:35:14 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:35:15 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:35:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:35:17 GMT
CMD ["bash"]
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
	-	`sha256:6da793a8ce877fe97dbf003a117aacf4f0675e7df604ef7c8a0599f04fa6d723`  
		Last Modified: Tue, 29 Jan 2019 19:24:14 GMT  
		Size: 77.1 MB (77122089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648e89e66da50f0a8dcc91ed33fe8df548dbaf274062e657a2bf3db536d96dee`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f4d2de33c43cb0721bc2e26b3e5f97a6c0c8e419f5eb9e2d0e4757d3b706`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39db57bc96f6ed72026f88e890e564431e073b2566a69a8b7d70a3666558768d`  
		Last Modified: Tue, 29 Jan 2019 19:23:57 GMT  
		Size: 32.3 MB (32346258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8869b6efa313c11cad2f8063974afd7739d4807e8079ef396a7951a8d57aa05f`  
		Last Modified: Tue, 29 Jan 2019 19:23:38 GMT  
		Size: 645.6 KB (645575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626abec6d100f7ab84cd0d4630eba566867daa3d1d488d1dc8cc625f54a0ca4`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 114.5 KB (114452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aff7fe80a883244ea66e73e21cd02d176104f363ed3bf6cc34b0af16ca89`  
		Last Modified: Tue, 29 Jan 2019 19:24:09 GMT  
		Size: 50.1 MB (50092721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fabfbd7288da2e98b321e1be0502e6baed0557ab871fed16e810eb09840b7f3`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-core-xenial`

```console
$ docker pull ros@sha256:871a269bfcef3bbed1e46174da0cf17ce580b4f78a9b2ce572dbcb2bd5be1797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:d8322325e3b6b444f6dd4c4578ba99747076abf731d6476e6be1bea95d10cc56
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258932701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84dd5cc09c56e90331211a96b91efaaee3d60487e774eb276bba1d2df3a47e59`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 04:01:04 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:01:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 04:01:06 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 23 Jan 2019 04:02:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:02:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 04:02:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 04:02:51 GMT
RUN pip3 install -U     argcomplete
# Wed, 23 Jan 2019 04:02:52 GMT
ENV ROS_DISTRO=ardent
# Wed, 23 Jan 2019 04:04:45 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:04:46 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 23 Jan 2019 04:04:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 04:04:47 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649b155d5d901aa1c494afe8c3e112aed171c5405a5e0cbe1ae734c6b895a7f4`  
		Last Modified: Wed, 23 Jan 2019 04:41:37 GMT  
		Size: 129.2 MB (129177810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec83f25e60a890c4c6c871d95abd7b39d793520c9c04bfee51bc2e5a6d32c20`  
		Last Modified: Wed, 23 Jan 2019 04:41:07 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fb3e0180a952867900302edbc23b97613013205953b9561997f803c7291ceee`  
		Last Modified: Wed, 23 Jan 2019 04:41:06 GMT  
		Size: 5.5 KB (5518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab72a441758da77371354a72d1a8e5d9c253ac0c86dfa1963b823d2deb9d9af5`  
		Last Modified: Wed, 23 Jan 2019 04:41:20 GMT  
		Size: 33.8 MB (33755012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c078b2c57b622d958b7d2fb8fdf633c6fd2bed4bd67292aec4a7915c0f4ece`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 638.1 KB (638123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9d71f9a55cbcd0d15130c74b9ce7237c105ef6b18f61595a8f1db5a2d9370b`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 114.2 KB (114159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e9fcfc6662c815cda78cae8bf34ba6c305111ffd1252b8de4f794e7ff4f63`  
		Last Modified: Wed, 23 Jan 2019 04:41:30 GMT  
		Size: 51.7 MB (51705818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066e29ef4f0e2d98c8291e684ec6cc06ea1451b561d819180fc0d20f84ad9a27`  
		Last Modified: Wed, 23 Jan 2019 04:41:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cbdc1ae3440420bdc588eebc6150a2c364a753cfaa209542b0ae8f024f532daf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199899577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9099c08b97460076ad1ab048e9e5a58cc475262b9cda5e00ae9c849f63fcd9aa`
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
# Tue, 29 Jan 2019 18:29:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:29:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:29:42 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:31:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:31:20 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:31:21 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:32:03 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:32:09 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:32:09 GMT
ENV ROS_DISTRO=ardent
# Tue, 29 Jan 2019 18:35:14 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:35:15 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:35:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:35:17 GMT
CMD ["bash"]
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
	-	`sha256:6da793a8ce877fe97dbf003a117aacf4f0675e7df604ef7c8a0599f04fa6d723`  
		Last Modified: Tue, 29 Jan 2019 19:24:14 GMT  
		Size: 77.1 MB (77122089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648e89e66da50f0a8dcc91ed33fe8df548dbaf274062e657a2bf3db536d96dee`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6333f4d2de33c43cb0721bc2e26b3e5f97a6c0c8e419f5eb9e2d0e4757d3b706`  
		Last Modified: Tue, 29 Jan 2019 19:23:40 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39db57bc96f6ed72026f88e890e564431e073b2566a69a8b7d70a3666558768d`  
		Last Modified: Tue, 29 Jan 2019 19:23:57 GMT  
		Size: 32.3 MB (32346258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8869b6efa313c11cad2f8063974afd7739d4807e8079ef396a7951a8d57aa05f`  
		Last Modified: Tue, 29 Jan 2019 19:23:38 GMT  
		Size: 645.6 KB (645575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626abec6d100f7ab84cd0d4630eba566867daa3d1d488d1dc8cc625f54a0ca4`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 114.5 KB (114452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c6aff7fe80a883244ea66e73e21cd02d176104f363ed3bf6cc34b0af16ca89`  
		Last Modified: Tue, 29 Jan 2019 19:24:09 GMT  
		Size: 50.1 MB (50092721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fabfbd7288da2e98b321e1be0502e6baed0557ab871fed16e810eb09840b7f3`  
		Last Modified: Tue, 29 Jan 2019 19:23:37 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy`

```console
$ docker pull ros@sha256:ffaa381c92767526dec0a134a1834ccfbb509497606f70c70b7a14f182b37adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:9a49f4be10bc634ae9de28af9b00eb8e58bb2adc959c7b1d6149332f20e8f3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274510538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649b6158358b6647f10c69f3bfca36d775966d64d389fc9d71bbfa68f0c99180`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:43:41 GMT
ENV ROS_DISTRO=bouncy
# Wed, 06 Feb 2019 07:44:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:44:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:44:36 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:44:50 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325597ceeebaec8dbba0ca0cecdc39deea0d0c6b29b57bdc58970cb11a5b2c8`  
		Last Modified: Wed, 06 Feb 2019 07:58:33 GMT  
		Size: 47.6 MB (47648249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9419c23358f575634da987cad1039056de98d28b1497fc98b92bfb845d85e1c5`  
		Last Modified: Wed, 06 Feb 2019 07:58:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e416eaf90fd8e6d3a95d628f66d24c43037261db29415973d9038b961aea6`  
		Last Modified: Wed, 06 Feb 2019 07:58:57 GMT  
		Size: 3.1 MB (3134827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6db33a40fc4e5e83617d69187bef80b90a7c608d5ec97f5a027d9f87b24d859a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204717940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2bae1637bc29da895e4468282f48370b650ae7d5f85f3cb7d9d764269657be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:45:11 GMT
ENV ROS_DISTRO=bouncy
# Tue, 29 Jan 2019 18:48:23 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:48:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:48:29 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:49:04 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fd0f11d86a5c7e27f2995e1b977f943f3b823d3de0043e8b13147e2ec83ed8`  
		Last Modified: Tue, 29 Jan 2019 19:25:40 GMT  
		Size: 37.6 MB (37644874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb48c118a8c10992b18dfe16594409d56159e1c2264e0e0880ed422bf2eeb32`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc63fd9477975bd8403f126c7060cff571ad8e00ad7758df854ab684aa859f80`  
		Last Modified: Tue, 29 Jan 2019 19:26:11 GMT  
		Size: 2.9 MB (2891875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:ffaa381c92767526dec0a134a1834ccfbb509497606f70c70b7a14f182b37adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:9a49f4be10bc634ae9de28af9b00eb8e58bb2adc959c7b1d6149332f20e8f3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274510538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649b6158358b6647f10c69f3bfca36d775966d64d389fc9d71bbfa68f0c99180`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:43:41 GMT
ENV ROS_DISTRO=bouncy
# Wed, 06 Feb 2019 07:44:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:44:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:44:36 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:44:50 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325597ceeebaec8dbba0ca0cecdc39deea0d0c6b29b57bdc58970cb11a5b2c8`  
		Last Modified: Wed, 06 Feb 2019 07:58:33 GMT  
		Size: 47.6 MB (47648249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9419c23358f575634da987cad1039056de98d28b1497fc98b92bfb845d85e1c5`  
		Last Modified: Wed, 06 Feb 2019 07:58:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e416eaf90fd8e6d3a95d628f66d24c43037261db29415973d9038b961aea6`  
		Last Modified: Wed, 06 Feb 2019 07:58:57 GMT  
		Size: 3.1 MB (3134827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6db33a40fc4e5e83617d69187bef80b90a7c608d5ec97f5a027d9f87b24d859a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204717940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2bae1637bc29da895e4468282f48370b650ae7d5f85f3cb7d9d764269657be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:45:11 GMT
ENV ROS_DISTRO=bouncy
# Tue, 29 Jan 2019 18:48:23 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:48:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:48:29 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:49:04 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fd0f11d86a5c7e27f2995e1b977f943f3b823d3de0043e8b13147e2ec83ed8`  
		Last Modified: Tue, 29 Jan 2019 19:25:40 GMT  
		Size: 37.6 MB (37644874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb48c118a8c10992b18dfe16594409d56159e1c2264e0e0880ed422bf2eeb32`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc63fd9477975bd8403f126c7060cff571ad8e00ad7758df854ab684aa859f80`  
		Last Modified: Tue, 29 Jan 2019 19:26:11 GMT  
		Size: 2.9 MB (2891875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:ffaa381c92767526dec0a134a1834ccfbb509497606f70c70b7a14f182b37adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:9a49f4be10bc634ae9de28af9b00eb8e58bb2adc959c7b1d6149332f20e8f3a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.5 MB (274510538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649b6158358b6647f10c69f3bfca36d775966d64d389fc9d71bbfa68f0c99180`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:43:41 GMT
ENV ROS_DISTRO=bouncy
# Wed, 06 Feb 2019 07:44:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:44:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:44:36 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:44:50 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325597ceeebaec8dbba0ca0cecdc39deea0d0c6b29b57bdc58970cb11a5b2c8`  
		Last Modified: Wed, 06 Feb 2019 07:58:33 GMT  
		Size: 47.6 MB (47648249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9419c23358f575634da987cad1039056de98d28b1497fc98b92bfb845d85e1c5`  
		Last Modified: Wed, 06 Feb 2019 07:58:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e8e416eaf90fd8e6d3a95d628f66d24c43037261db29415973d9038b961aea6`  
		Last Modified: Wed, 06 Feb 2019 07:58:57 GMT  
		Size: 3.1 MB (3134827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6db33a40fc4e5e83617d69187bef80b90a7c608d5ec97f5a027d9f87b24d859a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.7 MB (204717940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2bae1637bc29da895e4468282f48370b650ae7d5f85f3cb7d9d764269657be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:45:11 GMT
ENV ROS_DISTRO=bouncy
# Tue, 29 Jan 2019 18:48:23 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:48:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:48:29 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:49:04 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fd0f11d86a5c7e27f2995e1b977f943f3b823d3de0043e8b13147e2ec83ed8`  
		Last Modified: Tue, 29 Jan 2019 19:25:40 GMT  
		Size: 37.6 MB (37644874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb48c118a8c10992b18dfe16594409d56159e1c2264e0e0880ed422bf2eeb32`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc63fd9477975bd8403f126c7060cff571ad8e00ad7758df854ab684aa859f80`  
		Last Modified: Tue, 29 Jan 2019 19:26:11 GMT  
		Size: 2.9 MB (2891875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:f5c59df9670f880347c79d9a72b8f152b1363a7c9db31b7e1802e0f4318f8930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3f70cb3ffbcf3e8b8a7c7c7196bbc2158248ca3149e8eecb87f6c9fa56040305
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271375711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0979c972692b2e739455f6e16fe14f8f505e6f65c7e0d56ed435523f6780da7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:43:41 GMT
ENV ROS_DISTRO=bouncy
# Wed, 06 Feb 2019 07:44:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:44:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:44:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325597ceeebaec8dbba0ca0cecdc39deea0d0c6b29b57bdc58970cb11a5b2c8`  
		Last Modified: Wed, 06 Feb 2019 07:58:33 GMT  
		Size: 47.6 MB (47648249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9419c23358f575634da987cad1039056de98d28b1497fc98b92bfb845d85e1c5`  
		Last Modified: Wed, 06 Feb 2019 07:58:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:24ad4b0f067f3452f1769e23a31d9c8f373991de6811aec674e3acf9d594c2a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201826065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1b79dc8653d7b795472189eba3b1524571a363eee8df9ef9cd0a411ac3d086`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:45:11 GMT
ENV ROS_DISTRO=bouncy
# Tue, 29 Jan 2019 18:48:23 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:48:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:48:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fd0f11d86a5c7e27f2995e1b977f943f3b823d3de0043e8b13147e2ec83ed8`  
		Last Modified: Tue, 29 Jan 2019 19:25:40 GMT  
		Size: 37.6 MB (37644874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb48c118a8c10992b18dfe16594409d56159e1c2264e0e0880ed422bf2eeb32`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:f5c59df9670f880347c79d9a72b8f152b1363a7c9db31b7e1802e0f4318f8930
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:3f70cb3ffbcf3e8b8a7c7c7196bbc2158248ca3149e8eecb87f6c9fa56040305
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271375711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0979c972692b2e739455f6e16fe14f8f505e6f65c7e0d56ed435523f6780da7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:43:41 GMT
ENV ROS_DISTRO=bouncy
# Wed, 06 Feb 2019 07:44:35 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:44:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:44:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:44:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c325597ceeebaec8dbba0ca0cecdc39deea0d0c6b29b57bdc58970cb11a5b2c8`  
		Last Modified: Wed, 06 Feb 2019 07:58:33 GMT  
		Size: 47.6 MB (47648249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9419c23358f575634da987cad1039056de98d28b1497fc98b92bfb845d85e1c5`  
		Last Modified: Wed, 06 Feb 2019 07:58:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:24ad4b0f067f3452f1769e23a31d9c8f373991de6811aec674e3acf9d594c2a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.8 MB (201826065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e1b79dc8653d7b795472189eba3b1524571a363eee8df9ef9cd0a411ac3d086`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:45:11 GMT
ENV ROS_DISTRO=bouncy
# Tue, 29 Jan 2019 18:48:23 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:48:27 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:48:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:48:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fd0f11d86a5c7e27f2995e1b977f943f3b823d3de0043e8b13147e2ec83ed8`  
		Last Modified: Tue, 29 Jan 2019 19:25:40 GMT  
		Size: 37.6 MB (37644874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb48c118a8c10992b18dfe16594409d56159e1c2264e0e0880ed422bf2eeb32`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:bb7c24741c948233ca2881ab5c4cade4006bc6d5c2a6ea598a5019a7ea9fd00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:ce08caa9e30709f415492cacb83cfd08e38ac0961ca5162230791958dd49c49f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276987312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5052a20875cec0c6309cf7d5a1a84ccdc4744085ed55a51e601817879d8ebd0f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:44:53 GMT
ENV ROS_DISTRO=crystal
# Wed, 06 Feb 2019 07:45:29 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:45:29 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:45:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:45:29 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:45:45 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123a12123b14f4bff8db4a52ae2527234a3a5bdc1a95f0a6f4904026462f805d`  
		Last Modified: Wed, 06 Feb 2019 07:59:28 GMT  
		Size: 50.1 MB (50084207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deabfe46149310484f30db78a44d974d88621323f3fa86b5a074ac9c18ca71f2`  
		Last Modified: Wed, 06 Feb 2019 07:59:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b656b7a3ee3ee11d4da8f7c4163f22c5df66e4c435f3787dab531889cf23d44`  
		Last Modified: Wed, 06 Feb 2019 07:59:34 GMT  
		Size: 3.2 MB (3175643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6b73da4822258bd3ef5072244125724fdf9fc4b34df560febf24ff7472b2dd98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207129207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322996417f0893d2132d39cc03b76a63fd0f81b0467de77bdf8d92187e4551e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:49:09 GMT
ENV ROS_DISTRO=crystal
# Tue, 29 Jan 2019 18:53:12 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:53:14 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:53:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:53:15 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:53:53 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04e3069987838d0e2afd428f69dd7db458c9f35352b6f09fbb4ecfb5378f6e`  
		Last Modified: Tue, 29 Jan 2019 19:26:46 GMT  
		Size: 40.0 MB (40010513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc14ca2bfb81ca9c73a0fc8d4c74fa348f3191ddc74c949136703e9ed3931dc`  
		Last Modified: Tue, 29 Jan 2019 19:26:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf64ab635839be10b980a1ee3b7fb17aa68bcdf64560896a8fb7c3e61804f1fb`  
		Last Modified: Tue, 29 Jan 2019 19:27:00 GMT  
		Size: 2.9 MB (2937503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:bb7c24741c948233ca2881ab5c4cade4006bc6d5c2a6ea598a5019a7ea9fd00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:ce08caa9e30709f415492cacb83cfd08e38ac0961ca5162230791958dd49c49f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276987312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5052a20875cec0c6309cf7d5a1a84ccdc4744085ed55a51e601817879d8ebd0f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:44:53 GMT
ENV ROS_DISTRO=crystal
# Wed, 06 Feb 2019 07:45:29 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:45:29 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:45:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:45:29 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:45:45 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123a12123b14f4bff8db4a52ae2527234a3a5bdc1a95f0a6f4904026462f805d`  
		Last Modified: Wed, 06 Feb 2019 07:59:28 GMT  
		Size: 50.1 MB (50084207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deabfe46149310484f30db78a44d974d88621323f3fa86b5a074ac9c18ca71f2`  
		Last Modified: Wed, 06 Feb 2019 07:59:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b656b7a3ee3ee11d4da8f7c4163f22c5df66e4c435f3787dab531889cf23d44`  
		Last Modified: Wed, 06 Feb 2019 07:59:34 GMT  
		Size: 3.2 MB (3175643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6b73da4822258bd3ef5072244125724fdf9fc4b34df560febf24ff7472b2dd98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207129207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322996417f0893d2132d39cc03b76a63fd0f81b0467de77bdf8d92187e4551e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:49:09 GMT
ENV ROS_DISTRO=crystal
# Tue, 29 Jan 2019 18:53:12 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:53:14 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:53:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:53:15 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:53:53 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04e3069987838d0e2afd428f69dd7db458c9f35352b6f09fbb4ecfb5378f6e`  
		Last Modified: Tue, 29 Jan 2019 19:26:46 GMT  
		Size: 40.0 MB (40010513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc14ca2bfb81ca9c73a0fc8d4c74fa348f3191ddc74c949136703e9ed3931dc`  
		Last Modified: Tue, 29 Jan 2019 19:26:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf64ab635839be10b980a1ee3b7fb17aa68bcdf64560896a8fb7c3e61804f1fb`  
		Last Modified: Tue, 29 Jan 2019 19:27:00 GMT  
		Size: 2.9 MB (2937503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:bb7c24741c948233ca2881ab5c4cade4006bc6d5c2a6ea598a5019a7ea9fd00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:ce08caa9e30709f415492cacb83cfd08e38ac0961ca5162230791958dd49c49f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276987312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5052a20875cec0c6309cf7d5a1a84ccdc4744085ed55a51e601817879d8ebd0f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:44:53 GMT
ENV ROS_DISTRO=crystal
# Wed, 06 Feb 2019 07:45:29 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:45:29 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:45:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:45:29 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:45:45 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123a12123b14f4bff8db4a52ae2527234a3a5bdc1a95f0a6f4904026462f805d`  
		Last Modified: Wed, 06 Feb 2019 07:59:28 GMT  
		Size: 50.1 MB (50084207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deabfe46149310484f30db78a44d974d88621323f3fa86b5a074ac9c18ca71f2`  
		Last Modified: Wed, 06 Feb 2019 07:59:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b656b7a3ee3ee11d4da8f7c4163f22c5df66e4c435f3787dab531889cf23d44`  
		Last Modified: Wed, 06 Feb 2019 07:59:34 GMT  
		Size: 3.2 MB (3175643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6b73da4822258bd3ef5072244125724fdf9fc4b34df560febf24ff7472b2dd98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207129207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:322996417f0893d2132d39cc03b76a63fd0f81b0467de77bdf8d92187e4551e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:49:09 GMT
ENV ROS_DISTRO=crystal
# Tue, 29 Jan 2019 18:53:12 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:53:14 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:53:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:53:15 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:53:53 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04e3069987838d0e2afd428f69dd7db458c9f35352b6f09fbb4ecfb5378f6e`  
		Last Modified: Tue, 29 Jan 2019 19:26:46 GMT  
		Size: 40.0 MB (40010513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc14ca2bfb81ca9c73a0fc8d4c74fa348f3191ddc74c949136703e9ed3931dc`  
		Last Modified: Tue, 29 Jan 2019 19:26:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf64ab635839be10b980a1ee3b7fb17aa68bcdf64560896a8fb7c3e61804f1fb`  
		Last Modified: Tue, 29 Jan 2019 19:27:00 GMT  
		Size: 2.9 MB (2937503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:58871f3fd0fccf839c179bced2c29d1b4957578c25f5f5186a5ac8e3c2141b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:cdad078dfe25d0b78e10e814bb2493cb2e0c683b1b92a5023439f3308af9971b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273811669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f03522a7349451589fc42ccd66b8589421cb6d13108cad3be61dcc0591959617`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:44:53 GMT
ENV ROS_DISTRO=crystal
# Wed, 06 Feb 2019 07:45:29 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:45:29 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:45:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:45:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123a12123b14f4bff8db4a52ae2527234a3a5bdc1a95f0a6f4904026462f805d`  
		Last Modified: Wed, 06 Feb 2019 07:59:28 GMT  
		Size: 50.1 MB (50084207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deabfe46149310484f30db78a44d974d88621323f3fa86b5a074ac9c18ca71f2`  
		Last Modified: Wed, 06 Feb 2019 07:59:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aae6c8613d0a5d0220bea7375e996beef27d6cf55f0072d9221e10aa37c2fb3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204191704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e278aa9dac513ef621e7d52e045dca9fe2aa63c6c7c10ad9ad909d55892fc50`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:49:09 GMT
ENV ROS_DISTRO=crystal
# Tue, 29 Jan 2019 18:53:12 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:53:14 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:53:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:53:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04e3069987838d0e2afd428f69dd7db458c9f35352b6f09fbb4ecfb5378f6e`  
		Last Modified: Tue, 29 Jan 2019 19:26:46 GMT  
		Size: 40.0 MB (40010513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc14ca2bfb81ca9c73a0fc8d4c74fa348f3191ddc74c949136703e9ed3931dc`  
		Last Modified: Tue, 29 Jan 2019 19:26:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:58871f3fd0fccf839c179bced2c29d1b4957578c25f5f5186a5ac8e3c2141b6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:cdad078dfe25d0b78e10e814bb2493cb2e0c683b1b92a5023439f3308af9971b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273811669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f03522a7349451589fc42ccd66b8589421cb6d13108cad3be61dcc0591959617`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:42:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:42:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Wed, 06 Feb 2019 07:43:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:43:25 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:43:38 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:43:41 GMT
RUN pip3 install -U     argcomplete
# Wed, 06 Feb 2019 07:44:53 GMT
ENV ROS_DISTRO=crystal
# Wed, 06 Feb 2019 07:45:29 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:45:29 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Wed, 06 Feb 2019 07:45:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:45:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814cd5ce1fb7eca3e49b0aeb335eeb7be42a4986560fd6709144ddc7308c4f29`  
		Last Modified: Wed, 06 Feb 2019 07:58:47 GMT  
		Size: 151.6 MB (151587562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18fd691d794a47ebdef9e5d1f1cec7c41687c6f2aaef691492619c033561be4`  
		Last Modified: Wed, 06 Feb 2019 07:58:10 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07de2d12762ed798b958ae92feeea75bbb814525c2020bb71b377967960d8f5`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0c81e757931e7f6c192166d4faa68b7dc0473c4e3ca319499124e467fa3c`  
		Last Modified: Wed, 06 Feb 2019 07:58:23 GMT  
		Size: 38.2 MB (38228131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c8e83b13d39c87f7bfd3676a4a9a3ff5b4fb71d61698ba14c10c8ac1f9f7f14`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 598.1 KB (598065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f8a86ae1c6daa2a4e2a529640da77e58ff6a1dc7ff50ab588978407888e1e9`  
		Last Modified: Wed, 06 Feb 2019 07:58:09 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123a12123b14f4bff8db4a52ae2527234a3a5bdc1a95f0a6f4904026462f805d`  
		Last Modified: Wed, 06 Feb 2019 07:59:28 GMT  
		Size: 50.1 MB (50084207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deabfe46149310484f30db78a44d974d88621323f3fa86b5a074ac9c18ca71f2`  
		Last Modified: Wed, 06 Feb 2019 07:59:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aae6c8613d0a5d0220bea7375e996beef27d6cf55f0072d9221e10aa37c2fb3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.2 MB (204191704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e278aa9dac513ef621e7d52e045dca9fe2aa63c6c7c10ad9ad909d55892fc50`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:42:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 18:42:25 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 29 Jan 2019 18:44:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:44:24 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 18:44:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 18:45:04 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 18:45:10 GMT
RUN pip3 install -U     argcomplete
# Tue, 29 Jan 2019 18:49:09 GMT
ENV ROS_DISTRO=crystal
# Tue, 29 Jan 2019 18:53:12 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:53:14 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 29 Jan 2019 18:53:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:53:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230d3b98986ea0e29994ad057878931aaaf71e7c0f8095943ffecca3165f8ef`  
		Last Modified: Tue, 29 Jan 2019 19:26:00 GMT  
		Size: 97.0 MB (97011056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b938d215f57e876dffb83834f0ea5e03edd115aba4c5c4b3734d11e67fe75e2`  
		Last Modified: Tue, 29 Jan 2019 19:25:17 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd932221f33abad0f156458fb84e4c8d75633a3d9838cbee791828a8cc358aa1`  
		Last Modified: Tue, 29 Jan 2019 19:25:16 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156c8a99a4fd0d3985e9ade0e42b2aa36e441698e6b927c0e0c66c398b3a76a7`  
		Last Modified: Tue, 29 Jan 2019 19:25:34 GMT  
		Size: 36.6 MB (36604515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59a5d8723a3e9ac782a5474d21fbb462c8b7934b9cf502a2118dd43021e8d867`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 596.9 KB (596917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b54c8bb2163fcb72016ae6ae7a37d3fa7242cdc63b437453c135d04f6142c7`  
		Last Modified: Tue, 29 Jan 2019 19:25:14 GMT  
		Size: 93.9 KB (93857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e04e3069987838d0e2afd428f69dd7db458c9f35352b6f09fbb4ecfb5378f6e`  
		Last Modified: Tue, 29 Jan 2019 19:26:46 GMT  
		Size: 40.0 MB (40010513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc14ca2bfb81ca9c73a0fc8d4c74fa348f3191ddc74c949136703e9ed3931dc`  
		Last Modified: Tue, 29 Jan 2019 19:26:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:1695b907637d6b4e4829f92dcbbcb1d5412a6aab15346c20e81d06ead4c1e1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:9adde23a6a1101ad3cbd742bc20f551f7b67cdcdbe7326dd168718c23f9ac8e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313569752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550c5411330aec2e2023dde736af17f5130c857534c17eebc2bd0548fbbb5e71`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:23:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc36c2458476716916a7fa03858be921a805e36cfbb59a351a720bc2df412cd`  
		Last Modified: Wed, 23 Jan 2019 04:21:52 GMT  
		Size: 46.8 MB (46776431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:9c5fe59e982408f41e329d9821cf37fb5fe2053da1d2f21a526c0a71cd2736da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284583815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a9864a9920d73b3ea55ffb97292cea57b19684d3ad51090b050bf681baa28d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:b2661254710757438d25f2ab80b2d6e2de1a12cfe304ca24180bfa4098d38189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:3d3cdba3052037dd06cab4c1eebbf4f9651a21ade87e780ec190be155c0bd318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.8 MB (549827216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944011e2a00731b6bfabfced2ee189e500f4991264df33a9572dca7ed740a550`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:23:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc36c2458476716916a7fa03858be921a805e36cfbb59a351a720bc2df412cd`  
		Last Modified: Wed, 23 Jan 2019 04:21:52 GMT  
		Size: 46.8 MB (46776431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb3921a013eff33c1f4c14b9a32ab75dede0ee6d6f5656bbfc5f07fa92e53b6`  
		Last Modified: Wed, 23 Jan 2019 04:22:57 GMT  
		Size: 236.3 MB (236257464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:84a948bee479eb280efdc2f68d9864a6bf1f51d26b0c4cc94c1360a8a549c038
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.4 MB (496420126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17373deb47f31e4401f58e35e7f3bef1aaa0453ad3851fe4ba2784d7d39bf55a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:28:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe269711f25b55ef76c9c280161c8e3ca6a8b76c32a5275f707bc0e7c3fcb2a0`  
		Last Modified: Wed, 23 Jan 2019 14:07:48 GMT  
		Size: 211.8 MB (211836311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:b2661254710757438d25f2ab80b2d6e2de1a12cfe304ca24180bfa4098d38189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:3d3cdba3052037dd06cab4c1eebbf4f9651a21ade87e780ec190be155c0bd318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.8 MB (549827216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944011e2a00731b6bfabfced2ee189e500f4991264df33a9572dca7ed740a550`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:23:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc36c2458476716916a7fa03858be921a805e36cfbb59a351a720bc2df412cd`  
		Last Modified: Wed, 23 Jan 2019 04:21:52 GMT  
		Size: 46.8 MB (46776431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb3921a013eff33c1f4c14b9a32ab75dede0ee6d6f5656bbfc5f07fa92e53b6`  
		Last Modified: Wed, 23 Jan 2019 04:22:57 GMT  
		Size: 236.3 MB (236257464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:84a948bee479eb280efdc2f68d9864a6bf1f51d26b0c4cc94c1360a8a549c038
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.4 MB (496420126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17373deb47f31e4401f58e35e7f3bef1aaa0453ad3851fe4ba2784d7d39bf55a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:28:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe269711f25b55ef76c9c280161c8e3ca6a8b76c32a5275f707bc0e7c3fcb2a0`  
		Last Modified: Wed, 23 Jan 2019 14:07:48 GMT  
		Size: 211.8 MB (211836311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:92faec1556f1f03b337bc6172109f40924074126594a8d23e610c460de51a361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:b57097ab8acae0f579a28d80e8e69936d4310b02f73ca5d5a8d816e3bbca810e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332600804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b3367fcf63a8fb15f19a6df613b0acd2426987209c800a989256d51b718808`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:23:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:24:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc36c2458476716916a7fa03858be921a805e36cfbb59a351a720bc2df412cd`  
		Last Modified: Wed, 23 Jan 2019 04:21:52 GMT  
		Size: 46.8 MB (46776431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468be9836c2a963c7a0e4baba60883508132e10982a38ab099d1fc9a90c1bd0f`  
		Last Modified: Wed, 23 Jan 2019 04:22:03 GMT  
		Size: 19.0 MB (19031052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:ee2659d007af8a3b135d7076913eb89871ce042bfbd295d683e73067966081f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302271761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8a365d4666a5ee9e38dcaa6793a7bb348d00c425c89c33c149088a4d1f60f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:24:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6c2c09489bb7195a101759d35126bf152c7e374f42ba1844422396c643ce6`  
		Last Modified: Wed, 23 Jan 2019 14:06:35 GMT  
		Size: 17.7 MB (17687946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:92faec1556f1f03b337bc6172109f40924074126594a8d23e610c460de51a361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:b57097ab8acae0f579a28d80e8e69936d4310b02f73ca5d5a8d816e3bbca810e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332600804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b3367fcf63a8fb15f19a6df613b0acd2426987209c800a989256d51b718808`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:23:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:24:44 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc36c2458476716916a7fa03858be921a805e36cfbb59a351a720bc2df412cd`  
		Last Modified: Wed, 23 Jan 2019 04:21:52 GMT  
		Size: 46.8 MB (46776431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468be9836c2a963c7a0e4baba60883508132e10982a38ab099d1fc9a90c1bd0f`  
		Last Modified: Wed, 23 Jan 2019 04:22:03 GMT  
		Size: 19.0 MB (19031052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:ee2659d007af8a3b135d7076913eb89871ce042bfbd295d683e73067966081f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302271761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8a365d4666a5ee9e38dcaa6793a7bb348d00c425c89c33c149088a4d1f60f6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:24:55 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a6c2c09489bb7195a101759d35126bf152c7e374f42ba1844422396c643ce6`  
		Last Modified: Wed, 23 Jan 2019 14:06:35 GMT  
		Size: 17.7 MB (17687946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:1695b907637d6b4e4829f92dcbbcb1d5412a6aab15346c20e81d06ead4c1e1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:9adde23a6a1101ad3cbd742bc20f551f7b67cdcdbe7326dd168718c23f9ac8e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313569752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550c5411330aec2e2023dde736af17f5130c857534c17eebc2bd0548fbbb5e71`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:23:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc36c2458476716916a7fa03858be921a805e36cfbb59a351a720bc2df412cd`  
		Last Modified: Wed, 23 Jan 2019 04:21:52 GMT  
		Size: 46.8 MB (46776431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:9c5fe59e982408f41e329d9821cf37fb5fe2053da1d2f21a526c0a71cd2736da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284583815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a9864a9920d73b3ea55ffb97292cea57b19684d3ad51090b050bf681baa28d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:1695b907637d6b4e4829f92dcbbcb1d5412a6aab15346c20e81d06ead4c1e1e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:9adde23a6a1101ad3cbd742bc20f551f7b67cdcdbe7326dd168718c23f9ac8e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313569752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550c5411330aec2e2023dde736af17f5130c857534c17eebc2bd0548fbbb5e71`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:23:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acc36c2458476716916a7fa03858be921a805e36cfbb59a351a720bc2df412cd`  
		Last Modified: Wed, 23 Jan 2019 04:21:52 GMT  
		Size: 46.8 MB (46776431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:9c5fe59e982408f41e329d9821cf37fb5fe2053da1d2f21a526c0a71cd2736da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284583815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a9864a9920d73b3ea55ffb97292cea57b19684d3ad51090b050bf681baa28d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:1a9938ff5b7b90bd31c90864a1c9b8dc4e22e798104fa4d8615966671ccd64af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:6129a0a4baecec57972b103f4c863d3b6c98356eec51a802009fafcdb92c9c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266793321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031305de4c6c89a42ed423b89e7bcfced9e27c1ed96a93639d2ca1efff01cdc6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:2b4dd8dc4b3add919d21bf3ced1ae28410f31dd02b41062da235abafb0f13833
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244194866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0cb4c4a86e55be74ec10b055de1bf1950eb87fcd43e58451a6efd89c0f6b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:1a9938ff5b7b90bd31c90864a1c9b8dc4e22e798104fa4d8615966671ccd64af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:6129a0a4baecec57972b103f4c863d3b6c98356eec51a802009fafcdb92c9c53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266793321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:031305de4c6c89a42ed423b89e7bcfced9e27c1ed96a93639d2ca1efff01cdc6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 02:16:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:16:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:16:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:17:41 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:17:41 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:17:51 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:17:51 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 02:21:47 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:21:48 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:21:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:21:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba8d9e907d810d06373ce296b1568df91800feb004bd2a13d5e2f00df5c8100`  
		Last Modified: Wed, 23 Jan 2019 04:21:06 GMT  
		Size: 18.0 MB (18038737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4c5942e82e74f9f948331fa8a2003cc7ca9b6f141ffb1490e3c00e66fd70d2`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b245a96f4b91510eab7a1057a8c028eec003ac271017fa8c637325fe576ccf6`  
		Last Modified: Wed, 23 Jan 2019 04:21:00 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77afdcb6013177247bb3a6de4f7fe2e83790f567958b994f74a7ded683b88b7`  
		Last Modified: Wed, 23 Jan 2019 04:21:08 GMT  
		Size: 31.0 MB (30952548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:957f34f7d9cf3576be785ae804a9002e672c60ea35b6abc39d25ee27f213fb75`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b23135b1c190c7030a2675c7924e9ba09e57db16c0bc0a63d625b6159013376`  
		Last Modified: Wed, 23 Jan 2019 04:21:36 GMT  
		Size: 149.7 MB (149705294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d466c3a877edb6ffee9b693e436226bff5cd193753b902be05ee290cfd6b607`  
		Last Modified: Wed, 23 Jan 2019 04:20:59 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:2b4dd8dc4b3add919d21bf3ced1ae28410f31dd02b41062da235abafb0f13833
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244194866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad0cb4c4a86e55be74ec10b055de1bf1950eb87fcd43e58451a6efd89c0f6b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:d4de0e3a32394fa4d16c1525f5e0ad869c8b154747a858c782e4d720658acd63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:a1dcf6659cef92370a2e15c8b1c86f00cafb4fa40153d4571428cc84f1623f8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384590505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75f5a9d560b0d804d78cc94f847119a02b8eeea0b3942ee54c8ec1a4d5e48a8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:45:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a991d1789724ed10e92c5d5ad251913c52a5791b64c6dc8a55c309e241a9d92`  
		Last Modified: Wed, 23 Jan 2019 04:24:25 GMT  
		Size: 85.7 MB (85692451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:b3bb94c248f3bacef87ce7ca7ae50af684f19d92e5c35f12e7bcaa8f9e390cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (336040830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f2b67a98b306117051bd36f8883e4121cf1e1641f8604c7fce89403b34ad99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19166518f9c7675020ff683e734d778508856fa8d83b6314ea807b02f120e163
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349869855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549f7368fa82894408d374109ff2e5625f1d7ab634bf70340cfc2f7c60798bfb`
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

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:32f120cab0c86974eb32e1226362400c9484957c53a1e4fa1781f313e9c2818e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:ebc42e654c2165d6a8393ec3927886424a72a7bad77f43d5017d4064f453d2ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.3 MB (725284758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a7eff7a452d11ca959ff11aec5cc0b5a5c36bb52ad227d81093771b0fb13ee`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:45:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:03:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a991d1789724ed10e92c5d5ad251913c52a5791b64c6dc8a55c309e241a9d92`  
		Last Modified: Wed, 23 Jan 2019 04:24:25 GMT  
		Size: 85.7 MB (85692451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aef5bcf0011e2c82f4e5b1e544f79e3154433864bfbd477b8542e0ba18f1fc5`  
		Last Modified: Wed, 23 Jan 2019 04:26:13 GMT  
		Size: 340.7 MB (340694253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:179e251b0e849335c52827ec3a6055bf0facb158be30b3f102a4bfc87d643901
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.8 MB (616782246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af112e8abe3a99f085554dc2ba30ad434e94e83423948f6865e03756b2330c5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:41:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14359b3769201aca84e733346c5d87ae07042da25847bdea2f366c9b744a51ea`  
		Last Modified: Wed, 23 Jan 2019 14:11:42 GMT  
		Size: 280.7 MB (280741416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f12ddaa3080d23c00fff065d0abb68f8faf215ffafa1eb60f905c889d36fdcf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641109682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1906e78f01302214a2f8b6d4d7adf8ad15fadf648f4be50fde866924b727f97`
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
# Tue, 29 Jan 2019 16:20:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:803780a92105baa3ce667ae4afd56ae5d8c5aebc877dd0f9b6ad183cd097a0c8`  
		Last Modified: Tue, 29 Jan 2019 19:01:10 GMT  
		Size: 291.2 MB (291239827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:32f120cab0c86974eb32e1226362400c9484957c53a1e4fa1781f313e9c2818e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:ebc42e654c2165d6a8393ec3927886424a72a7bad77f43d5017d4064f453d2ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **725.3 MB (725284758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a7eff7a452d11ca959ff11aec5cc0b5a5c36bb52ad227d81093771b0fb13ee`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:45:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:03:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a991d1789724ed10e92c5d5ad251913c52a5791b64c6dc8a55c309e241a9d92`  
		Last Modified: Wed, 23 Jan 2019 04:24:25 GMT  
		Size: 85.7 MB (85692451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aef5bcf0011e2c82f4e5b1e544f79e3154433864bfbd477b8542e0ba18f1fc5`  
		Last Modified: Wed, 23 Jan 2019 04:26:13 GMT  
		Size: 340.7 MB (340694253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:179e251b0e849335c52827ec3a6055bf0facb158be30b3f102a4bfc87d643901
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.8 MB (616782246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af112e8abe3a99f085554dc2ba30ad434e94e83423948f6865e03756b2330c5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:41:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14359b3769201aca84e733346c5d87ae07042da25847bdea2f366c9b744a51ea`  
		Last Modified: Wed, 23 Jan 2019 14:11:42 GMT  
		Size: 280.7 MB (280741416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f12ddaa3080d23c00fff065d0abb68f8faf215ffafa1eb60f905c889d36fdcf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641109682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1906e78f01302214a2f8b6d4d7adf8ad15fadf648f4be50fde866924b727f97`
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
# Tue, 29 Jan 2019 16:20:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:803780a92105baa3ce667ae4afd56ae5d8c5aebc877dd0f9b6ad183cd097a0c8`  
		Last Modified: Tue, 29 Jan 2019 19:01:10 GMT  
		Size: 291.2 MB (291239827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:f262d760627f37823238fd4e81cb5abba97b5f62d0f37e5422415aaa9efb6d1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:b0f63bbd92b746cf0a8ca407798c1802dd500dd6eb491ee78328df91432a3337
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488230134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c57152be3d2ec0bc297c36a41635f3c5f75434abc61c30f72d4a00586527620`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:45:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:52:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a991d1789724ed10e92c5d5ad251913c52a5791b64c6dc8a55c309e241a9d92`  
		Last Modified: Wed, 23 Jan 2019 04:24:25 GMT  
		Size: 85.7 MB (85692451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb1a162093a16399674d40ffdb4b39b368ac4176b72cec6259a70dfebfca335`  
		Last Modified: Wed, 23 Jan 2019 04:24:57 GMT  
		Size: 103.6 MB (103639629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:a975ec7907124fae3888b0d9f417fa445d34b9da21842f57393d2ef54069f9ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426058393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7082641429e066e0d45412fb8c3f4e173be6fb7505175b2717a90b3193cefea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:37:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bf1445ce8b95712f288d30042c4c2b87e14d67525c689871936f209682ae4e`  
		Last Modified: Wed, 23 Jan 2019 14:10:05 GMT  
		Size: 90.0 MB (90017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

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

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:f262d760627f37823238fd4e81cb5abba97b5f62d0f37e5422415aaa9efb6d1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b0f63bbd92b746cf0a8ca407798c1802dd500dd6eb491ee78328df91432a3337
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.2 MB (488230134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c57152be3d2ec0bc297c36a41635f3c5f75434abc61c30f72d4a00586527620`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:45:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:52:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a991d1789724ed10e92c5d5ad251913c52a5791b64c6dc8a55c309e241a9d92`  
		Last Modified: Wed, 23 Jan 2019 04:24:25 GMT  
		Size: 85.7 MB (85692451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb1a162093a16399674d40ffdb4b39b368ac4176b72cec6259a70dfebfca335`  
		Last Modified: Wed, 23 Jan 2019 04:24:57 GMT  
		Size: 103.6 MB (103639629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a975ec7907124fae3888b0d9f417fa445d34b9da21842f57393d2ef54069f9ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426058393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7082641429e066e0d45412fb8c3f4e173be6fb7505175b2717a90b3193cefea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:37:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bf1445ce8b95712f288d30042c4c2b87e14d67525c689871936f209682ae4e`  
		Last Modified: Wed, 23 Jan 2019 14:10:05 GMT  
		Size: 90.0 MB (90017563 bytes)  
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

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:d4de0e3a32394fa4d16c1525f5e0ad869c8b154747a858c782e4d720658acd63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a1dcf6659cef92370a2e15c8b1c86f00cafb4fa40153d4571428cc84f1623f8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384590505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75f5a9d560b0d804d78cc94f847119a02b8eeea0b3942ee54c8ec1a4d5e48a8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:45:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a991d1789724ed10e92c5d5ad251913c52a5791b64c6dc8a55c309e241a9d92`  
		Last Modified: Wed, 23 Jan 2019 04:24:25 GMT  
		Size: 85.7 MB (85692451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:b3bb94c248f3bacef87ce7ca7ae50af684f19d92e5c35f12e7bcaa8f9e390cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (336040830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f2b67a98b306117051bd36f8883e4121cf1e1641f8604c7fce89403b34ad99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19166518f9c7675020ff683e734d778508856fa8d83b6314ea807b02f120e163
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349869855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549f7368fa82894408d374109ff2e5625f1d7ab634bf70340cfc2f7c60798bfb`
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

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:d4de0e3a32394fa4d16c1525f5e0ad869c8b154747a858c782e4d720658acd63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a1dcf6659cef92370a2e15c8b1c86f00cafb4fa40153d4571428cc84f1623f8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.6 MB (384590505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75f5a9d560b0d804d78cc94f847119a02b8eeea0b3942ee54c8ec1a4d5e48a8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 02:45:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a991d1789724ed10e92c5d5ad251913c52a5791b64c6dc8a55c309e241a9d92`  
		Last Modified: Wed, 23 Jan 2019 04:24:25 GMT  
		Size: 85.7 MB (85692451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:b3bb94c248f3bacef87ce7ca7ae50af684f19d92e5c35f12e7bcaa8f9e390cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (336040830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f2b67a98b306117051bd36f8883e4121cf1e1641f8604c7fce89403b34ad99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19166518f9c7675020ff683e734d778508856fa8d83b6314ea807b02f120e163
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349869855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549f7368fa82894408d374109ff2e5625f1d7ab634bf70340cfc2f7c60798bfb`
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

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:35c75d4dc5f756dbe63ea36b03cdfb07ef18453a931bd3eedc22c2803dfd5a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:c5d8c8e83b2fef5213c0c6c2d0a629e3d33d205feca2c31cb48f29aef3136bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298898054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a27aeed7e4973a1bffaf88c5f31b6aaaf32bd0c9a504c8b9514ff07e96b402f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:8e1230b5d6c195044356fbd1ba0c8b54783ceb58f4b3fadea2e80a29342dbe30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259571682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39688ce114582aa061bb1d7d457f2ccd2f3032a3a38110087fb93b76df8c1731`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:693c700a1bea95627deb0487a05dacf28b2e4fad03b4bba426e28dbaed6e9a39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271905322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe510d23f73e8179e38790d0c30930bb5cbfcacbd3711500095e58846e3d83a`
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

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:35c75d4dc5f756dbe63ea36b03cdfb07ef18453a931bd3eedc22c2803dfd5a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c5d8c8e83b2fef5213c0c6c2d0a629e3d33d205feca2c31cb48f29aef3136bcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298898054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a27aeed7e4973a1bffaf88c5f31b6aaaf32bd0c9a504c8b9514ff07e96b402f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 02:34:18 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 02:41:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:41:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 02:41:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 02:41:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23ed31bc8e1e955272744207f042b73dbf753b85ee04f332128f03279dd3945`  
		Last Modified: Wed, 23 Jan 2019 04:23:58 GMT  
		Size: 193.2 MB (193217901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ae95bffd4d2e38f9bca490ddc6df046bca15ca92a7ecc271bed1aef9291c3e`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:8e1230b5d6c195044356fbd1ba0c8b54783ceb58f4b3fadea2e80a29342dbe30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259571682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39688ce114582aa061bb1d7d457f2ccd2f3032a3a38110087fb93b76df8c1731`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:693c700a1bea95627deb0487a05dacf28b2e4fad03b4bba426e28dbaed6e9a39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271905322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe510d23f73e8179e38790d0c30930bb5cbfcacbd3711500095e58846e3d83a`
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

## `ros:latest`

```console
$ docker pull ros@sha256:e56379d065b8fce953e0aaec11b4c23c5a6b76e9500241aed8da25322a49f8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:1b5d347c5d82293a84ef7bd86a95711ee9e0098aae9a137b14fb75d572526bec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.8 MB (429754771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c10d16c95b25061ed8a3008c64644cecd98812cbd063e07bc987118fb98149`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:c165bc24e050025ce895f1bfe26976238f955b83c4d06ffcfa791fa7bb1f0cc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379468453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4ce6f95880f2bd1ccb239f544e2ca4b97a550eff4536b9c46295b59a3ad9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:420ae44d4dc6ac7638b7b92f3921550453c2aa56cdd03bb0b6c31a4f284cbd2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.2 MB (358180975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97f3e5aa5396286a198046ce8ef60e72931c02839d16022a369049caf4c9dc53`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:37:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:23:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 17:23:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 17:25:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:25:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 17:25:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 17:26:06 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 17:26:07 GMT
ENV ROS_DISTRO=melodic
# Tue, 29 Jan 2019 17:35:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:36:02 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 17:36:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 17:36:03 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 17:38:49 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e0e98cdb2f136417bd3bbfec803e6ac3e309bccb501ccacba12f96391d2de`  
		Last Modified: Wed, 23 Jan 2019 11:28:37 GMT  
		Size: 13.8 MB (13842592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5949d79230668575ee649f5ad1973193304aa80c4723737d4e59ac866ecd0fab`  
		Last Modified: Tue, 29 Jan 2019 19:12:19 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0228d8cbf89908ddf80f78099d0524902bc4af4ccde099a5d1a5d9be7ce6ee6d`  
		Last Modified: Tue, 29 Jan 2019 19:12:17 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6606051cceb401ae07ffff992827693a776fbfae7161c0a4cdcf4bbbaa56c9`  
		Last Modified: Tue, 29 Jan 2019 19:12:41 GMT  
		Size: 47.6 MB (47610660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fd7a76ebe5ca071e8e6ae67e8c8f8798735b83961bbeba1c27aa4ce875ab1`  
		Last Modified: Tue, 29 Jan 2019 19:12:17 GMT  
		Size: 605.1 KB (605125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356d16ae7dd440ac62b96fb15871f097747e6ed281c3bf5a6aa79c47ee12a4d1`  
		Last Modified: Tue, 29 Jan 2019 19:13:44 GMT  
		Size: 202.9 MB (202855749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174ae4011ca374318c3de6b68212be0004aa30d36c438ac09222f2e128d7787`  
		Last Modified: Tue, 29 Jan 2019 19:12:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e39ae8706cc59f88355c01bd6070a6cdd4440061fc76af5319b57fd3bd8124`  
		Last Modified: Tue, 29 Jan 2019 19:14:39 GMT  
		Size: 63.4 MB (63392002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:1ef3027251c5f16175781015d0eca2249d8de77df663cfa8d83cd8a871730326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:0d5fec7af7bae6d4f88fff5ea62256bdf72841abbb55bdc40bf33e76965a9584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.5 MB (384527750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e2da025cc392de238b939c08c9a8a3eef45c774947212e0d5426cc2543c95b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:463947e36ed665cfd74f5be3e0e60e0da6ffd2b36b0e1be32004960cc253b414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335987017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf7ba0436385cdd85be546287268467a2e442a963719b732e9da0ef0f33948`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f99a5c06890ce73d7f66c574c6f551b57b10322cfe860bf878b84c4444e8918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349785295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebc660ead5ddec6cc536668102dc34a21f003d320f988ebab28f853060ab7dc`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:40d80115ca03be588df1e1b2b8cce7b5a6a8971d312d03e420c0d62ad1431738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:c0cfcd534223afe6af4f94f46602079f6e40053ff46e7eb816b8dd92a897f01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.7 MB (723676702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac5f413a58dbf5e1025741522f19ef3f9f5bca9d1acfbf390f2f37982823353`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45de3c6859324f0c4b20c7ad908558bbba84e23d54e8283380565512f96cc1e1`  
		Last Modified: Wed, 23 Jan 2019 04:29:18 GMT  
		Size: 339.1 MB (339148952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:a654c731f0d74cad7df7415e8a288f5789f8e0692ba305066ebe152e10356d0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.3 MB (616284769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44de5ef4c7ec41248777c09ad33a359c7ac95dbee91a0b12b927e25262219788`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:51:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2b1b52f3f4bef3b4d00bf53c06b074996ec90a20f4bdd9629c63c877a3c1a2`  
		Last Modified: Wed, 23 Jan 2019 14:15:46 GMT  
		Size: 280.3 MB (280297752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:143a7be2d620e7ad0c711e1dd4cbd7b29bce91ddbd88af9e11e62415d8189315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.8 MB (639792004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abee8ae8790d0abe40f6a6a4b93edc4c0048d0ace3791773a16e520c0ce564`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:48:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1739c356b931c81aeb860d64136da400bec6d5ee319beed16544fa53e61cbb8`  
		Last Modified: Tue, 29 Jan 2019 19:06:30 GMT  
		Size: 290.0 MB (290006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:7a65c78a07d4728869b1a41d130d94134f77015a320285f099956563514a8704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:1efdf2f314bb8f619e1327c5fa6b69fe6091c2ba37cf2a2a6fdd66f1a982f4ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.3 MB (933266309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb55c8ccb8a6f46e02ac09faafa467459acd3ef0e154798630c29256468fe4a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:14:59 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 07:16:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:16:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:16:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:16:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68baf72e8ba443800f1ff0069851de3e97a38a7eef93d6d2cf13c85e73a19b`  
		Last Modified: Wed, 06 Feb 2019 07:47:22 GMT  
		Size: 251.1 MB (251128017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c488be7369bf0aed2d37f8873147956b908fb099c994ae9dba336557ebec9e6`  
		Last Modified: Wed, 06 Feb 2019 07:46:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13871473463f04306accc38a2cee53300e0a27fe4e06436dfa7ea807fb71218`  
		Last Modified: Wed, 06 Feb 2019 07:47:59 GMT  
		Size: 123.1 MB (123068749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bf99582cf349446d0241060d1f9a89302d23a02479773fdfb3dccbde5bca18`  
		Last Modified: Wed, 06 Feb 2019 07:50:25 GMT  
		Size: 438.5 MB (438478278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8ff31a0c92067bf229749c28485872b77238e5d922ed1ac75e29f75d8942754d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.4 MB (816414415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f83fb2b73a51d008c6166ebc097236d4ed46e1ef35edd8c8c45194d670e159ac`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 22:45:18 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 22:54:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:54:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 22:54:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 22:54:39 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:58:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61dd65081544de6e3749d82a90082437eada9af5aad0a72906d736729112c3`  
		Last Modified: Thu, 07 Feb 2019 01:29:15 GMT  
		Size: 206.0 MB (206040091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5557521b1ece35714e75aa3acbdaf4588ce6cc25d299ad2ffa61bd943423afe`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd856ba03f1a3e82906e00edd841696997f5b025ab983cb74a01064d2c8790e9`  
		Last Modified: Thu, 07 Feb 2019 01:30:45 GMT  
		Size: 116.9 MB (116872032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc27e2e536a1df071c84f34928701fae03fb3a29026e92223f43793e3273df7`  
		Last Modified: Thu, 07 Feb 2019 01:34:45 GMT  
		Size: 378.5 MB (378524996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:40d80115ca03be588df1e1b2b8cce7b5a6a8971d312d03e420c0d62ad1431738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c0cfcd534223afe6af4f94f46602079f6e40053ff46e7eb816b8dd92a897f01c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.7 MB (723676702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac5f413a58dbf5e1025741522f19ef3f9f5bca9d1acfbf390f2f37982823353`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:09:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45de3c6859324f0c4b20c7ad908558bbba84e23d54e8283380565512f96cc1e1`  
		Last Modified: Wed, 23 Jan 2019 04:29:18 GMT  
		Size: 339.1 MB (339148952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a654c731f0d74cad7df7415e8a288f5789f8e0692ba305066ebe152e10356d0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.3 MB (616284769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44de5ef4c7ec41248777c09ad33a359c7ac95dbee91a0b12b927e25262219788`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:51:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2b1b52f3f4bef3b4d00bf53c06b074996ec90a20f4bdd9629c63c877a3c1a2`  
		Last Modified: Wed, 23 Jan 2019 14:15:46 GMT  
		Size: 280.3 MB (280297752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:143a7be2d620e7ad0c711e1dd4cbd7b29bce91ddbd88af9e11e62415d8189315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.8 MB (639792004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abee8ae8790d0abe40f6a6a4b93edc4c0048d0ace3791773a16e520c0ce564`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:48:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1739c356b931c81aeb860d64136da400bec6d5ee319beed16544fa53e61cbb8`  
		Last Modified: Tue, 29 Jan 2019 19:06:30 GMT  
		Size: 290.0 MB (290006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:d53fd563befa961164a5e31f286e0701799874b71552abfdc6d97827a5104d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:82345dd3a86604b78a514bc8256ac8561d2c603d02dbb62a43a2dd2c55d0f983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.3 MB (488261322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b789b02f97582117f29cde7cdceaab7011ec3493b1affb3afa765a7e0e70398b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:06:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2b6a2d705a90e786d0993737b58fc3e9cd82a7f203933bf7143f7399840d3e`  
		Last Modified: Wed, 23 Jan 2019 04:27:58 GMT  
		Size: 103.7 MB (103733572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:dba5778952e1ca664cc9dd6cb04a652d2ff5a683a893123704cfa4d7adef5a52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426081614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7d1e0c7b5dc80bd91302ed55ef353a861a9bf4ebb28aa2398f82ebccb95009`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd0c94a8ac3300c8597c27dd1287b166338975802c60936228460c02327b8b`  
		Last Modified: Wed, 23 Jan 2019 14:14:03 GMT  
		Size: 90.1 MB (90094597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2add07021411a2eadcbff965cd6f59cd0f6ed4b841fdec28b1a25d13d7c47e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443786237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa331758c8de3b6e77754a3627348978eaa436baf0ff3f3bb387eb5d298e56f`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:37:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b05dc84130040e9b8d3917e6604f450f8057c645d27a634bbe37755ba1dea`  
		Last Modified: Tue, 29 Jan 2019 19:04:15 GMT  
		Size: 94.0 MB (94000942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:8a95de41cbeca3d8f00f1bffae2e37a929992bd975b474a1244ac20c7ac751b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c77367e4c1e418cd97159052d9a30fecb98030a38cece25b9189586f7d69eca2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.2 MB (555223522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c4a721108b8b1c990fccee03ea6bfbc25e40b89e218bded38f99105ae011f9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:14:59 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 07:16:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:16:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:16:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:16:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:18:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68baf72e8ba443800f1ff0069851de3e97a38a7eef93d6d2cf13c85e73a19b`  
		Last Modified: Wed, 06 Feb 2019 07:47:22 GMT  
		Size: 251.1 MB (251128017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c488be7369bf0aed2d37f8873147956b908fb099c994ae9dba336557ebec9e6`  
		Last Modified: Wed, 06 Feb 2019 07:46:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13871473463f04306accc38a2cee53300e0a27fe4e06436dfa7ea807fb71218`  
		Last Modified: Wed, 06 Feb 2019 07:47:59 GMT  
		Size: 123.1 MB (123068749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b15cea029e219ee4a521b2ff8026fd3eede7a72f99bffd090ba5ae7efc7239a`  
		Last Modified: Wed, 06 Feb 2019 07:48:25 GMT  
		Size: 60.4 MB (60435491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6e1624a56f57754b2f8e2bb98629f82de505c37140cdea0991ee2f5f2b0dca17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495406611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7ebe968e3ab1bb49ec457f03a87eb4a361a0731e682d74200c3f1361435593`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 22:45:18 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 22:54:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:54:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 22:54:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 22:54:39 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:58:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:05:17 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61dd65081544de6e3749d82a90082437eada9af5aad0a72906d736729112c3`  
		Last Modified: Thu, 07 Feb 2019 01:29:15 GMT  
		Size: 206.0 MB (206040091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5557521b1ece35714e75aa3acbdaf4588ce6cc25d299ad2ffa61bd943423afe`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd856ba03f1a3e82906e00edd841696997f5b025ab983cb74a01064d2c8790e9`  
		Last Modified: Thu, 07 Feb 2019 01:30:45 GMT  
		Size: 116.9 MB (116872032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f849927102afc5b0e114be2ab2c5436d0dc80e7193a262109f2bb41b675fbc9f`  
		Last Modified: Thu, 07 Feb 2019 01:31:27 GMT  
		Size: 57.5 MB (57517192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:d53fd563befa961164a5e31f286e0701799874b71552abfdc6d97827a5104d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:82345dd3a86604b78a514bc8256ac8561d2c603d02dbb62a43a2dd2c55d0f983
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.3 MB (488261322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b789b02f97582117f29cde7cdceaab7011ec3493b1affb3afa765a7e0e70398b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:06:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2b6a2d705a90e786d0993737b58fc3e9cd82a7f203933bf7143f7399840d3e`  
		Last Modified: Wed, 23 Jan 2019 04:27:58 GMT  
		Size: 103.7 MB (103733572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:dba5778952e1ca664cc9dd6cb04a652d2ff5a683a893123704cfa4d7adef5a52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426081614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7d1e0c7b5dc80bd91302ed55ef353a861a9bf4ebb28aa2398f82ebccb95009`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd0c94a8ac3300c8597c27dd1287b166338975802c60936228460c02327b8b`  
		Last Modified: Wed, 23 Jan 2019 14:14:03 GMT  
		Size: 90.1 MB (90094597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2add07021411a2eadcbff965cd6f59cd0f6ed4b841fdec28b1a25d13d7c47e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443786237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa331758c8de3b6e77754a3627348978eaa436baf0ff3f3bb387eb5d298e56f`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:37:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b05dc84130040e9b8d3917e6604f450f8057c645d27a634bbe37755ba1dea`  
		Last Modified: Tue, 29 Jan 2019 19:04:15 GMT  
		Size: 94.0 MB (94000942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:1ef3027251c5f16175781015d0eca2249d8de77df663cfa8d83cd8a871730326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:0d5fec7af7bae6d4f88fff5ea62256bdf72841abbb55bdc40bf33e76965a9584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.5 MB (384527750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e2da025cc392de238b939c08c9a8a3eef45c774947212e0d5426cc2543c95b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:463947e36ed665cfd74f5be3e0e60e0da6ffd2b36b0e1be32004960cc253b414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335987017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf7ba0436385cdd85be546287268467a2e442a963719b732e9da0ef0f33948`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f99a5c06890ce73d7f66c574c6f551b57b10322cfe860bf878b84c4444e8918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349785295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebc660ead5ddec6cc536668102dc34a21f003d320f988ebab28f853060ab7dc`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:b6a455e448335e73fd16c0f78c4c49f92a6ec9e688f9862ebb7f370d8a9fcf74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:fbfa56871ba5503d3a7c64ad87fde5631d6ee402b3b96486670a11004d286e70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.8 MB (494788031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85523d5e12942c1a6f655f67fe7342ae6f00fffd5c8a68cca49b445b56078c5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:14:59 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 07:16:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:16:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:16:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:16:21 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:17:24 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68baf72e8ba443800f1ff0069851de3e97a38a7eef93d6d2cf13c85e73a19b`  
		Last Modified: Wed, 06 Feb 2019 07:47:22 GMT  
		Size: 251.1 MB (251128017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c488be7369bf0aed2d37f8873147956b908fb099c994ae9dba336557ebec9e6`  
		Last Modified: Wed, 06 Feb 2019 07:46:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13871473463f04306accc38a2cee53300e0a27fe4e06436dfa7ea807fb71218`  
		Last Modified: Wed, 06 Feb 2019 07:47:59 GMT  
		Size: 123.1 MB (123068749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:23703d16e485003f652acda90eb91596e6be7b6fcc5a9af7113437b34f8b72c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.9 MB (437889419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94052f226938890b9f61d996e142cf4a5c9b5aec0bdaa30522c1772a7360c68c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 22:45:18 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 22:54:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:54:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 22:54:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 22:54:39 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:58:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61dd65081544de6e3749d82a90082437eada9af5aad0a72906d736729112c3`  
		Last Modified: Thu, 07 Feb 2019 01:29:15 GMT  
		Size: 206.0 MB (206040091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5557521b1ece35714e75aa3acbdaf4588ce6cc25d299ad2ffa61bd943423afe`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd856ba03f1a3e82906e00edd841696997f5b025ab983cb74a01064d2c8790e9`  
		Last Modified: Thu, 07 Feb 2019 01:30:45 GMT  
		Size: 116.9 MB (116872032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:1ef3027251c5f16175781015d0eca2249d8de77df663cfa8d83cd8a871730326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:0d5fec7af7bae6d4f88fff5ea62256bdf72841abbb55bdc40bf33e76965a9584
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.5 MB (384527750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e2da025cc392de238b939c08c9a8a3eef45c774947212e0d5426cc2543c95b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:06:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965569ade8ae983d0653ffb735c1e1d771acb9dec633641f2294291a7040730b`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 85.6 MB (85619694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:463947e36ed665cfd74f5be3e0e60e0da6ffd2b36b0e1be32004960cc253b414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335987017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf7ba0436385cdd85be546287268467a2e442a963719b732e9da0ef0f33948`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f99a5c06890ce73d7f66c574c6f551b57b10322cfe860bf878b84c4444e8918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349785295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebc660ead5ddec6cc536668102dc34a21f003d320f988ebab28f853060ab7dc`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:7354daf627e503b8720d8c6c46668019f839d964b412e296f0565f014ff99db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:9b758affd560d1e44822cf0c9d37cdbd128c8a3bc2bf8686f706fcbee187e79b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298908056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a89bdfec402d57e2dbcaf95e1c8341731b7eaf30a6898429c3e55eda809346`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:63cdd5be345496ed18b3d62314c9657733230ab7dd80b025ac9f28d18a0cf25a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259591095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395477a84dc63e7e188e7b6acd3231bb99d7613aa972f14a4c5408ffa300a57a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5a8cbcfed21940249b2a629532cc5e9fcd3f5173297a51463e5fd79368d5a19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271898463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adf75f56badd95366325bc9e4de1b50e9be87355934d6bf59079ae5a60477cd`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:0fe3621f89086c56b4d736ed46eb008db8099de13ec655d37caa6f6375906348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:b71b50e21f595af869218e93385a19e0782856ea3afad733330b5738579a86a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.7 MB (371719282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819b1f9829d6b796e4a7718974d98151f9d706c4ff6f4da4537fc9bfe3f527c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:14:59 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 07:16:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:16:21 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:16:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:16:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68baf72e8ba443800f1ff0069851de3e97a38a7eef93d6d2cf13c85e73a19b`  
		Last Modified: Wed, 06 Feb 2019 07:47:22 GMT  
		Size: 251.1 MB (251128017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c488be7369bf0aed2d37f8873147956b908fb099c994ae9dba336557ebec9e6`  
		Last Modified: Wed, 06 Feb 2019 07:46:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4658ebede6cf2c98ffd1d242d74c2dcfa967739c9257a18548a62721daf895b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.0 MB (321017387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012d987527736d3371ab16a2abcac221b5020d5b4f68c2fc0abcf509bde9449f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 22:45:18 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Feb 2019 22:54:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:54:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 22:54:38 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 22:54:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61dd65081544de6e3749d82a90082437eada9af5aad0a72906d736729112c3`  
		Last Modified: Thu, 07 Feb 2019 01:29:15 GMT  
		Size: 206.0 MB (206040091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5557521b1ece35714e75aa3acbdaf4588ce6cc25d299ad2ffa61bd943423afe`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:7354daf627e503b8720d8c6c46668019f839d964b412e296f0565f014ff99db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:9b758affd560d1e44822cf0c9d37cdbd128c8a3bc2bf8686f706fcbee187e79b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298908056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4a89bdfec402d57e2dbcaf95e1c8341731b7eaf30a6898429c3e55eda809346`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:32:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:32:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 02:32:38 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 02:34:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 02:34:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 02:34:18 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:03:34 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:05:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:05:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:05:05 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:05:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6eff96935e8938eb325c85024d7345ee1addcc7696abd7c4a3d76a97963c5`  
		Last Modified: Wed, 23 Jan 2019 01:55:26 GMT  
		Size: 16.7 MB (16664801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef14dc44152857290be460336ce13333afb3556e7a3827d6ab300cef0cc0b6ba`  
		Last Modified: Wed, 23 Jan 2019 04:23:14 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb49d161ab33337f98a19933ab46bfec1c987f2ddf5c0e3bd64da7bcf40634`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9808cee631651e0520e1f5af2fd7a6ac123c0986ff9cf265eb7d6f65db8d4e08`  
		Last Modified: Wed, 23 Jan 2019 04:23:24 GMT  
		Size: 44.9 MB (44872151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc20a2cbf96a9ddca14e9196cd7b34ad81aea39004ea5f0726673b875e3e7c6f`  
		Last Modified: Wed, 23 Jan 2019 04:23:09 GMT  
		Size: 601.4 KB (601428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5c6fb86b8500815905068deb5ab5bd8d499ddc54e87af4acbbca50842a7df`  
		Last Modified: Wed, 23 Jan 2019 04:27:01 GMT  
		Size: 193.2 MB (193227902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58a1481e42322e2da8426ed3a2c2f5cacad8b0cdcb99c54fc3bb434449ff6fb`  
		Last Modified: Wed, 23 Jan 2019 04:26:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:63cdd5be345496ed18b3d62314c9657733230ab7dd80b025ac9f28d18a0cf25a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259591095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395477a84dc63e7e188e7b6acd3231bb99d7613aa972f14a4c5408ffa300a57a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5a8cbcfed21940249b2a629532cc5e9fcd3f5173297a51463e5fd79368d5a19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271898463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adf75f56badd95366325bc9e4de1b50e9be87355934d6bf59079ae5a60477cd`
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
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
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
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:91355f94713367bbf893ec188302367deaf98d52bfc6e8ee639256eddd0ec00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:1b5d347c5d82293a84ef7bd86a95711ee9e0098aae9a137b14fb75d572526bec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.8 MB (429754771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c10d16c95b25061ed8a3008c64644cecd98812cbd063e07bc987118fb98149`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:c165bc24e050025ce895f1bfe26976238f955b83c4d06ffcfa791fa7bb1f0cc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379468453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4ce6f95880f2bd1ccb239f544e2ca4b97a550eff4536b9c46295b59a3ad9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5ab96a87ceecd700ab237af21fdcb44913ee93bac5b7958ece60d90e0004abc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360625727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768eab6f19882db07ee21ef472a431d677248c502c6b039cb35d685ed0fd81f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:0cea75696c14973edaa8fa2606bc67c75ca854b1043d996da3bf583d08b95206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:05bae374bb506d53fdfd6083d45a5b80eef673a8af6354fa304aa64abffc205c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **788.8 MB (788844190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d55e817e135d3953125f07e353c4f7578dad8ae38d93b4a31ad0a5fd17ea4ec`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:34:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fce1d6b6e4e0616ee84478087f680b44cbd61921e70c18e2205b5aa8da33453`  
		Last Modified: Wed, 06 Feb 2019 07:54:17 GMT  
		Size: 359.1 MB (359089419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:4f45ab85f273836e2333540ead4a80db92146793ae6a9e415f00c95167024377
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.2 MB (688239027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957400a747a32a8c20cda8405b12727c3ffe54c45ec4014ddc10bc6455b48dd3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:04:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c650be12b6df5d84dc63d5f576fe80fbc97935232f9abdfed2ccd96963965317`  
		Last Modified: Wed, 23 Jan 2019 14:19:54 GMT  
		Size: 308.8 MB (308770574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d59fb60dbf8e2a413e40e4aaf153a40275348d28f9f5755e078b2ac41de3587f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.4 MB (702358784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115e5408e3840d3000f8c73546b0c80ebcc1e8c3ae7aa826d39b90751f68ae2b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:14:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd0260faa3c016758d29864f93caf45678e743b9165ee41986cc585fbc3baf6`  
		Last Modified: Thu, 07 Feb 2019 01:43:29 GMT  
		Size: 341.7 MB (341733057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:0cea75696c14973edaa8fa2606bc67c75ca854b1043d996da3bf583d08b95206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:05bae374bb506d53fdfd6083d45a5b80eef673a8af6354fa304aa64abffc205c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **788.8 MB (788844190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d55e817e135d3953125f07e353c4f7578dad8ae38d93b4a31ad0a5fd17ea4ec`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:34:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fce1d6b6e4e0616ee84478087f680b44cbd61921e70c18e2205b5aa8da33453`  
		Last Modified: Wed, 06 Feb 2019 07:54:17 GMT  
		Size: 359.1 MB (359089419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:4f45ab85f273836e2333540ead4a80db92146793ae6a9e415f00c95167024377
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.2 MB (688239027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957400a747a32a8c20cda8405b12727c3ffe54c45ec4014ddc10bc6455b48dd3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:04:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c650be12b6df5d84dc63d5f576fe80fbc97935232f9abdfed2ccd96963965317`  
		Last Modified: Wed, 23 Jan 2019 14:19:54 GMT  
		Size: 308.8 MB (308770574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d59fb60dbf8e2a413e40e4aaf153a40275348d28f9f5755e078b2ac41de3587f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.4 MB (702358784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115e5408e3840d3000f8c73546b0c80ebcc1e8c3ae7aa826d39b90751f68ae2b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:14:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd0260faa3c016758d29864f93caf45678e743b9165ee41986cc585fbc3baf6`  
		Last Modified: Thu, 07 Feb 2019 01:43:29 GMT  
		Size: 341.7 MB (341733057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:9ea8e5449fb55900de2288b956032e9c16f6658b837463f2311f284dd8bbf2d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c7a7f4706f240bc5354955834dcc8c8a159cc01aa6d1978e53e736089b328ef9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.2 MB (879213461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8805518357bc8b65d90a15aa8a5fb4c63ebcb00ad0280c867a33bea595458e26`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:34:12 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:35:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:35:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:35:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:35:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:36:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:40:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea702ef21014109748e2e5ed0564b75ef42fada4b67d191e9e8dc2184035e700`  
		Last Modified: Wed, 06 Feb 2019 07:55:27 GMT  
		Size: 269.4 MB (269391962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67f8f01e80e2c81d4dca5d25cce779f870c7e0148e0cacf4c94d434ad3865aa`  
		Last Modified: Wed, 06 Feb 2019 07:54:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4c14749a2de995532bf20e665937ffa21c3f59a679c841446243d28e579edc`  
		Last Modified: Wed, 06 Feb 2019 07:55:58 GMT  
		Size: 108.5 MB (108460990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f8ec2a5c73abf5b014326d6d262a5c2786cdfc2c208a207828d0d9219f1b61`  
		Last Modified: Wed, 06 Feb 2019 07:58:03 GMT  
		Size: 380.8 MB (380769244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c8d504865b2f3a84e07937a410479186d9ff0f9d2cae2a6d64f57b170ed3522b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.9 MB (796852573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16765be72e5c64ca2763da3869ce1f208883209d02754f59db04739b67591ab3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:03:54 GMT
ADD file:8e97108c1e48b9197ff71d26fbf0d9c12372f7197eace7801dd05a1b34e56e65 in / 
# Wed, 23 Jan 2019 10:03:55 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 11:04:59 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:49:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 16:49:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 16:51:00 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:51:01 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 16:51:02 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 16:51:41 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 17:56:27 GMT
ENV ROS_DISTRO=melodic
# Tue, 29 Jan 2019 18:05:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:05:51 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 18:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 18:05:52 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 18:08:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 18:26:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c20612220f39dab58625e39fe6985d91acf6a5359517e82621d51d28bf82e05`  
		Last Modified: Wed, 23 Jan 2019 10:11:07 GMT  
		Size: 43.1 MB (43125634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394ae40b1c7c44334bbb4bd812fd8f53c9976d70ec59977ec32c8c272ea50cd3`  
		Last Modified: Wed, 23 Jan 2019 11:32:54 GMT  
		Size: 19.7 MB (19745787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbfc11516b4e74dd7a4eb69d38128ab52ed1903e764f25a4fd42cc8e1b988502`  
		Last Modified: Tue, 29 Jan 2019 19:06:47 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2b4e738a6aaca15aaee02e3554d4958260e96dd232f6ef5b156783d6cc035f`  
		Last Modified: Tue, 29 Jan 2019 19:06:45 GMT  
		Size: 5.0 KB (4984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:336a1965c7f9a6b0435731d031eddd18ebd11b16eb282fbf4da9b1c67f6a3b0d`  
		Last Modified: Tue, 29 Jan 2019 19:07:14 GMT  
		Size: 51.5 MB (51492899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8246a01c5d5b962a08d1239f1b9b09a972bf669719d065bb3b9335a58e3a6f`  
		Last Modified: Tue, 29 Jan 2019 19:06:47 GMT  
		Size: 605.1 KB (605135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05817b235ba2fb852359f66688b7c11fd44ad50e64a84b55b75525c94a733646`  
		Last Modified: Tue, 29 Jan 2019 19:19:46 GMT  
		Size: 223.6 MB (223571499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37381b80dc5a8325a581e224196ab8a85ffed30f13cbf3fa2288715c472f65a`  
		Last Modified: Tue, 29 Jan 2019 19:18:15 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f20e2eb4ce6f729759eac183e6cd0a63adab27767f57249f4b3e71ca615f2bd`  
		Last Modified: Tue, 29 Jan 2019 19:20:30 GMT  
		Size: 102.9 MB (102937351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822cb47081e6758f3ffc7d9a7fa5a53ca5f775105e667b3f95ac95b825532724`  
		Last Modified: Tue, 29 Jan 2019 19:23:30 GMT  
		Size: 355.4 MB (355367714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:77b3c384e12db2273d045f7105991ea2bcfcd4c2e134f4bd4604e913177b8910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:909613ae001e797f3534c8d240c3c183d688a7607e552a25e0259ce2f045d30c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.3 MB (467348818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a0d76d506e59a9d7273dde490416d972aa5f55b7c039bf44934e05efade6b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:28:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7509067a4cdfa55d26c068ba71414f972d87ba1413c62044c5dc1f56b542d2da`  
		Last Modified: Wed, 06 Feb 2019 07:52:26 GMT  
		Size: 37.6 MB (37594047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:29651d2ce1f2b2ffff1eea257e834c705343d223132086ad4faa78b90796e610
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.7 MB (412693139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d02421291d2e76d7c863bef582d215bbaae485066881cc1004ce35140e9aa4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:59:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89151c534b4f8dc81cc21d939db1e9886a369c3072ccb4bee09e1c63bcba6f43`  
		Last Modified: Wed, 23 Jan 2019 14:18:03 GMT  
		Size: 33.2 MB (33224686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d2866aff3a3085fe6c80017e01b3739804123e2d41af5bf6f2620f444a31b0b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396001652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c686e9cf11fe3b0761c6a878ff3acc9edbe7e4a13b2c60bfde2f1ed662677ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:46:36 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f938f305309d2dea84d286b5d61f1fa75fdb7dcdb32bc02ca32691d71c786`  
		Last Modified: Thu, 07 Feb 2019 01:40:31 GMT  
		Size: 35.4 MB (35375925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:77b3c384e12db2273d045f7105991ea2bcfcd4c2e134f4bd4604e913177b8910
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:909613ae001e797f3534c8d240c3c183d688a7607e552a25e0259ce2f045d30c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.3 MB (467348818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a0d76d506e59a9d7273dde490416d972aa5f55b7c039bf44934e05efade6b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:28:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7509067a4cdfa55d26c068ba71414f972d87ba1413c62044c5dc1f56b542d2da`  
		Last Modified: Wed, 06 Feb 2019 07:52:26 GMT  
		Size: 37.6 MB (37594047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:29651d2ce1f2b2ffff1eea257e834c705343d223132086ad4faa78b90796e610
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.7 MB (412693139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d02421291d2e76d7c863bef582d215bbaae485066881cc1004ce35140e9aa4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:59:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89151c534b4f8dc81cc21d939db1e9886a369c3072ccb4bee09e1c63bcba6f43`  
		Last Modified: Wed, 23 Jan 2019 14:18:03 GMT  
		Size: 33.2 MB (33224686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d2866aff3a3085fe6c80017e01b3739804123e2d41af5bf6f2620f444a31b0b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396001652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c686e9cf11fe3b0761c6a878ff3acc9edbe7e4a13b2c60bfde2f1ed662677ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:46:36 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f938f305309d2dea84d286b5d61f1fa75fdb7dcdb32bc02ca32691d71c786`  
		Last Modified: Thu, 07 Feb 2019 01:40:31 GMT  
		Size: 35.4 MB (35375925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:5895093039b6b7410ea30e2d31e83648690e59065233e506885b531c452b544d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9d7ad6863abe96b66df1797deed23314cf19bfbaab5085359a8120df93f48f87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.8 MB (553756854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2edc24176d8aea0a5ac65eedb3a0232301b968a6eba4109ea9e724102be2bcad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:34:12 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:35:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:35:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:35:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:35:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:36:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:37:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea702ef21014109748e2e5ed0564b75ef42fada4b67d191e9e8dc2184035e700`  
		Last Modified: Wed, 06 Feb 2019 07:55:27 GMT  
		Size: 269.4 MB (269391962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67f8f01e80e2c81d4dca5d25cce779f870c7e0148e0cacf4c94d434ad3865aa`  
		Last Modified: Wed, 06 Feb 2019 07:54:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4c14749a2de995532bf20e665937ffa21c3f59a679c841446243d28e579edc`  
		Last Modified: Wed, 06 Feb 2019 07:55:58 GMT  
		Size: 108.5 MB (108460990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1e6660356328d987a6630e468d9bea06fead09b403a010280f5e7a4c1e89409`  
		Last Modified: Wed, 06 Feb 2019 07:56:16 GMT  
		Size: 55.3 MB (55312637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:db9fd12bcf059fffa7de7a3b43a6cb91de4b2c484801586bcfc1a044476c49e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.1 MB (494079062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71f389f9ccbfdf7fe1ac0584fb0cda7f67266b188fb07892f90516011247c73`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 00:17:53 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 00:28:49 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:29:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 00:29:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 00:29:32 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:32:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:38:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db33ccb93c5564332295bfdf165fea36f364ce14e317625dca7f2db19fe9bad0`  
		Last Modified: Thu, 07 Feb 2019 01:45:50 GMT  
		Size: 223.6 MB (223575400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa5bdbf5d61701774d78c6d0294d2a60d4d4ce9de4ba4534130ba71bf7c41d`  
		Last Modified: Thu, 07 Feb 2019 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a964ac6cbfa68cd10e5d787987aa5b9902372c5b40f58d33ce3a7301bf88f4`  
		Last Modified: Thu, 07 Feb 2019 01:46:47 GMT  
		Size: 102.9 MB (102938853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021d38df1cf1252f9b79359f3c611cc1abf376b83b874729e52208ccc396bd3f`  
		Last Modified: Thu, 07 Feb 2019 01:47:24 GMT  
		Size: 52.6 MB (52587512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:91355f94713367bbf893ec188302367deaf98d52bfc6e8ee639256eddd0ec00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1b5d347c5d82293a84ef7bd86a95711ee9e0098aae9a137b14fb75d572526bec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.8 MB (429754771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c10d16c95b25061ed8a3008c64644cecd98812cbd063e07bc987118fb98149`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:c165bc24e050025ce895f1bfe26976238f955b83c4d06ffcfa791fa7bb1f0cc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379468453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4ce6f95880f2bd1ccb239f544e2ca4b97a550eff4536b9c46295b59a3ad9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5ab96a87ceecd700ab237af21fdcb44913ee93bac5b7958ece60d90e0004abc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360625727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768eab6f19882db07ee21ef472a431d677248c502c6b039cb35d685ed0fd81f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:91355f94713367bbf893ec188302367deaf98d52bfc6e8ee639256eddd0ec00a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:1b5d347c5d82293a84ef7bd86a95711ee9e0098aae9a137b14fb75d572526bec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.8 MB (429754771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c10d16c95b25061ed8a3008c64644cecd98812cbd063e07bc987118fb98149`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:27:19 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec015b74d3d848821e0783f64885f4b96246c557312885a225455c4d78054645`  
		Last Modified: Wed, 06 Feb 2019 07:52:08 GMT  
		Size: 70.8 MB (70831519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:c165bc24e050025ce895f1bfe26976238f955b83c4d06ffcfa791fa7bb1f0cc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.5 MB (379468453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4ce6f95880f2bd1ccb239f544e2ca4b97a550eff4536b9c46295b59a3ad9a3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5ab96a87ceecd700ab237af21fdcb44913ee93bac5b7958ece60d90e0004abc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360625727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768eab6f19882db07ee21ef472a431d677248c502c6b039cb35d685ed0fd81f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:7268197ea5c09518d288dd118a84bb7317c62e81b19280d28963b7296d5e13f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:6c3cdb43f05e4ea91039d6b2c128c9816ea7b2c69a5c872efb510d5bbd47625f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.4 MB (498444217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f82fa43e85a8d6508457f27412060afe7cc3994622055271c277a93631dbcfa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:34:12 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:35:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:35:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:35:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:35:56 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:36:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea702ef21014109748e2e5ed0564b75ef42fada4b67d191e9e8dc2184035e700`  
		Last Modified: Wed, 06 Feb 2019 07:55:27 GMT  
		Size: 269.4 MB (269391962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67f8f01e80e2c81d4dca5d25cce779f870c7e0148e0cacf4c94d434ad3865aa`  
		Last Modified: Wed, 06 Feb 2019 07:54:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4c14749a2de995532bf20e665937ffa21c3f59a679c841446243d28e579edc`  
		Last Modified: Wed, 06 Feb 2019 07:55:58 GMT  
		Size: 108.5 MB (108460990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d766b13f6d15613c58a675bf06cd69e7a502e03c3858ba81dab8062f45cc92f3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441491550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16944031207cad6ea8a07855353e0dd849b47df63c9d6b3c106be78eabd05136`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 00:17:53 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 00:28:49 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:29:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 00:29:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 00:29:32 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 00:32:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db33ccb93c5564332295bfdf165fea36f364ce14e317625dca7f2db19fe9bad0`  
		Last Modified: Thu, 07 Feb 2019 01:45:50 GMT  
		Size: 223.6 MB (223575400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa5bdbf5d61701774d78c6d0294d2a60d4d4ce9de4ba4534130ba71bf7c41d`  
		Last Modified: Thu, 07 Feb 2019 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a964ac6cbfa68cd10e5d787987aa5b9902372c5b40f58d33ce3a7301bf88f4`  
		Last Modified: Thu, 07 Feb 2019 01:46:47 GMT  
		Size: 102.9 MB (102938853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:84ff40107cdbcd4daaa357e82053adfea93d38edc71292994681a2fcc460a60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:8daa376161ab9e5087001b6fed07a70e92651a74be62755164bf6c5e81866f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358923252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093120bf2f871aeb38951e3a9ce80185dea4b31938efdc6339aebf176ac5cc0f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:32307a315418a3d509db4cb4abdcfc552db9740d24718724a0cf7e0b4488dd1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.5 MB (319485125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47421f1f9a1b0bb7b5ff544250753fcf36cca7aa8bd7ced8e3a8a511c2fe6d76`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1003a4e08ebd1675a1cda52ecb645dcce0c8c6e48d537a648cd457ea073f8c87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294865120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c6da4610a00b67e29ac1d71c14820d42ddc35fba706dd4b5c48143366a57f3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:84ff40107cdbcd4daaa357e82053adfea93d38edc71292994681a2fcc460a60f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:8daa376161ab9e5087001b6fed07a70e92651a74be62755164bf6c5e81866f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358923252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093120bf2f871aeb38951e3a9ce80185dea4b31938efdc6339aebf176ac5cc0f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:37:49 GMT
ADD file:529264c6593975a61f31e017eaf2e33d9ef126bde387f5d4136c60cf010a7383 in / 
# Wed, 06 Feb 2019 03:37:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 03:37:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 03:37:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 03:37:51 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 06:20:50 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 06:21:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:21:41 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:21:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:22:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:22:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:22:48 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:22:48 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:25:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:25:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:25:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:25:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6cf436f81810f067c6d4ffca6793eae7cb6d38456715b0707d8a5a2d1acccf12`  
		Last Modified: Tue, 05 Feb 2019 08:24:51 GMT  
		Size: 32.4 MB (32374324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987088a85b9606eb474a365eb210db765ff0d011ee099a6e3de5087435c6f966`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4624b3efe0617e59ed3998407eafdbe1cb6451346a6cabd066b6e253f50efb1`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42beb8ded595df5627ad4ef31bf528a6fdbfbd11d82f9023152738d6b05a7fa`  
		Last Modified: Wed, 06 Feb 2019 03:38:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e2b7226e157ac7bcf566789e6b9114f7bd3477f77f080712fb245c62e29daa`  
		Last Modified: Wed, 06 Feb 2019 06:40:07 GMT  
		Size: 837.0 KB (836988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0d981b6afd50a9bac37a864f3a0aa7f6db89a3b626f5482a8082509c7cb0c3`  
		Last Modified: Wed, 06 Feb 2019 06:40:09 GMT  
		Size: 14.9 MB (14913121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7602a18566639666adcc3906a8bce614d0fa8b8623fb7eabc25f4908e6d6578f`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad74dafaf39c9adb26e69b082b05709b198d76e245b533d65e71b1484e6d0950`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 5.4 KB (5418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5678040adb2efd38916f1e63b2601867991b05cf09723f4b20c0f0c87a8df104`  
		Last Modified: Wed, 06 Feb 2019 07:50:46 GMT  
		Size: 49.4 MB (49410898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb681e7eb1d28d980d92bf12e8c9e668b7c43881c2a6a08ec95cecf76225fecd`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 606.5 KB (606504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8467c219f19cbde8930de6effd8dd649aaa44efb6a32cadda6a34df014922e8e`  
		Last Modified: Wed, 06 Feb 2019 07:51:40 GMT  
		Size: 260.8 MB (260772882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f61647e96d10571978cebeff9aa2d89a9651d54e0f97149f8a6374a90263956`  
		Last Modified: Wed, 06 Feb 2019 07:50:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:32307a315418a3d509db4cb4abdcfc552db9740d24718724a0cf7e0b4488dd1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.5 MB (319485125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47421f1f9a1b0bb7b5ff544250753fcf36cca7aa8bd7ced8e3a8a511c2fe6d76`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1003a4e08ebd1675a1cda52ecb645dcce0c8c6e48d537a648cd457ea073f8c87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294865120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c6da4610a00b67e29ac1d71c14820d42ddc35fba706dd4b5c48143366a57f3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:918f97f2189eb6621b73b09579506162f37243ff78e1a09ab75ee883125f3a87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:a9afe6896e9e2ebd9716ec28c791bd1bc8a155d55f21feadcd40617a4e525a67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (389983227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02da96569a53d424c6e7f1c1254da941e5c0383a609f195c1fe1f66f0f89685`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 06:36:19 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 07:14:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 07:14:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 07:14:44 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 07:14:59 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 07:34:12 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 07:35:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:35:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 07:35:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 07:35:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a2e0634b1abf3c79b90216e4aeb7471536660714c9370b9e596f13a4590a78`  
		Last Modified: Wed, 06 Feb 2019 06:42:10 GMT  
		Size: 21.1 MB (21091338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a746cc16dedbd68479782b923905c1797c3933512b43a3ee001ac8a192982`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bb99ff6d7aabcd302e9711c969c25fd06d9cff8ceb1919dcc2201b5ac95d61`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 5.0 KB (4975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e95756a0aae62cd8a8b53475e29aa65fc3fb7e9498cff2554dd98b00a0591cd`  
		Last Modified: Wed, 06 Feb 2019 07:46:29 GMT  
		Size: 53.5 MB (53542582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8a4f75134b8da0e9a9fffcc4db3d2b17423cdb9dbef687f2b449cb6109c1b3`  
		Last Modified: Wed, 06 Feb 2019 07:46:14 GMT  
		Size: 606.5 KB (606506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea702ef21014109748e2e5ed0564b75ef42fada4b67d191e9e8dc2184035e700`  
		Last Modified: Wed, 06 Feb 2019 07:55:27 GMT  
		Size: 269.4 MB (269391962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e67f8f01e80e2c81d4dca5d25cce779f870c7e0148e0cacf4c94d434ad3865aa`  
		Last Modified: Wed, 06 Feb 2019 07:54:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:57507b741e834f5e53df9f4f789a1f6852a5b34f0ac36d68cadcc6b5d58491a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338552697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d899c391e0e62a77fabd73b65d9a5e10348c6cd91689b71aaaf99d3f948892a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:42:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 22:42:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 22:44:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 22:44:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 22:45:18 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 00:17:53 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 00:28:49 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:29:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 00:29:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 00:29:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08582476d34c8c1cceb2158965fdbe1badbbf6dafad9fc321c3695ba4bacbe68`  
		Last Modified: Wed, 06 Feb 2019 21:43:27 GMT  
		Size: 19.7 MB (19745851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c6cf74d096dd8d937facb9fb8aaca47b064848c835dae7e86243cdc0a9aa7`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70defd0a05c382a9eab849db8989a9400b4f2578612cfa8af7384355c1aedba`  
		Last Modified: Thu, 07 Feb 2019 01:25:06 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6916cf4d073b090049bc644ff06798c69e13ae23b85acbebc3d868be455b7`  
		Last Modified: Thu, 07 Feb 2019 01:26:54 GMT  
		Size: 51.5 MB (51493235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad1ee10367110bbab518f68d190514b7255c78c66e819d0f0b0983c121d62b9`  
		Last Modified: Thu, 07 Feb 2019 01:25:08 GMT  
		Size: 606.7 KB (606684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db33ccb93c5564332295bfdf165fea36f364ce14e317625dca7f2db19fe9bad0`  
		Last Modified: Thu, 07 Feb 2019 01:45:50 GMT  
		Size: 223.6 MB (223575400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa5bdbf5d61701774d78c6d0294d2a60d4d4ce9de4ba4534130ba71bf7c41d`  
		Last Modified: Thu, 07 Feb 2019 01:43:47 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
