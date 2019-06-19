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
$ docker pull ros@sha256:1144a2787c61561a3a4c058a9c522d552f99b38339a7ae36088f15390ec2432c
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
$ docker pull ros@sha256:c35ccba55938e607d43d5b306551ab52eef4927d736fd0114ab74cfff4445a21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189577894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de41aa5b053c24cf23c54ca0ccd9e193239999741f82e07a043aab7130926a1b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:12:06 GMT
ENV ROS_DISTRO=bouncy
# Tue, 18 Jun 2019 23:13:05 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:13:09 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:13:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:13:13 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:13:39 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e9401acd10da04eb517ca2eebf43e7d1f1c15796e2674a820a0b5225b12b8`  
		Last Modified: Tue, 18 Jun 2019 23:30:24 GMT  
		Size: 37.1 MB (37125124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81578a6a124b411966ed1b4a7dfa8607f93c109c3a5189f8a70f66ee63b24d`  
		Last Modified: Tue, 18 Jun 2019 23:30:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45623d84695aadb02917ec1563b29e610d4556d5ccd982eb1d0f310912a6a78`  
		Last Modified: Tue, 18 Jun 2019 23:30:56 GMT  
		Size: 2.9 MB (2890252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:1144a2787c61561a3a4c058a9c522d552f99b38339a7ae36088f15390ec2432c
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
$ docker pull ros@sha256:c35ccba55938e607d43d5b306551ab52eef4927d736fd0114ab74cfff4445a21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189577894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de41aa5b053c24cf23c54ca0ccd9e193239999741f82e07a043aab7130926a1b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:12:06 GMT
ENV ROS_DISTRO=bouncy
# Tue, 18 Jun 2019 23:13:05 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:13:09 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:13:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:13:13 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:13:39 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e9401acd10da04eb517ca2eebf43e7d1f1c15796e2674a820a0b5225b12b8`  
		Last Modified: Tue, 18 Jun 2019 23:30:24 GMT  
		Size: 37.1 MB (37125124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81578a6a124b411966ed1b4a7dfa8607f93c109c3a5189f8a70f66ee63b24d`  
		Last Modified: Tue, 18 Jun 2019 23:30:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45623d84695aadb02917ec1563b29e610d4556d5ccd982eb1d0f310912a6a78`  
		Last Modified: Tue, 18 Jun 2019 23:30:56 GMT  
		Size: 2.9 MB (2890252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:1144a2787c61561a3a4c058a9c522d552f99b38339a7ae36088f15390ec2432c
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
$ docker pull ros@sha256:c35ccba55938e607d43d5b306551ab52eef4927d736fd0114ab74cfff4445a21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.6 MB (189577894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de41aa5b053c24cf23c54ca0ccd9e193239999741f82e07a043aab7130926a1b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:12:06 GMT
ENV ROS_DISTRO=bouncy
# Tue, 18 Jun 2019 23:13:05 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:13:09 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:13:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:13:13 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:13:39 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e9401acd10da04eb517ca2eebf43e7d1f1c15796e2674a820a0b5225b12b8`  
		Last Modified: Tue, 18 Jun 2019 23:30:24 GMT  
		Size: 37.1 MB (37125124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81578a6a124b411966ed1b4a7dfa8607f93c109c3a5189f8a70f66ee63b24d`  
		Last Modified: Tue, 18 Jun 2019 23:30:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45623d84695aadb02917ec1563b29e610d4556d5ccd982eb1d0f310912a6a78`  
		Last Modified: Tue, 18 Jun 2019 23:30:56 GMT  
		Size: 2.9 MB (2890252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:3cf5fd7f6493b5e93cc457ba09be7b52044d77af4b5a7440c8a92157c8ac4c9d
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
$ docker pull ros@sha256:935b1b0f5ef00b29f57f735a1bdaed8737eeb665c42128ac921ed3efe45ca6ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186687642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b6eec9e342112c1a25bbccf4dd61dee83b91498358df32ac61c1d2b38b4bfc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:12:06 GMT
ENV ROS_DISTRO=bouncy
# Tue, 18 Jun 2019 23:13:05 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:13:09 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:13:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:13:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e9401acd10da04eb517ca2eebf43e7d1f1c15796e2674a820a0b5225b12b8`  
		Last Modified: Tue, 18 Jun 2019 23:30:24 GMT  
		Size: 37.1 MB (37125124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81578a6a124b411966ed1b4a7dfa8607f93c109c3a5189f8a70f66ee63b24d`  
		Last Modified: Tue, 18 Jun 2019 23:30:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:3cf5fd7f6493b5e93cc457ba09be7b52044d77af4b5a7440c8a92157c8ac4c9d
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
$ docker pull ros@sha256:935b1b0f5ef00b29f57f735a1bdaed8737eeb665c42128ac921ed3efe45ca6ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.7 MB (186687642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b6eec9e342112c1a25bbccf4dd61dee83b91498358df32ac61c1d2b38b4bfc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:12:06 GMT
ENV ROS_DISTRO=bouncy
# Tue, 18 Jun 2019 23:13:05 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:13:09 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:13:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:13:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e9401acd10da04eb517ca2eebf43e7d1f1c15796e2674a820a0b5225b12b8`  
		Last Modified: Tue, 18 Jun 2019 23:30:24 GMT  
		Size: 37.1 MB (37125124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a81578a6a124b411966ed1b4a7dfa8607f93c109c3a5189f8a70f66ee63b24d`  
		Last Modified: Tue, 18 Jun 2019 23:30:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:b084dcbd511bc0f87e13cdeaad798e8e7fb5a2fd23046ee3c674156ba21bee0e
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
$ docker pull ros@sha256:770b1d814a251981551e477137e018195abc9b70554414f36529ae08be6dcaaa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192472232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a9fe9909630789b21ba5b628ad2d3b66cd96545f92716622414f7ea29f4a7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:13:46 GMT
ENV ROS_DISTRO=crystal
# Tue, 18 Jun 2019 23:14:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:14:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:15:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:15:00 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:15:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fdc291aedac46dc303f5a9c5a3d4532e1b7e1f46b2437601defe9147fb72fd`  
		Last Modified: Tue, 18 Jun 2019 23:31:23 GMT  
		Size: 40.0 MB (39972583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22c5ac05db4f60fd495f4dc3ff843840620c9edf18a23bbb9e2824a88e7578e`  
		Last Modified: Tue, 18 Jun 2019 23:31:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea072fd9611d16c4f56cd9300ec385a680126864588b1e50a745f273fc61edfe`  
		Last Modified: Tue, 18 Jun 2019 23:31:33 GMT  
		Size: 2.9 MB (2937131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:b084dcbd511bc0f87e13cdeaad798e8e7fb5a2fd23046ee3c674156ba21bee0e
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
$ docker pull ros@sha256:770b1d814a251981551e477137e018195abc9b70554414f36529ae08be6dcaaa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192472232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a9fe9909630789b21ba5b628ad2d3b66cd96545f92716622414f7ea29f4a7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:13:46 GMT
ENV ROS_DISTRO=crystal
# Tue, 18 Jun 2019 23:14:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:14:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:15:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:15:00 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:15:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fdc291aedac46dc303f5a9c5a3d4532e1b7e1f46b2437601defe9147fb72fd`  
		Last Modified: Tue, 18 Jun 2019 23:31:23 GMT  
		Size: 40.0 MB (39972583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22c5ac05db4f60fd495f4dc3ff843840620c9edf18a23bbb9e2824a88e7578e`  
		Last Modified: Tue, 18 Jun 2019 23:31:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea072fd9611d16c4f56cd9300ec385a680126864588b1e50a745f273fc61edfe`  
		Last Modified: Tue, 18 Jun 2019 23:31:33 GMT  
		Size: 2.9 MB (2937131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:b084dcbd511bc0f87e13cdeaad798e8e7fb5a2fd23046ee3c674156ba21bee0e
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
$ docker pull ros@sha256:770b1d814a251981551e477137e018195abc9b70554414f36529ae08be6dcaaa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192472232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a9fe9909630789b21ba5b628ad2d3b66cd96545f92716622414f7ea29f4a7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:13:46 GMT
ENV ROS_DISTRO=crystal
# Tue, 18 Jun 2019 23:14:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:14:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:15:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:15:00 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:15:33 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fdc291aedac46dc303f5a9c5a3d4532e1b7e1f46b2437601defe9147fb72fd`  
		Last Modified: Tue, 18 Jun 2019 23:31:23 GMT  
		Size: 40.0 MB (39972583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22c5ac05db4f60fd495f4dc3ff843840620c9edf18a23bbb9e2824a88e7578e`  
		Last Modified: Tue, 18 Jun 2019 23:31:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea072fd9611d16c4f56cd9300ec385a680126864588b1e50a745f273fc61edfe`  
		Last Modified: Tue, 18 Jun 2019 23:31:33 GMT  
		Size: 2.9 MB (2937131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:92804efee53f76016a7f156f827f7eecf49d660374dfd1e1dbdc62714eb75752
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
$ docker pull ros@sha256:0c6ab29af24b9692ac7c2429db9bda406e9ae8f9bd6df8b23aa8eb637c3b8c96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189535101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96650bd01a8dc5c1f7e89d475ab2ad0e9678d94aa7320a27272e0d79450b54be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:13:46 GMT
ENV ROS_DISTRO=crystal
# Tue, 18 Jun 2019 23:14:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:14:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:15:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:15:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fdc291aedac46dc303f5a9c5a3d4532e1b7e1f46b2437601defe9147fb72fd`  
		Last Modified: Tue, 18 Jun 2019 23:31:23 GMT  
		Size: 40.0 MB (39972583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22c5ac05db4f60fd495f4dc3ff843840620c9edf18a23bbb9e2824a88e7578e`  
		Last Modified: Tue, 18 Jun 2019 23:31:07 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:92804efee53f76016a7f156f827f7eecf49d660374dfd1e1dbdc62714eb75752
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
$ docker pull ros@sha256:0c6ab29af24b9692ac7c2429db9bda406e9ae8f9bd6df8b23aa8eb637c3b8c96
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189535101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96650bd01a8dc5c1f7e89d475ab2ad0e9678d94aa7320a27272e0d79450b54be`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:28 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:10:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 23:10:35 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 18 Jun 2019 23:11:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     git     python3-colcon-common-extensions     python3-rosdep     python3-vcstool     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 23:11:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 23:12:01 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 23:12:06 GMT
RUN pip3 install -U     argcomplete
# Tue, 18 Jun 2019 23:13:46 GMT
ENV ROS_DISTRO=crystal
# Tue, 18 Jun 2019 23:14:56 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:14:59 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 18 Jun 2019 23:15:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:15:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ea2f8a738716826ec9ee9315b9f7bf0ecba866fe47bb6caaee8aa2c21c1b9e`  
		Last Modified: Tue, 18 Jun 2019 23:30:44 GMT  
		Size: 97.8 MB (97807291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d67d2c20473cfea3a01fac61b91c20fc9d83f37d7cf854ba2211e82012cfff`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64d58441c12ed30c074299527b83dce298ae27090b46c6d0661014855c0ef4`  
		Last Modified: Tue, 18 Jun 2019 23:30:12 GMT  
		Size: 5.4 KB (5425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1100e2815e733fff7a32406bb256e6dacca2798482d0bc36542bbca477a1eaea`  
		Last Modified: Tue, 18 Jun 2019 23:30:18 GMT  
		Size: 26.6 MB (26618349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5fb84069315bad7318c54e28c7f646e286f3a73b5f1bc4c605b55cf7eda259`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 462.5 KB (462534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e518d0e0a85bd3564457320403360faad6836ba3472f8ae39779e766e0df74b`  
		Last Modified: Tue, 18 Jun 2019 23:30:10 GMT  
		Size: 89.6 KB (89601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fdc291aedac46dc303f5a9c5a3d4532e1b7e1f46b2437601defe9147fb72fd`  
		Last Modified: Tue, 18 Jun 2019 23:31:23 GMT  
		Size: 40.0 MB (39972583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22c5ac05db4f60fd495f4dc3ff843840620c9edf18a23bbb9e2824a88e7578e`  
		Last Modified: Tue, 18 Jun 2019 23:31:07 GMT  
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
$ docker pull ros@sha256:432adb811e38e465cf7c581f05ca3e7d101b52c8bb26512756c5ae7529091dbd
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
$ docker pull ros@sha256:f8535a05edaee1f44d834d46a39d6968d9ca12a0c02c00fac0d6706a266f64fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336189159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5623ee0f0139a42c0c66c13ed5951265d068e5f3a501c91d3c58345a2a00e1a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:35:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846af1da7a0ee06b5a92f80f256616ae0824aa4b66a6167e50a6a4f23a8e99e7`  
		Last Modified: Tue, 18 Jun 2019 23:10:00 GMT  
		Size: 76.5 MB (76466146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2221fbf68bf8b65387eccf5506f749c64afb0dceea2a429221a8451e5d345208
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350044420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f681f8c89c7c11a2a042f8a3fe93f8fba4c9ab397a4e99dd197dff8a2bfa5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6044ecd43ccf5452e37dbb99112074b85138e37ac8ce85b79db4cfaafffa7e`  
		Last Modified: Tue, 18 Jun 2019 23:18:29 GMT  
		Size: 78.0 MB (77981106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:680f73fb7e221992dbdfa691beaac651e69e6f609753116fc5f5718ac42e361d
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
$ docker pull ros@sha256:f7173f583690b60ec7377bb6ea6c7259e9e6b5cb2d30cf91014018e470b9234a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (616953018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b2b517141fc6984a3c1a5c34f3edccd073eaca8148144b55261cedf8717107`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:35:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:42:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846af1da7a0ee06b5a92f80f256616ae0824aa4b66a6167e50a6a4f23a8e99e7`  
		Last Modified: Tue, 18 Jun 2019 23:10:00 GMT  
		Size: 76.5 MB (76466146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80d092b417cf6aee8c59333ccebcf80d5ece6c783885d58e22c9a7da75d5ad4`  
		Last Modified: Tue, 18 Jun 2019 23:12:26 GMT  
		Size: 280.8 MB (280763859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9c3c1790bec8118625f6448cc89ad35d22bb16c4ef6768548a770048673f2454
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.3 MB (641264389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c848bbcac47659c3081696c7c72ec2827a5fb4fffed2f36839a53e5be08ddc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6044ecd43ccf5452e37dbb99112074b85138e37ac8ce85b79db4cfaafffa7e`  
		Last Modified: Tue, 18 Jun 2019 23:18:29 GMT  
		Size: 78.0 MB (77981106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae256e9a8fab75f8e92c6b0b07ec55039b24282c1d0cf6bc3f981439f4f8be63`  
		Last Modified: Tue, 18 Jun 2019 23:21:05 GMT  
		Size: 291.2 MB (291219969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:680f73fb7e221992dbdfa691beaac651e69e6f609753116fc5f5718ac42e361d
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
$ docker pull ros@sha256:f7173f583690b60ec7377bb6ea6c7259e9e6b5cb2d30cf91014018e470b9234a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.0 MB (616953018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b2b517141fc6984a3c1a5c34f3edccd073eaca8148144b55261cedf8717107`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:35:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:42:06 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846af1da7a0ee06b5a92f80f256616ae0824aa4b66a6167e50a6a4f23a8e99e7`  
		Last Modified: Tue, 18 Jun 2019 23:10:00 GMT  
		Size: 76.5 MB (76466146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80d092b417cf6aee8c59333ccebcf80d5ece6c783885d58e22c9a7da75d5ad4`  
		Last Modified: Tue, 18 Jun 2019 23:12:26 GMT  
		Size: 280.8 MB (280763859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9c3c1790bec8118625f6448cc89ad35d22bb16c4ef6768548a770048673f2454
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.3 MB (641264389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c848bbcac47659c3081696c7c72ec2827a5fb4fffed2f36839a53e5be08ddc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:44:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6044ecd43ccf5452e37dbb99112074b85138e37ac8ce85b79db4cfaafffa7e`  
		Last Modified: Tue, 18 Jun 2019 23:18:29 GMT  
		Size: 78.0 MB (77981106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae256e9a8fab75f8e92c6b0b07ec55039b24282c1d0cf6bc3f981439f4f8be63`  
		Last Modified: Tue, 18 Jun 2019 23:21:05 GMT  
		Size: 291.2 MB (291219969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:b522b2d727053122cf1990a1cc5b7be7262e7df44b651d0e69a69de9b31f67db
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
$ docker pull ros@sha256:5e11a566460d68c5f7ae2c3f0d28b3e5560b131a12cce3b6a9c441d1c7766a5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426218758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851ff86b245678861963d4005aafe6361600bcc4247ee98237d611e8639ae821`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:35:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:37:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846af1da7a0ee06b5a92f80f256616ae0824aa4b66a6167e50a6a4f23a8e99e7`  
		Last Modified: Tue, 18 Jun 2019 23:10:00 GMT  
		Size: 76.5 MB (76466146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac68e10ddbf1eaf3035054a39726459124a6b650fbe1b9c672c942818bab5f4`  
		Last Modified: Tue, 18 Jun 2019 23:10:40 GMT  
		Size: 90.0 MB (90029599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:57a3a7300c46c67e0c33e336551a70aed9cdf025a8aa58792eb9f96beeea64b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (443959798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30ecb08f158c1e21182217ba526cc39cd0fad9592dd85fe53e02409616d7036`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:39:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6044ecd43ccf5452e37dbb99112074b85138e37ac8ce85b79db4cfaafffa7e`  
		Last Modified: Tue, 18 Jun 2019 23:18:29 GMT  
		Size: 78.0 MB (77981106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567f5756aa9c93a0a7722cb0f2d80b6c06dc3e95267bed4a8c73140479847827`  
		Last Modified: Tue, 18 Jun 2019 23:19:13 GMT  
		Size: 93.9 MB (93915378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:b522b2d727053122cf1990a1cc5b7be7262e7df44b651d0e69a69de9b31f67db
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
$ docker pull ros@sha256:5e11a566460d68c5f7ae2c3f0d28b3e5560b131a12cce3b6a9c441d1c7766a5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426218758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851ff86b245678861963d4005aafe6361600bcc4247ee98237d611e8639ae821`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:35:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:37:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846af1da7a0ee06b5a92f80f256616ae0824aa4b66a6167e50a6a4f23a8e99e7`  
		Last Modified: Tue, 18 Jun 2019 23:10:00 GMT  
		Size: 76.5 MB (76466146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac68e10ddbf1eaf3035054a39726459124a6b650fbe1b9c672c942818bab5f4`  
		Last Modified: Tue, 18 Jun 2019 23:10:40 GMT  
		Size: 90.0 MB (90029599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:57a3a7300c46c67e0c33e336551a70aed9cdf025a8aa58792eb9f96beeea64b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.0 MB (443959798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30ecb08f158c1e21182217ba526cc39cd0fad9592dd85fe53e02409616d7036`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:39:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6044ecd43ccf5452e37dbb99112074b85138e37ac8ce85b79db4cfaafffa7e`  
		Last Modified: Tue, 18 Jun 2019 23:18:29 GMT  
		Size: 78.0 MB (77981106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:567f5756aa9c93a0a7722cb0f2d80b6c06dc3e95267bed4a8c73140479847827`  
		Last Modified: Tue, 18 Jun 2019 23:19:13 GMT  
		Size: 93.9 MB (93915378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:432adb811e38e465cf7c581f05ca3e7d101b52c8bb26512756c5ae7529091dbd
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
$ docker pull ros@sha256:f8535a05edaee1f44d834d46a39d6968d9ca12a0c02c00fac0d6706a266f64fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336189159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5623ee0f0139a42c0c66c13ed5951265d068e5f3a501c91d3c58345a2a00e1a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:35:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846af1da7a0ee06b5a92f80f256616ae0824aa4b66a6167e50a6a4f23a8e99e7`  
		Last Modified: Tue, 18 Jun 2019 23:10:00 GMT  
		Size: 76.5 MB (76466146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2221fbf68bf8b65387eccf5506f749c64afb0dceea2a429221a8451e5d345208
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350044420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f681f8c89c7c11a2a042f8a3fe93f8fba4c9ab397a4e99dd197dff8a2bfa5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6044ecd43ccf5452e37dbb99112074b85138e37ac8ce85b79db4cfaafffa7e`  
		Last Modified: Tue, 18 Jun 2019 23:18:29 GMT  
		Size: 78.0 MB (77981106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:432adb811e38e465cf7c581f05ca3e7d101b52c8bb26512756c5ae7529091dbd
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
$ docker pull ros@sha256:f8535a05edaee1f44d834d46a39d6968d9ca12a0c02c00fac0d6706a266f64fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336189159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5623ee0f0139a42c0c66c13ed5951265d068e5f3a501c91d3c58345a2a00e1a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:35:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846af1da7a0ee06b5a92f80f256616ae0824aa4b66a6167e50a6a4f23a8e99e7`  
		Last Modified: Tue, 18 Jun 2019 23:10:00 GMT  
		Size: 76.5 MB (76466146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2221fbf68bf8b65387eccf5506f749c64afb0dceea2a429221a8451e5d345208
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350044420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78f681f8c89c7c11a2a042f8a3fe93f8fba4c9ab397a4e99dd197dff8a2bfa5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:37:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6044ecd43ccf5452e37dbb99112074b85138e37ac8ce85b79db4cfaafffa7e`  
		Last Modified: Tue, 18 Jun 2019 23:18:29 GMT  
		Size: 78.0 MB (77981106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:4dd7764b7b28a8ccb260bb3d1996404a334e61ea88253366ba0c4689788b1085
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
$ docker pull ros@sha256:db4e8153dc208e1fcc9f5f2ff87a8f1f4baa1ef95425b5309e74aa8007d435d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259723013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd36ac769c4498bd2b46766a25b355869b42577d8181546cdb8c36519dd54a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e8587e0477bad65e9c32034cfdd199dd0345512bcd1469554101bf6d073c00a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272063314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47113389262f9e64e935d6dda90444d9cca29ba4c5cec34728d69caa19603cdc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:4dd7764b7b28a8ccb260bb3d1996404a334e61ea88253366ba0c4689788b1085
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
$ docker pull ros@sha256:db4e8153dc208e1fcc9f5f2ff87a8f1f4baa1ef95425b5309e74aa8007d435d3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259723013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcd36ac769c4498bd2b46766a25b355869b42577d8181546cdb8c36519dd54a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:31:01 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:33:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:33:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:33:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b72f919a22e5f1b31390a0f742db984e758099222faeef5d5cd1ffde70c18ed`  
		Last Modified: Tue, 18 Jun 2019 23:09:24 GMT  
		Size: 164.6 MB (164638516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ad4188f679e2f5bdce7a957b1b6fa9adce980a9e3edf76f196e89649ebc894`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e8587e0477bad65e9c32034cfdd199dd0345512bcd1469554101bf6d073c00a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272063314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47113389262f9e64e935d6dda90444d9cca29ba4c5cec34728d69caa19603cdc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:33:24 GMT
ENV ROS_DISTRO=kinetic
# Tue, 18 Jun 2019 22:36:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:36:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:36:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:36:06 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9e6653b7a7c3f42409c31559950a9f342aab13fda61b53159dd3c56da9de72`  
		Last Modified: Tue, 18 Jun 2019 23:17:52 GMT  
		Size: 173.9 MB (173913756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c7b27c39eb79b33f0316b89588247605fc805d786c955e6cb5d72f8460e80d`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:10237768c4a5ed9037510d9df59f1d040dac83b34d56c91ca0c72668dfc654d8
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
$ docker pull ros@sha256:3a211c6b7621481f9757eabb94eeda346c56d48f4098829bb034e0491c6a8e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.5 MB (374454762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55cc8c7fe41524ca92604607c368ed409f38137d8b48f4f2f16b8019ce33336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:980269e83a842611e73b04e939dd6c03afc5f195d6f14db0e061632c2a511293
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353274554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98222ed447d02c3b0d17616ed37c28d5c28ef3f002eaa2a0668c6d88f6a9bc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:a0939805f3229f567cdcf9e320ea6d2f93d8cd133b74b069ca3bcd3d3c3aa64e
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
$ docker pull ros@sha256:4d53477826ec0d7c87f9c18cf254cd0ba80e53fe3a96040fdabd5a43b9197c04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336107821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3309c2218ffcf5028172c21c965ccf81bc6aa2c1d2c90b65a5201ee4da87b60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:47:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204733a6fa600a84d9f9dd327e3a407a8855aa6a8d1e85af5bddd47bccc581a7`  
		Last Modified: Tue, 18 Jun 2019 23:14:09 GMT  
		Size: 76.4 MB (76396001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:80ece9e60c182767db1a5eb79fcd86395fc2f3e9a7926ae0a0334652c5ff784d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349919573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea5c82f8ec23b8aa4c56225182ff3bb6a27c8c056e8e613973e908bdef5f2a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d8b6f4bfa890e07090b9af97351c6a66f31a4580f24e85a2de8321181b7cb4`  
		Last Modified: Tue, 18 Jun 2019 23:22:55 GMT  
		Size: 77.9 MB (77890522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:dfb369bf7b30b8e858f070f4bb443fbcc3b88f3a1a12e144b04742e2be524d3b
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
$ docker pull ros@sha256:e0118c68a78183685d6ae4e8826bfce45671ef722b8d89b8f8cc9503dcf1c65c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.4 MB (616424570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc1061514a6841bd83a137955589bbd19a948f0733b4b5f2c25dc6f257044188`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:47:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204733a6fa600a84d9f9dd327e3a407a8855aa6a8d1e85af5bddd47bccc581a7`  
		Last Modified: Tue, 18 Jun 2019 23:14:09 GMT  
		Size: 76.4 MB (76396001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35d9ce0d3f6db8254b7be6cdd904556cc78a836da3aadd076d2616806a30fc6`  
		Last Modified: Tue, 18 Jun 2019 23:16:36 GMT  
		Size: 280.3 MB (280316749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:066467b8d1ee518957b916c220289d7d17899e3a48020f7c2bd888b66c56bbb0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639894036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b05b1a4302b3eb12d3405146ad5019de4188e1ef02e52bb6d81242edf9d1cb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d8b6f4bfa890e07090b9af97351c6a66f31a4580f24e85a2de8321181b7cb4`  
		Last Modified: Tue, 18 Jun 2019 23:22:55 GMT  
		Size: 77.9 MB (77890522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dcb951ece4cf183b256481e0223181c10ad8ba97c6748ceb8d12bcd3373ca4`  
		Last Modified: Tue, 18 Jun 2019 23:25:31 GMT  
		Size: 290.0 MB (289974463 bytes)  
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
$ docker pull ros@sha256:dfb369bf7b30b8e858f070f4bb443fbcc3b88f3a1a12e144b04742e2be524d3b
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
$ docker pull ros@sha256:e0118c68a78183685d6ae4e8826bfce45671ef722b8d89b8f8cc9503dcf1c65c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.4 MB (616424570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc1061514a6841bd83a137955589bbd19a948f0733b4b5f2c25dc6f257044188`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:47:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204733a6fa600a84d9f9dd327e3a407a8855aa6a8d1e85af5bddd47bccc581a7`  
		Last Modified: Tue, 18 Jun 2019 23:14:09 GMT  
		Size: 76.4 MB (76396001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35d9ce0d3f6db8254b7be6cdd904556cc78a836da3aadd076d2616806a30fc6`  
		Last Modified: Tue, 18 Jun 2019 23:16:36 GMT  
		Size: 280.3 MB (280316749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:066467b8d1ee518957b916c220289d7d17899e3a48020f7c2bd888b66c56bbb0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639894036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49b05b1a4302b3eb12d3405146ad5019de4188e1ef02e52bb6d81242edf9d1cb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d8b6f4bfa890e07090b9af97351c6a66f31a4580f24e85a2de8321181b7cb4`  
		Last Modified: Tue, 18 Jun 2019 23:22:55 GMT  
		Size: 77.9 MB (77890522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dcb951ece4cf183b256481e0223181c10ad8ba97c6748ceb8d12bcd3373ca4`  
		Last Modified: Tue, 18 Jun 2019 23:25:31 GMT  
		Size: 290.0 MB (289974463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:7969492ed2e45ba2aecd4552be1b07046ee78f2185e09bd3c24a752e2a40db61
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
$ docker pull ros@sha256:7f490b3fcee883179e4cce3baba3b4b7cf9a120b7128a0177cca0729d061b299
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426203109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7c04aa66de0c0dcd7a49ea414cc020fbae4aceca95e6f33075a0b02944c432`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:47:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:49:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204733a6fa600a84d9f9dd327e3a407a8855aa6a8d1e85af5bddd47bccc581a7`  
		Last Modified: Tue, 18 Jun 2019 23:14:09 GMT  
		Size: 76.4 MB (76396001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fde607eaa699200757a3ec24c36e8553569cea0ce9de2cfeb91058f2b12021`  
		Last Modified: Tue, 18 Jun 2019 23:14:52 GMT  
		Size: 90.1 MB (90095288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f03f6d3ca24819ae5bfab39f695ce25320c62a61a1ca5ef2c1a5abbe15abd114
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443916496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3411dffd0065a22a44906634f1e516860362711f56d630ba81aa4c9297aad4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:50:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d8b6f4bfa890e07090b9af97351c6a66f31a4580f24e85a2de8321181b7cb4`  
		Last Modified: Tue, 18 Jun 2019 23:22:55 GMT  
		Size: 77.9 MB (77890522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8b00ead4219ca346857fcb69741c6b538500e63b5ee15e947f08c44f4de951`  
		Last Modified: Tue, 18 Jun 2019 23:23:38 GMT  
		Size: 94.0 MB (93996923 bytes)  
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
$ docker pull ros@sha256:7969492ed2e45ba2aecd4552be1b07046ee78f2185e09bd3c24a752e2a40db61
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
$ docker pull ros@sha256:7f490b3fcee883179e4cce3baba3b4b7cf9a120b7128a0177cca0729d061b299
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.2 MB (426203109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7c04aa66de0c0dcd7a49ea414cc020fbae4aceca95e6f33075a0b02944c432`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:47:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:49:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204733a6fa600a84d9f9dd327e3a407a8855aa6a8d1e85af5bddd47bccc581a7`  
		Last Modified: Tue, 18 Jun 2019 23:14:09 GMT  
		Size: 76.4 MB (76396001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fde607eaa699200757a3ec24c36e8553569cea0ce9de2cfeb91058f2b12021`  
		Last Modified: Tue, 18 Jun 2019 23:14:52 GMT  
		Size: 90.1 MB (90095288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f03f6d3ca24819ae5bfab39f695ce25320c62a61a1ca5ef2c1a5abbe15abd114
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.9 MB (443916496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3411dffd0065a22a44906634f1e516860362711f56d630ba81aa4c9297aad4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:50:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d8b6f4bfa890e07090b9af97351c6a66f31a4580f24e85a2de8321181b7cb4`  
		Last Modified: Tue, 18 Jun 2019 23:22:55 GMT  
		Size: 77.9 MB (77890522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8b00ead4219ca346857fcb69741c6b538500e63b5ee15e947f08c44f4de951`  
		Last Modified: Tue, 18 Jun 2019 23:23:38 GMT  
		Size: 94.0 MB (93996923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:a0939805f3229f567cdcf9e320ea6d2f93d8cd133b74b069ca3bcd3d3c3aa64e
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
$ docker pull ros@sha256:4d53477826ec0d7c87f9c18cf254cd0ba80e53fe3a96040fdabd5a43b9197c04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336107821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3309c2218ffcf5028172c21c965ccf81bc6aa2c1d2c90b65a5201ee4da87b60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:47:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204733a6fa600a84d9f9dd327e3a407a8855aa6a8d1e85af5bddd47bccc581a7`  
		Last Modified: Tue, 18 Jun 2019 23:14:09 GMT  
		Size: 76.4 MB (76396001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:80ece9e60c182767db1a5eb79fcd86395fc2f3e9a7926ae0a0334652c5ff784d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349919573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea5c82f8ec23b8aa4c56225182ff3bb6a27c8c056e8e613973e908bdef5f2a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d8b6f4bfa890e07090b9af97351c6a66f31a4580f24e85a2de8321181b7cb4`  
		Last Modified: Tue, 18 Jun 2019 23:22:55 GMT  
		Size: 77.9 MB (77890522 bytes)  
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
$ docker pull ros@sha256:a0939805f3229f567cdcf9e320ea6d2f93d8cd133b74b069ca3bcd3d3c3aa64e
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
$ docker pull ros@sha256:4d53477826ec0d7c87f9c18cf254cd0ba80e53fe3a96040fdabd5a43b9197c04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336107821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3309c2218ffcf5028172c21c965ccf81bc6aa2c1d2c90b65a5201ee4da87b60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:47:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204733a6fa600a84d9f9dd327e3a407a8855aa6a8d1e85af5bddd47bccc581a7`  
		Last Modified: Tue, 18 Jun 2019 23:14:09 GMT  
		Size: 76.4 MB (76396001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:80ece9e60c182767db1a5eb79fcd86395fc2f3e9a7926ae0a0334652c5ff784d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349919573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea5c82f8ec23b8aa4c56225182ff3bb6a27c8c056e8e613973e908bdef5f2a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 22:48:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d8b6f4bfa890e07090b9af97351c6a66f31a4580f24e85a2de8321181b7cb4`  
		Last Modified: Tue, 18 Jun 2019 23:22:55 GMT  
		Size: 77.9 MB (77890522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:105d2dbf9615aafac32fb004654c836569fa8b6b8b9d224a1149992d55e06377
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
$ docker pull ros@sha256:871bdbf545f5add0fca9cd9f5573a913072555c198d3df9643f94d9f53adb708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259711820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b4300f44d640785cc2483dcd68afe7c3ce7bca6ef73441ad0f9a793bac0fa0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7c87705f8067130a908cc1b8369204d80b0ee6cbe53b51aa22dcb4429b8f7e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272029051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ae8cef974535be3ebe188df13a037723d5a981e7620d928cae5701ebf1d953`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
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
$ docker pull ros@sha256:105d2dbf9615aafac32fb004654c836569fa8b6b8b9d224a1149992d55e06377
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
$ docker pull ros@sha256:871bdbf545f5add0fca9cd9f5573a913072555c198d3df9643f94d9f53adb708
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259711820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05b4300f44d640785cc2483dcd68afe7c3ce7bca6ef73441ad0f9a793bac0fa0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:00:10 GMT
ADD file:fec39c1129e6533db9c615a06b157d086097dad71bbf9646d94fda33ea3b9e55 in / 
# Tue, 18 Jun 2019 22:00:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:00:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:00:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:00:16 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:29:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:29:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:29:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:30:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:30:41 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:31:00 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:42:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:45:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:45:08 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:45:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:45:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2a522207f17dad6487398e666217b842511b6d0aef5d5d3b8a6c92e28581d60e`  
		Last Modified: Fri, 14 Jun 2019 22:21:08 GMT  
		Size: 38.7 MB (38710547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e59c2ace1d7baaf22d49477f12e41743f37497fbdeed7092b5b847be1d05e9`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23423fd3acc94a25767511b76b252e7fc469334e588905cf449583baab12fcf5`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fb32d384c9241b858083119d34b653c651bda61a0a79679511a3e3ee22ad90`  
		Last Modified: Tue, 18 Jun 2019 22:08:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b599053f35efac08c8482fb1c1d8199ad9dbc5f70d92ec5ec4d3f0bcb8bc33`  
		Last Modified: Tue, 18 Jun 2019 23:08:37 GMT  
		Size: 15.0 MB (14955830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c89bc874ec9a9ed8795f00e60493f922893432dce708c5edb4e1c691c741d12`  
		Last Modified: Tue, 18 Jun 2019 23:08:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a90cc43fca121dac7c120516d05176d1706644070b74a563de64285527088ffd`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4c48276e3758598c926646e99123abd2f1fd06c557ab04e06bbeb9f0722a57`  
		Last Modified: Tue, 18 Jun 2019 23:08:44 GMT  
		Size: 40.9 MB (40941220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7ba9ec9cd78a0b6d9f42cb379f0af24dad2a0a5a7345decbccf6d1c38bca76`  
		Last Modified: Tue, 18 Jun 2019 23:08:28 GMT  
		Size: 456.5 KB (456524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b512cd95a9e4664e1d71635f27ee30ff018ff4b4d2290ceee491562285253392`  
		Last Modified: Tue, 18 Jun 2019 23:13:33 GMT  
		Size: 164.6 MB (164627322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509b208cc34a8d46e9f87ba61b44f45e3b977bc52ddac4f3edc69fbe915141aa`  
		Last Modified: Tue, 18 Jun 2019 23:12:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7c87705f8067130a908cc1b8369204d80b0ee6cbe53b51aa22dcb4429b8f7e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272029051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4ae8cef974535be3ebe188df13a037723d5a981e7620d928cae5701ebf1d953`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:24 GMT
ADD file:395b290afad707e76c379d6d1f14f12f1afc596f54a93e6c7b2a9fd7933e67a5 in / 
# Tue, 18 Jun 2019 21:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:41:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:30 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:31:49 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:31:52 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:31:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:33:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:33:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:33:23 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:44:22 GMT
ENV ROS_DISTRO=lunar
# Tue, 18 Jun 2019 22:46:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:46:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:46:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:46:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6d4d0d1f37de0d4417055235ff4a4ce52439ec078835b8d6c91cecd64d192029`  
		Last Modified: Fri, 14 Jun 2019 14:30:02 GMT  
		Size: 39.8 MB (39790979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b10db5fd500822d1d74c2d604ce345b50cbea31db8f3813f5b166633b8042d`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 470.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45503012c89a34b797c44068bce23b360a1212b5582d4483553249eba85ce075`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078966f8f5cec9611dad9af01d4b52e898763e22fd0facf8a5dd72d48cbe568f`  
		Last Modified: Tue, 18 Jun 2019 21:42:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04e5bb4adb2b8a1b69661eaf5a0ea10d4921b80abccba917a4c1f12b6ec31f8`  
		Last Modified: Tue, 18 Jun 2019 23:16:59 GMT  
		Size: 15.1 MB (15055420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15ff780a9955257dc164d0027fb4249a15902beee76278e0e56f7462ec37bdc`  
		Last Modified: Tue, 18 Jun 2019 23:16:53 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9d30289870e3c2bdb2d4587cfcd67891141efebda5327d144d1a53947dc96`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 5.5 KB (5547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef99bcc20585934b2284334dcb467d875e4fffb763737c1e97725c5032d133a`  
		Last Modified: Tue, 18 Jun 2019 23:17:08 GMT  
		Size: 42.8 MB (42826196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd6d5d21c62ebe9b2f47cc83929e2055154769d9709e55bc954ed628face8486`  
		Last Modified: Tue, 18 Jun 2019 23:16:52 GMT  
		Size: 456.6 KB (456627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776b05ed31cdf7aeba4f94f7c4a3e5f4e1913689680de1a53613b270e9f70bd`  
		Last Modified: Tue, 18 Jun 2019 23:22:20 GMT  
		Size: 173.9 MB (173879492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be9f3815ed66ff9d43803b265c05354e3e8065f6528bf7a32340bd3df78b6ca`  
		Last Modified: Tue, 18 Jun 2019 23:21:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:10237768c4a5ed9037510d9df59f1d040dac83b34d56c91ca0c72668dfc654d8
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
$ docker pull ros@sha256:3a211c6b7621481f9757eabb94eeda346c56d48f4098829bb034e0491c6a8e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.5 MB (374454762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55cc8c7fe41524ca92604607c368ed409f38137d8b48f4f2f16b8019ce33336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:980269e83a842611e73b04e939dd6c03afc5f195d6f14db0e061632c2a511293
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353274554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98222ed447d02c3b0d17616ed37c28d5c28ef3f002eaa2a0668c6d88f6a9bc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:ac4b0a616df9afc4f6a6c049e3c7a502e64d9e17386a4a081170945ba6e903a8
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
$ docker pull ros@sha256:09625fb2afa40802ed78972b6ebbdab470ee3d9aab0caf7a9c591d1b743d8bdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.0 MB (677950878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd2d4173799caab8755fa7b5070db7d2d84ae7d085946ccda8a776b8c7b6187`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:07:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ddcc9565f91077fd51cd1766a3593ac180f950d278b463cb14626c7dd96699`  
		Last Modified: Tue, 18 Jun 2019 23:20:54 GMT  
		Size: 303.5 MB (303496116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:451088e9ff7dd46157204c3fb9ef5c866f223062ac6886ff332f204de4c5ca1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.4 MB (689350338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85de5c47d6f17fa14546d1d50b213dfc6b9e4f0fe1d5ce5758b82557407fa9ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:08:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf67f6b6373e88b4879d00a3d380c5dc3e3fd60ac248acd35fed696087c009c`  
		Last Modified: Tue, 18 Jun 2019 23:29:55 GMT  
		Size: 336.1 MB (336075784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:ac4b0a616df9afc4f6a6c049e3c7a502e64d9e17386a4a081170945ba6e903a8
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
$ docker pull ros@sha256:09625fb2afa40802ed78972b6ebbdab470ee3d9aab0caf7a9c591d1b743d8bdf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.0 MB (677950878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd2d4173799caab8755fa7b5070db7d2d84ae7d085946ccda8a776b8c7b6187`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:07:38 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ddcc9565f91077fd51cd1766a3593ac180f950d278b463cb14626c7dd96699`  
		Last Modified: Tue, 18 Jun 2019 23:20:54 GMT  
		Size: 303.5 MB (303496116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:451088e9ff7dd46157204c3fb9ef5c866f223062ac6886ff332f204de4c5ca1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.4 MB (689350338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85de5c47d6f17fa14546d1d50b213dfc6b9e4f0fe1d5ce5758b82557407fa9ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:08:23 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf67f6b6373e88b4879d00a3d380c5dc3e3fd60ac248acd35fed696087c009c`  
		Last Modified: Tue, 18 Jun 2019 23:29:55 GMT  
		Size: 336.1 MB (336075784 bytes)  
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
$ docker pull ros@sha256:89d639949aa77136fc2fc884fe95d31084fc6554579910e3722ae86ed5c49b4b
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
$ docker pull ros@sha256:e75fe1d8f1639dbfeb98e41de289d515f97219ffb9d8512e7768b66d1ec8a297
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.9 MB (407857662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa0d88340fcff3a15a1405a3221f19805562cdfbdab507c273d06fd0db70e22`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:02:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1022be15cef55efc329aef1629b4547c45c97be672e16b0c238e2c14d8eb7fef`  
		Last Modified: Tue, 18 Jun 2019 23:19:01 GMT  
		Size: 33.4 MB (33402900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e938e376ea6efff41cf4e056f122576ba9eb191ef60a8e5801d50873fe107cea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.9 MB (388850366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af74b941fdcfdaf65377175a48d7eca6155d2ee8ccd3820e074bacd79d51b24a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:03:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c523ace5927b0654c4c37370768fe7cfccc0cb85009213856a5aa484a329bc2`  
		Last Modified: Tue, 18 Jun 2019 23:27:53 GMT  
		Size: 35.6 MB (35575812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:89d639949aa77136fc2fc884fe95d31084fc6554579910e3722ae86ed5c49b4b
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
$ docker pull ros@sha256:e75fe1d8f1639dbfeb98e41de289d515f97219ffb9d8512e7768b66d1ec8a297
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.9 MB (407857662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efa0d88340fcff3a15a1405a3221f19805562cdfbdab507c273d06fd0db70e22`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:02:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1022be15cef55efc329aef1629b4547c45c97be672e16b0c238e2c14d8eb7fef`  
		Last Modified: Tue, 18 Jun 2019 23:19:01 GMT  
		Size: 33.4 MB (33402900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e938e376ea6efff41cf4e056f122576ba9eb191ef60a8e5801d50873fe107cea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.9 MB (388850366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af74b941fdcfdaf65377175a48d7eca6155d2ee8ccd3820e074bacd79d51b24a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:03:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c523ace5927b0654c4c37370768fe7cfccc0cb85009213856a5aa484a329bc2`  
		Last Modified: Tue, 18 Jun 2019 23:27:53 GMT  
		Size: 35.6 MB (35575812 bytes)  
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
$ docker pull ros@sha256:10237768c4a5ed9037510d9df59f1d040dac83b34d56c91ca0c72668dfc654d8
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
$ docker pull ros@sha256:3a211c6b7621481f9757eabb94eeda346c56d48f4098829bb034e0491c6a8e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.5 MB (374454762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55cc8c7fe41524ca92604607c368ed409f38137d8b48f4f2f16b8019ce33336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:980269e83a842611e73b04e939dd6c03afc5f195d6f14db0e061632c2a511293
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353274554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98222ed447d02c3b0d17616ed37c28d5c28ef3f002eaa2a0668c6d88f6a9bc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:10237768c4a5ed9037510d9df59f1d040dac83b34d56c91ca0c72668dfc654d8
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
$ docker pull ros@sha256:3a211c6b7621481f9757eabb94eeda346c56d48f4098829bb034e0491c6a8e81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.5 MB (374454762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55cc8c7fe41524ca92604607c368ed409f38137d8b48f4f2f16b8019ce33336`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:05 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a2743ae207d33e6bc46005358c687fd5a25d216d6eb09c4facaf541b57ec1`  
		Last Modified: Tue, 18 Jun 2019 23:18:33 GMT  
		Size: 62.1 MB (62103346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:980269e83a842611e73b04e939dd6c03afc5f195d6f14db0e061632c2a511293
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353274554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a98222ed447d02c3b0d17616ed37c28d5c28ef3f002eaa2a0668c6d88f6a9bc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
# Tue, 18 Jun 2019 23:01:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955006e8bc5213e0d44652b2a7fa9bce9568d474fdc428eae3d5a945b43d379e`  
		Last Modified: Tue, 18 Jun 2019 23:27:26 GMT  
		Size: 65.6 MB (65585279 bytes)  
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
$ docker pull ros@sha256:e85f1ec9688d08807f012f35b379cb3abf27afd92258ac1e45d42bf59762e62d
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
$ docker pull ros@sha256:f65146189c2fc07db557faf3851b92bae8285f541e6dfd220f455bbca6ea4cea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312351416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce79bad2c72beae17dfde741f1cf84c1fe01fbb05068d295a55e6866cb4b890`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:20d8aae26048ad07502d6b5d13b5bff35f2adcdebd7bf699da7574b078e9962d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287689275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc0b2f651538391249cb2ffe64714638f62fa94f6be3bd8e527e2f0f710fa8a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:e85f1ec9688d08807f012f35b379cb3abf27afd92258ac1e45d42bf59762e62d
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
$ docker pull ros@sha256:f65146189c2fc07db557faf3851b92bae8285f541e6dfd220f455bbca6ea4cea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312351416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce79bad2c72beae17dfde741f1cf84c1fe01fbb05068d295a55e6866cb4b890`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:58:19 GMT
ADD file:f97088f30dc73833af9b7e84a77cc26a7d489c3b106250bc1c67ca78ecf34401 in / 
# Tue, 18 Jun 2019 21:58:21 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:58:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:58:25 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 21:59:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 21:59:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:54:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:54:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:55:25 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:27 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:55:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:55:47 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:55:47 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 22:59:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:59:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 22:59:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 22:59:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:890bdf70a444971b59240478f3073e23d165e3ba40106d3d4e94a57e52f9f715`  
		Last Modified: Fri, 14 Jun 2019 14:40:30 GMT  
		Size: 22.3 MB (22279501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7984ec58db25dba3b1eb769446c440c608e2a35869a13b6a57ba069134f28e1`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 35.5 KB (35452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd89700a6c256d7ddae21c28adf3ded21abb73838795b0a1a5c3b12556da0b`  
		Last Modified: Tue, 18 Jun 2019 22:00:38 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0af11110095b961ce4addaca6fbf8afe199d233b510f48cdd196b4c0b4029576`  
		Last Modified: Tue, 18 Jun 2019 22:00:41 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afc2261f1deee1c2830b80945182d785d1438b6fc3b549d4bb64dec9011d79`  
		Last Modified: Tue, 18 Jun 2019 23:16:51 GMT  
		Size: 837.4 KB (837379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:634c3f99130429f09844353284c25e0897018c2d9dafdd1c55f7c59f16bf8fb1`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 13.4 MB (13444452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0611cafb691dc24df8658c177191f9d0e07f33560be3c29ef35116a6b502e39`  
		Last Modified: Tue, 18 Jun 2019 23:16:55 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89502c1fd1face592a10673992ee25b7ebcbe552180827776476ee7a3afbaf7f`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e048ea9d2e9670ad314b2e479d78bfdcf8685c616b046d8da850119cf813754`  
		Last Modified: Tue, 18 Jun 2019 23:17:05 GMT  
		Size: 42.3 MB (42286722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4142a3b30b71f820c689b1a05e9c9346f1e22218c39dd0e2888fd44ea2b1b2`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 456.5 KB (456531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adfea0d4324397e518427272ca9ebfcfc951d10a6758e0ffe123bd50e1e59ff`  
		Last Modified: Tue, 18 Jun 2019 23:18:01 GMT  
		Size: 233.0 MB (233003271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a3e1bfbadfb4099feed5398d0ac8552a2c118ed13de76656f53c2cdb143627`  
		Last Modified: Tue, 18 Jun 2019 23:16:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:20d8aae26048ad07502d6b5d13b5bff35f2adcdebd7bf699da7574b078e9962d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287689275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcc0b2f651538391249cb2ffe64714638f62fa94f6be3bd8e527e2f0f710fa8a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:20 GMT
ADD file:5a85b2cf366cbf793b3cd89f16906c1221128e020868bf7593cf85df20370c31 in / 
# Tue, 18 Jun 2019 21:40:22 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:26 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:25:07 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:25:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:55:30 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
# Tue, 18 Jun 2019 22:55:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 18 Jun 2019 22:56:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:56:38 GMT
ENV LANG=C.UTF-8
# Tue, 18 Jun 2019 22:56:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 18 Jun 2019 22:56:57 GMT
RUN rosdep init     && rosdep update
# Tue, 18 Jun 2019 22:56:57 GMT
ENV ROS_DISTRO=melodic
# Tue, 18 Jun 2019 23:00:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:00:15 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 18 Jun 2019 23:00:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 18 Jun 2019 23:00:18 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:85df13e07ac866f0749412605b4d04aef859d2d116979e1dad9da5093585ce3c`  
		Last Modified: Fri, 14 Jun 2019 14:38:29 GMT  
		Size: 23.7 MB (23704318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8627bf1c6512dd26e72f564465b94d24232e3221dc649211b6c2169cd9bae0f7`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 35.2 KB (35201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c99ec04f469874c69bd01d057f54593e5346d90cfba712152008d76624217ddb`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc2e75663b5f54850089251d728dea5cb0b29b1e95e1bc0785c801bd2dc3092`  
		Last Modified: Tue, 18 Jun 2019 21:41:45 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bec2cd4efc80f49bf9f4185bc3db9f59340ee564e7743e69d0b3679658d5d5`  
		Last Modified: Tue, 18 Jun 2019 22:32:53 GMT  
		Size: 837.1 KB (837142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0587d15e190ac419a3e2fbfcb04b33997dd00aca54129649c0713b1a2cc8268f`  
		Last Modified: Tue, 18 Jun 2019 22:33:04 GMT  
		Size: 14.0 MB (14038197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5d4c4ea38965488e5d644cfde209ac586efff1ba774e7e43e463235e153b54`  
		Last Modified: Tue, 18 Jun 2019 23:25:47 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d56a087f05c5f62c449c8883f2b98263d564330949d2df0b8b88e46fd49c6d2`  
		Last Modified: Tue, 18 Jun 2019 23:25:46 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f7381ce8adfd0a90d8e7bcfda542e9897bac9feb89c2162fe2e662fd2d1cc9`  
		Last Modified: Tue, 18 Jun 2019 23:26:00 GMT  
		Size: 44.9 MB (44895946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e163e68b40ee20407e249177e259107fd5f035bfaaf1f0be091edb55aabb8`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 456.6 KB (456625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6667c604134dc158cd6c5ea09a256c8121d82c1edcd7e8b34dbe665e806a49b1`  
		Last Modified: Tue, 18 Jun 2019 23:26:53 GMT  
		Size: 203.7 MB (203713742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f73a9a9ce90849388c851bda4cfc03eb2bcc51f8f9bfc58e2bb06f3b207aee`  
		Last Modified: Tue, 18 Jun 2019 23:25:44 GMT  
		Size: 194.0 B  
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
