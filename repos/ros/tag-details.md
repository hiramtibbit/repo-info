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
$ docker pull ros@sha256:09aebdc13e39e2c9f67982aa73afd23fa4c4026e283fcb5fac127c19502e0ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent` - linux; amd64

```console
$ docker pull ros@sha256:9370c67b514a35e6a4124081d7d319f83e94d7a841c8bd5758215e4b4c85dea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339113445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ce07a8024b4bd5c343c24f8d76758b765608899e23ab4b895d2c5e23db928f`
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
# Fri, 11 Jan 2019 23:21:04 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:21:06 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:21:07 GMT
ENV ROS_DISTRO=ardent
# Fri, 11 Jan 2019 23:21:59 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:22:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:22:00 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:23:23 GMT
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
	-	`sha256:3364f9da5874286d0cf67680691dd3f244a9aacb9d553e01f567075cd0b5ad73`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 930.0 KB (929953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd449fe554eebb9419d6ef83beff72a98dbd4da186c3e7d33a651e5bffa736f6`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 113.8 KB (113778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23b081890fa03d90d65403ac5542dc4494b7fe89380c3db8f6b658435621b5`  
		Last Modified: Fri, 11 Jan 2019 23:26:32 GMT  
		Size: 51.7 MB (51706033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4400d9c3e4590b14b3a34a72fb8989338c252f0d924ca31647e4edf7d793e9`  
		Last Modified: Fri, 11 Jan 2019 23:26:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b25d2812b6db71e46931d7bf2ae92872246f64a05460dc224504473ca548aa`  
		Last Modified: Fri, 11 Jan 2019 23:26:51 GMT  
		Size: 80.0 MB (79968519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:431a7a82c247a5d9a3dff37f21ae0c5738ca01e4e48c048c14c7dcc72bf073e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277784780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1799dc375e617e01ec55ac4d675d6d7b0baf75b96706f55f64758cb64413b00`
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
# Sat, 12 Jan 2019 10:24:15 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:24:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:24:30 GMT
ENV ROS_DISTRO=ardent
# Sat, 12 Jan 2019 10:29:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:29:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:29:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:29:37 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:33:49 GMT
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
	-	`sha256:75c20ee329e4eca837317147ded8b0941467ea0df09d77d66d48f8da200823da`  
		Last Modified: Sat, 12 Jan 2019 10:45:15 GMT  
		Size: 935.2 KB (935239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eec33612c7f12a34d56efcb8d62aadd1225308335493060ce7b381d713ab3c`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 113.8 KB (113786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a47978131a3edb781031d58eda744b942a7e27fcb478129031e05c821477f3f`  
		Last Modified: Sat, 12 Jan 2019 10:45:37 GMT  
		Size: 50.1 MB (50094751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdb10d68a625cd243b8cf8387ada53f7596eade45857ea04261fb8568df51ab`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dfe057bfef42574bd1a814ea99da3e652af85404501d7a0115a4821bd8dd13`  
		Last Modified: Sat, 12 Jan 2019 10:46:20 GMT  
		Size: 77.6 MB (77644510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-base`

```console
$ docker pull ros@sha256:09aebdc13e39e2c9f67982aa73afd23fa4c4026e283fcb5fac127c19502e0ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:9370c67b514a35e6a4124081d7d319f83e94d7a841c8bd5758215e4b4c85dea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339113445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ce07a8024b4bd5c343c24f8d76758b765608899e23ab4b895d2c5e23db928f`
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
# Fri, 11 Jan 2019 23:21:04 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:21:06 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:21:07 GMT
ENV ROS_DISTRO=ardent
# Fri, 11 Jan 2019 23:21:59 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:22:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:22:00 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:23:23 GMT
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
	-	`sha256:3364f9da5874286d0cf67680691dd3f244a9aacb9d553e01f567075cd0b5ad73`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 930.0 KB (929953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd449fe554eebb9419d6ef83beff72a98dbd4da186c3e7d33a651e5bffa736f6`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 113.8 KB (113778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23b081890fa03d90d65403ac5542dc4494b7fe89380c3db8f6b658435621b5`  
		Last Modified: Fri, 11 Jan 2019 23:26:32 GMT  
		Size: 51.7 MB (51706033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4400d9c3e4590b14b3a34a72fb8989338c252f0d924ca31647e4edf7d793e9`  
		Last Modified: Fri, 11 Jan 2019 23:26:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b25d2812b6db71e46931d7bf2ae92872246f64a05460dc224504473ca548aa`  
		Last Modified: Fri, 11 Jan 2019 23:26:51 GMT  
		Size: 80.0 MB (79968519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:431a7a82c247a5d9a3dff37f21ae0c5738ca01e4e48c048c14c7dcc72bf073e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277784780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1799dc375e617e01ec55ac4d675d6d7b0baf75b96706f55f64758cb64413b00`
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
# Sat, 12 Jan 2019 10:24:15 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:24:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:24:30 GMT
ENV ROS_DISTRO=ardent
# Sat, 12 Jan 2019 10:29:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:29:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:29:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:29:37 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:33:49 GMT
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
	-	`sha256:75c20ee329e4eca837317147ded8b0941467ea0df09d77d66d48f8da200823da`  
		Last Modified: Sat, 12 Jan 2019 10:45:15 GMT  
		Size: 935.2 KB (935239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eec33612c7f12a34d56efcb8d62aadd1225308335493060ce7b381d713ab3c`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 113.8 KB (113786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a47978131a3edb781031d58eda744b942a7e27fcb478129031e05c821477f3f`  
		Last Modified: Sat, 12 Jan 2019 10:45:37 GMT  
		Size: 50.1 MB (50094751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdb10d68a625cd243b8cf8387ada53f7596eade45857ea04261fb8568df51ab`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dfe057bfef42574bd1a814ea99da3e652af85404501d7a0115a4821bd8dd13`  
		Last Modified: Sat, 12 Jan 2019 10:46:20 GMT  
		Size: 77.6 MB (77644510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-base-xenial`

```console
$ docker pull ros@sha256:09aebdc13e39e2c9f67982aa73afd23fa4c4026e283fcb5fac127c19502e0ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:9370c67b514a35e6a4124081d7d319f83e94d7a841c8bd5758215e4b4c85dea8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.1 MB (339113445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41ce07a8024b4bd5c343c24f8d76758b765608899e23ab4b895d2c5e23db928f`
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
# Fri, 11 Jan 2019 23:21:04 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:21:06 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:21:07 GMT
ENV ROS_DISTRO=ardent
# Fri, 11 Jan 2019 23:21:59 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:22:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:22:00 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:23:23 GMT
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
	-	`sha256:3364f9da5874286d0cf67680691dd3f244a9aacb9d553e01f567075cd0b5ad73`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 930.0 KB (929953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd449fe554eebb9419d6ef83beff72a98dbd4da186c3e7d33a651e5bffa736f6`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 113.8 KB (113778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23b081890fa03d90d65403ac5542dc4494b7fe89380c3db8f6b658435621b5`  
		Last Modified: Fri, 11 Jan 2019 23:26:32 GMT  
		Size: 51.7 MB (51706033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4400d9c3e4590b14b3a34a72fb8989338c252f0d924ca31647e4edf7d793e9`  
		Last Modified: Fri, 11 Jan 2019 23:26:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6b25d2812b6db71e46931d7bf2ae92872246f64a05460dc224504473ca548aa`  
		Last Modified: Fri, 11 Jan 2019 23:26:51 GMT  
		Size: 80.0 MB (79968519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:431a7a82c247a5d9a3dff37f21ae0c5738ca01e4e48c048c14c7dcc72bf073e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277784780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1799dc375e617e01ec55ac4d675d6d7b0baf75b96706f55f64758cb64413b00`
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
# Sat, 12 Jan 2019 10:24:15 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:24:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:24:30 GMT
ENV ROS_DISTRO=ardent
# Sat, 12 Jan 2019 10:29:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:29:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:29:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:29:37 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:33:49 GMT
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
	-	`sha256:75c20ee329e4eca837317147ded8b0941467ea0df09d77d66d48f8da200823da`  
		Last Modified: Sat, 12 Jan 2019 10:45:15 GMT  
		Size: 935.2 KB (935239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eec33612c7f12a34d56efcb8d62aadd1225308335493060ce7b381d713ab3c`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 113.8 KB (113786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a47978131a3edb781031d58eda744b942a7e27fcb478129031e05c821477f3f`  
		Last Modified: Sat, 12 Jan 2019 10:45:37 GMT  
		Size: 50.1 MB (50094751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdb10d68a625cd243b8cf8387ada53f7596eade45857ea04261fb8568df51ab`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dfe057bfef42574bd1a814ea99da3e652af85404501d7a0115a4821bd8dd13`  
		Last Modified: Sat, 12 Jan 2019 10:46:20 GMT  
		Size: 77.6 MB (77644510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-core`

```console
$ docker pull ros@sha256:34af61c0c66e0f8865809be7074a7095a307f41ce3f02c9b7fe3778d70642bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:0d5da9dec613631c9e9415da0e4670a319e547f15a67aa8e729ef8ed74156347
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259144926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120d7627674fabb0adb5902b48359ff1a55a2f8a5bbbf1a65db84f713017acd3`
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
# Fri, 11 Jan 2019 23:21:04 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:21:06 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:21:07 GMT
ENV ROS_DISTRO=ardent
# Fri, 11 Jan 2019 23:21:59 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:22:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:22:00 GMT
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
	-	`sha256:3364f9da5874286d0cf67680691dd3f244a9aacb9d553e01f567075cd0b5ad73`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 930.0 KB (929953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd449fe554eebb9419d6ef83beff72a98dbd4da186c3e7d33a651e5bffa736f6`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 113.8 KB (113778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23b081890fa03d90d65403ac5542dc4494b7fe89380c3db8f6b658435621b5`  
		Last Modified: Fri, 11 Jan 2019 23:26:32 GMT  
		Size: 51.7 MB (51706033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4400d9c3e4590b14b3a34a72fb8989338c252f0d924ca31647e4edf7d793e9`  
		Last Modified: Fri, 11 Jan 2019 23:26:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e119680cfe50ec038b34335379242819c00c3bf5dd8fe1627c1871f49e9419c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200140270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89102ab6ec91ef94a8e1d3eb15f1386470caa9f2b10c0c7d0aae3c96b8770315`
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
# Sat, 12 Jan 2019 10:24:15 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:24:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:24:30 GMT
ENV ROS_DISTRO=ardent
# Sat, 12 Jan 2019 10:29:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:29:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:29:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:29:37 GMT
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
	-	`sha256:75c20ee329e4eca837317147ded8b0941467ea0df09d77d66d48f8da200823da`  
		Last Modified: Sat, 12 Jan 2019 10:45:15 GMT  
		Size: 935.2 KB (935239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eec33612c7f12a34d56efcb8d62aadd1225308335493060ce7b381d713ab3c`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 113.8 KB (113786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a47978131a3edb781031d58eda744b942a7e27fcb478129031e05c821477f3f`  
		Last Modified: Sat, 12 Jan 2019 10:45:37 GMT  
		Size: 50.1 MB (50094751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdb10d68a625cd243b8cf8387ada53f7596eade45857ea04261fb8568df51ab`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:ardent-ros-core-xenial`

```console
$ docker pull ros@sha256:34af61c0c66e0f8865809be7074a7095a307f41ce3f02c9b7fe3778d70642bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:ardent-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:0d5da9dec613631c9e9415da0e4670a319e547f15a67aa8e729ef8ed74156347
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259144926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:120d7627674fabb0adb5902b48359ff1a55a2f8a5bbbf1a65db84f713017acd3`
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
# Fri, 11 Jan 2019 23:21:04 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:21:06 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:21:07 GMT
ENV ROS_DISTRO=ardent
# Fri, 11 Jan 2019 23:21:59 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:22:00 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:22:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:22:00 GMT
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
	-	`sha256:3364f9da5874286d0cf67680691dd3f244a9aacb9d553e01f567075cd0b5ad73`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 930.0 KB (929953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd449fe554eebb9419d6ef83beff72a98dbd4da186c3e7d33a651e5bffa736f6`  
		Last Modified: Fri, 11 Jan 2019 23:26:22 GMT  
		Size: 113.8 KB (113778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb23b081890fa03d90d65403ac5542dc4494b7fe89380c3db8f6b658435621b5`  
		Last Modified: Fri, 11 Jan 2019 23:26:32 GMT  
		Size: 51.7 MB (51706033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4400d9c3e4590b14b3a34a72fb8989338c252f0d924ca31647e4edf7d793e9`  
		Last Modified: Fri, 11 Jan 2019 23:26:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:ardent-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e119680cfe50ec038b34335379242819c00c3bf5dd8fe1627c1871f49e9419c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200140270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89102ab6ec91ef94a8e1d3eb15f1386470caa9f2b10c0c7d0aae3c96b8770315`
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
# Sat, 12 Jan 2019 10:24:15 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:24:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:24:30 GMT
ENV ROS_DISTRO=ardent
# Sat, 12 Jan 2019 10:29:34 GMT
RUN apt-get update && apt-get install -y     ros-ardent-ros-core=0.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:29:36 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:29:37 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:29:37 GMT
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
	-	`sha256:75c20ee329e4eca837317147ded8b0941467ea0df09d77d66d48f8da200823da`  
		Last Modified: Sat, 12 Jan 2019 10:45:15 GMT  
		Size: 935.2 KB (935239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eec33612c7f12a34d56efcb8d62aadd1225308335493060ce7b381d713ab3c`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 113.8 KB (113786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a47978131a3edb781031d58eda744b942a7e27fcb478129031e05c821477f3f`  
		Last Modified: Sat, 12 Jan 2019 10:45:37 GMT  
		Size: 50.1 MB (50094751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acdb10d68a625cd243b8cf8387ada53f7596eade45857ea04261fb8568df51ab`  
		Last Modified: Sat, 12 Jan 2019 10:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy`

```console
$ docker pull ros@sha256:6554da7494a951f54a42fe980c657e8804fbf230ee33bc32be15c46bca4c0474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:29ba1acecc66d8c6e10b9307207cb234b78e01ddec5dc398ddbd198c090c2b7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274581308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743b16865451dad4140df93dda43ccb0e56e49dbe3347106de569b770bf8883b`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:23:45 GMT
ENV ROS_DISTRO=bouncy
# Fri, 11 Jan 2019 23:24:42 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:24:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:24:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:24:42 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:25:06 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3883fcf0b8b75fe9f9d6267fd54474b20a0bfd1f50078f25703ab102f01c46`  
		Last Modified: Fri, 11 Jan 2019 23:27:08 GMT  
		Size: 47.6 MB (47647329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0606ed595866df8003ea81de5e0a4bf779fe8ef9d55bbf354914c2089dcec5d`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dc0ea3a6bde07ca5ce785f998716dbb5635f26e48b9c04059e135ba3a4a436`  
		Last Modified: Fri, 11 Jan 2019 23:27:14 GMT  
		Size: 3.1 MB (3134189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9cd849617ebac198b325c33022a38f5dc5e40e1df9ee63966bb2801eb05021c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204896648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0831ac1043b42a093b793b114f9b525cead5a3bcbf8cdb4dfa89742717939761`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:35:30 GMT
ENV ROS_DISTRO=bouncy
# Sat, 12 Jan 2019 10:38:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:38:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:38:09 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:38:52 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a799cdab62a26dc454a0f862a05a7ba15e39d71580a8f96f9b508fdbe473a8`  
		Last Modified: Sat, 12 Jan 2019 10:46:50 GMT  
		Size: 37.6 MB (37647055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a448866c8b5ceded10a0dad09c5296eaf3795af720d950f87b92397d3dcf2e67`  
		Last Modified: Sat, 12 Jan 2019 10:46:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530f858780458633dbdb4056c142bc4c4b4ecaba3afc9d73e54e7df7bada1e74`  
		Last Modified: Sat, 12 Jan 2019 10:47:01 GMT  
		Size: 2.9 MB (2891295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:6554da7494a951f54a42fe980c657e8804fbf230ee33bc32be15c46bca4c0474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:29ba1acecc66d8c6e10b9307207cb234b78e01ddec5dc398ddbd198c090c2b7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274581308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743b16865451dad4140df93dda43ccb0e56e49dbe3347106de569b770bf8883b`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:23:45 GMT
ENV ROS_DISTRO=bouncy
# Fri, 11 Jan 2019 23:24:42 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:24:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:24:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:24:42 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:25:06 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3883fcf0b8b75fe9f9d6267fd54474b20a0bfd1f50078f25703ab102f01c46`  
		Last Modified: Fri, 11 Jan 2019 23:27:08 GMT  
		Size: 47.6 MB (47647329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0606ed595866df8003ea81de5e0a4bf779fe8ef9d55bbf354914c2089dcec5d`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dc0ea3a6bde07ca5ce785f998716dbb5635f26e48b9c04059e135ba3a4a436`  
		Last Modified: Fri, 11 Jan 2019 23:27:14 GMT  
		Size: 3.1 MB (3134189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9cd849617ebac198b325c33022a38f5dc5e40e1df9ee63966bb2801eb05021c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204896648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0831ac1043b42a093b793b114f9b525cead5a3bcbf8cdb4dfa89742717939761`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:35:30 GMT
ENV ROS_DISTRO=bouncy
# Sat, 12 Jan 2019 10:38:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:38:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:38:09 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:38:52 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a799cdab62a26dc454a0f862a05a7ba15e39d71580a8f96f9b508fdbe473a8`  
		Last Modified: Sat, 12 Jan 2019 10:46:50 GMT  
		Size: 37.6 MB (37647055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a448866c8b5ceded10a0dad09c5296eaf3795af720d950f87b92397d3dcf2e67`  
		Last Modified: Sat, 12 Jan 2019 10:46:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530f858780458633dbdb4056c142bc4c4b4ecaba3afc9d73e54e7df7bada1e74`  
		Last Modified: Sat, 12 Jan 2019 10:47:01 GMT  
		Size: 2.9 MB (2891295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:6554da7494a951f54a42fe980c657e8804fbf230ee33bc32be15c46bca4c0474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:29ba1acecc66d8c6e10b9307207cb234b78e01ddec5dc398ddbd198c090c2b7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274581308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:743b16865451dad4140df93dda43ccb0e56e49dbe3347106de569b770bf8883b`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:23:45 GMT
ENV ROS_DISTRO=bouncy
# Fri, 11 Jan 2019 23:24:42 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:24:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:24:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:24:42 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:25:06 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3883fcf0b8b75fe9f9d6267fd54474b20a0bfd1f50078f25703ab102f01c46`  
		Last Modified: Fri, 11 Jan 2019 23:27:08 GMT  
		Size: 47.6 MB (47647329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0606ed595866df8003ea81de5e0a4bf779fe8ef9d55bbf354914c2089dcec5d`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dc0ea3a6bde07ca5ce785f998716dbb5635f26e48b9c04059e135ba3a4a436`  
		Last Modified: Fri, 11 Jan 2019 23:27:14 GMT  
		Size: 3.1 MB (3134189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9cd849617ebac198b325c33022a38f5dc5e40e1df9ee63966bb2801eb05021c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204896648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0831ac1043b42a093b793b114f9b525cead5a3bcbf8cdb4dfa89742717939761`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:35:30 GMT
ENV ROS_DISTRO=bouncy
# Sat, 12 Jan 2019 10:38:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:38:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:38:09 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:38:52 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a799cdab62a26dc454a0f862a05a7ba15e39d71580a8f96f9b508fdbe473a8`  
		Last Modified: Sat, 12 Jan 2019 10:46:50 GMT  
		Size: 37.6 MB (37647055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a448866c8b5ceded10a0dad09c5296eaf3795af720d950f87b92397d3dcf2e67`  
		Last Modified: Sat, 12 Jan 2019 10:46:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:530f858780458633dbdb4056c142bc4c4b4ecaba3afc9d73e54e7df7bada1e74`  
		Last Modified: Sat, 12 Jan 2019 10:47:01 GMT  
		Size: 2.9 MB (2891295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:664061c9c8f0155507585a7516261534594f48714468d3195305a5449cf3efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:bf505aad9e557bd2eaed152c4901356d8d34fda0e91cb4692645a80a8e92030f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271447119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9775ac00de5dc2ca5c2ea4c2f56a8f7e62690e332ff2a742dd54baabcd47754`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:23:45 GMT
ENV ROS_DISTRO=bouncy
# Fri, 11 Jan 2019 23:24:42 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:24:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:24:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:24:42 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3883fcf0b8b75fe9f9d6267fd54474b20a0bfd1f50078f25703ab102f01c46`  
		Last Modified: Fri, 11 Jan 2019 23:27:08 GMT  
		Size: 47.6 MB (47647329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0606ed595866df8003ea81de5e0a4bf779fe8ef9d55bbf354914c2089dcec5d`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:12979dc0e33795c95311dab5abd11bed8c0fe1cee94e178ffe54430f028ac232
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202005353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27cdae51f9430cc77202e95e4968a813783d755fd0f9279016b31ea4100811ca`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:35:30 GMT
ENV ROS_DISTRO=bouncy
# Sat, 12 Jan 2019 10:38:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:38:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:38:09 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a799cdab62a26dc454a0f862a05a7ba15e39d71580a8f96f9b508fdbe473a8`  
		Last Modified: Sat, 12 Jan 2019 10:46:50 GMT  
		Size: 37.6 MB (37647055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a448866c8b5ceded10a0dad09c5296eaf3795af720d950f87b92397d3dcf2e67`  
		Last Modified: Sat, 12 Jan 2019 10:46:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:664061c9c8f0155507585a7516261534594f48714468d3195305a5449cf3efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:bf505aad9e557bd2eaed152c4901356d8d34fda0e91cb4692645a80a8e92030f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271447119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9775ac00de5dc2ca5c2ea4c2f56a8f7e62690e332ff2a742dd54baabcd47754`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:23:45 GMT
ENV ROS_DISTRO=bouncy
# Fri, 11 Jan 2019 23:24:42 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:24:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:24:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:24:42 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e3883fcf0b8b75fe9f9d6267fd54474b20a0bfd1f50078f25703ab102f01c46`  
		Last Modified: Fri, 11 Jan 2019 23:27:08 GMT  
		Size: 47.6 MB (47647329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0606ed595866df8003ea81de5e0a4bf779fe8ef9d55bbf354914c2089dcec5d`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:12979dc0e33795c95311dab5abd11bed8c0fe1cee94e178ffe54430f028ac232
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.0 MB (202005353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27cdae51f9430cc77202e95e4968a813783d755fd0f9279016b31ea4100811ca`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:35:30 GMT
ENV ROS_DISTRO=bouncy
# Sat, 12 Jan 2019 10:38:06 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:38:07 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:38:08 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:38:09 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a799cdab62a26dc454a0f862a05a7ba15e39d71580a8f96f9b508fdbe473a8`  
		Last Modified: Sat, 12 Jan 2019 10:46:50 GMT  
		Size: 37.6 MB (37647055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a448866c8b5ceded10a0dad09c5296eaf3795af720d950f87b92397d3dcf2e67`  
		Last Modified: Sat, 12 Jan 2019 10:46:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:56b74217eba7ecb4b031351457d29a7cfdf3cc49027284b7c0f741b623453aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:c882d50c0038e97d95ce4d5af40e39d2968d4d9a3d44c7b141b24296cc5d9dfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276989125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aba6b13edf861f5dd81a8f769b69fabafb1319abc81a90515d07fdfe5ff4d6`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:25:09 GMT
ENV ROS_DISTRO=crystal
# Fri, 11 Jan 2019 23:25:41 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:25:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:25:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:25:42 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:25:53 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af65b69957d7cb493f3e02ee8349de3772afcdf743addc29cc9be58614463f`  
		Last Modified: Fri, 11 Jan 2019 23:27:30 GMT  
		Size: 50.0 MB (50014550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd5fc6a5a781de576354b09e56b7d3a12b89bdd2a3bed8745ea7c1f3e933af5`  
		Last Modified: Fri, 11 Jan 2019 23:27:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064905b1da5663afd09d4f1de637d800d46e4586ffc67c351c4997d21c15247`  
		Last Modified: Fri, 11 Jan 2019 23:27:34 GMT  
		Size: 3.2 MB (3174785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:becb4742470ace158ee9b8ff2c0017ac552977f38d869c79d4303498fa8e2962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207253072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416bec7c05f592a49dc36f8397b1fb3f4282dc7e9f298f6ed1505adaec47b4a0`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:38:58 GMT
ENV ROS_DISTRO=crystal
# Sat, 12 Jan 2019 10:43:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:43:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:43:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:43:40 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:44:16 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef6f6e103cd06d3bc0441989250d3891d640e00d1a123af670d68925d9b7058`  
		Last Modified: Sat, 12 Jan 2019 10:47:32 GMT  
		Size: 40.0 MB (39957625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d34389d83502e67272375a90be6b32e3b9be1099816db12366f4bd1c2d67c8`  
		Last Modified: Sat, 12 Jan 2019 10:47:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d8e325164af5230cfa3e641b50e39bff99bc23b9ed30be2b566c03346e6096`  
		Last Modified: Sat, 12 Jan 2019 10:47:42 GMT  
		Size: 2.9 MB (2937149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:56b74217eba7ecb4b031351457d29a7cfdf3cc49027284b7c0f741b623453aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:c882d50c0038e97d95ce4d5af40e39d2968d4d9a3d44c7b141b24296cc5d9dfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276989125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aba6b13edf861f5dd81a8f769b69fabafb1319abc81a90515d07fdfe5ff4d6`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:25:09 GMT
ENV ROS_DISTRO=crystal
# Fri, 11 Jan 2019 23:25:41 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:25:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:25:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:25:42 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:25:53 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af65b69957d7cb493f3e02ee8349de3772afcdf743addc29cc9be58614463f`  
		Last Modified: Fri, 11 Jan 2019 23:27:30 GMT  
		Size: 50.0 MB (50014550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd5fc6a5a781de576354b09e56b7d3a12b89bdd2a3bed8745ea7c1f3e933af5`  
		Last Modified: Fri, 11 Jan 2019 23:27:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064905b1da5663afd09d4f1de637d800d46e4586ffc67c351c4997d21c15247`  
		Last Modified: Fri, 11 Jan 2019 23:27:34 GMT  
		Size: 3.2 MB (3174785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:becb4742470ace158ee9b8ff2c0017ac552977f38d869c79d4303498fa8e2962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207253072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416bec7c05f592a49dc36f8397b1fb3f4282dc7e9f298f6ed1505adaec47b4a0`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:38:58 GMT
ENV ROS_DISTRO=crystal
# Sat, 12 Jan 2019 10:43:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:43:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:43:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:43:40 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:44:16 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef6f6e103cd06d3bc0441989250d3891d640e00d1a123af670d68925d9b7058`  
		Last Modified: Sat, 12 Jan 2019 10:47:32 GMT  
		Size: 40.0 MB (39957625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d34389d83502e67272375a90be6b32e3b9be1099816db12366f4bd1c2d67c8`  
		Last Modified: Sat, 12 Jan 2019 10:47:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d8e325164af5230cfa3e641b50e39bff99bc23b9ed30be2b566c03346e6096`  
		Last Modified: Sat, 12 Jan 2019 10:47:42 GMT  
		Size: 2.9 MB (2937149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:56b74217eba7ecb4b031351457d29a7cfdf3cc49027284b7c0f741b623453aca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:c882d50c0038e97d95ce4d5af40e39d2968d4d9a3d44c7b141b24296cc5d9dfc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.0 MB (276989125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63aba6b13edf861f5dd81a8f769b69fabafb1319abc81a90515d07fdfe5ff4d6`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:25:09 GMT
ENV ROS_DISTRO=crystal
# Fri, 11 Jan 2019 23:25:41 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:25:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:25:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:25:42 GMT
CMD ["bash"]
# Fri, 11 Jan 2019 23:25:53 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af65b69957d7cb493f3e02ee8349de3772afcdf743addc29cc9be58614463f`  
		Last Modified: Fri, 11 Jan 2019 23:27:30 GMT  
		Size: 50.0 MB (50014550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd5fc6a5a781de576354b09e56b7d3a12b89bdd2a3bed8745ea7c1f3e933af5`  
		Last Modified: Fri, 11 Jan 2019 23:27:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3064905b1da5663afd09d4f1de637d800d46e4586ffc67c351c4997d21c15247`  
		Last Modified: Fri, 11 Jan 2019 23:27:34 GMT  
		Size: 3.2 MB (3174785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:becb4742470ace158ee9b8ff2c0017ac552977f38d869c79d4303498fa8e2962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207253072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416bec7c05f592a49dc36f8397b1fb3f4282dc7e9f298f6ed1505adaec47b4a0`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:38:58 GMT
ENV ROS_DISTRO=crystal
# Sat, 12 Jan 2019 10:43:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:43:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:43:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:43:40 GMT
CMD ["bash"]
# Sat, 12 Jan 2019 10:44:16 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef6f6e103cd06d3bc0441989250d3891d640e00d1a123af670d68925d9b7058`  
		Last Modified: Sat, 12 Jan 2019 10:47:32 GMT  
		Size: 40.0 MB (39957625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d34389d83502e67272375a90be6b32e3b9be1099816db12366f4bd1c2d67c8`  
		Last Modified: Sat, 12 Jan 2019 10:47:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d8e325164af5230cfa3e641b50e39bff99bc23b9ed30be2b566c03346e6096`  
		Last Modified: Sat, 12 Jan 2019 10:47:42 GMT  
		Size: 2.9 MB (2937149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:59ab7d222ce3f9a905aed028659e52222397a4489b39a04a4515293408625fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:8236d5228c6d9fae0d1e3566a735ecb5a52eef0fa298593ddbd198f7db085da8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273814340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f611bca3a124adf6bc2e3157930d5d3b756458cf76a5521720f5f0e0227067`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:25:09 GMT
ENV ROS_DISTRO=crystal
# Fri, 11 Jan 2019 23:25:41 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:25:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:25:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:25:42 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af65b69957d7cb493f3e02ee8349de3772afcdf743addc29cc9be58614463f`  
		Last Modified: Fri, 11 Jan 2019 23:27:30 GMT  
		Size: 50.0 MB (50014550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd5fc6a5a781de576354b09e56b7d3a12b89bdd2a3bed8745ea7c1f3e933af5`  
		Last Modified: Fri, 11 Jan 2019 23:27:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a68ab10e751913669226ba33cc127cfba27939ee55c9eb60557503724339521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204315923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c5b9a3408a009c09b42ce03dd3705219f39cce12e8b143b0cee4e033bdfd6f`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:38:58 GMT
ENV ROS_DISTRO=crystal
# Sat, 12 Jan 2019 10:43:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:43:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:43:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:43:40 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef6f6e103cd06d3bc0441989250d3891d640e00d1a123af670d68925d9b7058`  
		Last Modified: Sat, 12 Jan 2019 10:47:32 GMT  
		Size: 40.0 MB (39957625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d34389d83502e67272375a90be6b32e3b9be1099816db12366f4bd1c2d67c8`  
		Last Modified: Sat, 12 Jan 2019 10:47:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:59ab7d222ce3f9a905aed028659e52222397a4489b39a04a4515293408625fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:8236d5228c6d9fae0d1e3566a735ecb5a52eef0fa298593ddbd198f7db085da8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273814340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37f611bca3a124adf6bc2e3157930d5d3b756458cf76a5521720f5f0e0227067`
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
# Fri, 11 Jan 2019 23:23:43 GMT
RUN rosdep init     && rosdep update
# Fri, 11 Jan 2019 23:23:45 GMT
RUN pip3 install -U     argcomplete
# Fri, 11 Jan 2019 23:25:09 GMT
ENV ROS_DISTRO=crystal
# Fri, 11 Jan 2019 23:25:41 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 11 Jan 2019 23:25:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Fri, 11 Jan 2019 23:25:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 11 Jan 2019 23:25:42 GMT
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
	-	`sha256:5595aca13034ec883f2e7645a69e4703a2f1358da4931dc701ac16c2b5ae0786`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 867.5 KB (867497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae104ddd638de4319fdd0a1639b937eac0c397ee586f2cb4d60c504091e592ae`  
		Last Modified: Fri, 11 Jan 2019 23:26:57 GMT  
		Size: 93.9 KB (93856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59af65b69957d7cb493f3e02ee8349de3772afcdf743addc29cc9be58614463f`  
		Last Modified: Fri, 11 Jan 2019 23:27:30 GMT  
		Size: 50.0 MB (50014550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd5fc6a5a781de576354b09e56b7d3a12b89bdd2a3bed8745ea7c1f3e933af5`  
		Last Modified: Fri, 11 Jan 2019 23:27:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a68ab10e751913669226ba33cc127cfba27939ee55c9eb60557503724339521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204315923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c5b9a3408a009c09b42ce03dd3705219f39cce12e8b143b0cee4e033bdfd6f`
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
# Sat, 12 Jan 2019 10:35:18 GMT
RUN rosdep init     && rosdep update
# Sat, 12 Jan 2019 10:35:29 GMT
RUN pip3 install -U     argcomplete
# Sat, 12 Jan 2019 10:38:58 GMT
ENV ROS_DISTRO=crystal
# Sat, 12 Jan 2019 10:43:38 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 12 Jan 2019 10:43:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 12 Jan 2019 10:43:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 12 Jan 2019 10:43:40 GMT
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
	-	`sha256:845dec30f89ce0c45001dbe6974b8fee8197c0834014fbb423495c2ffe95db04`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 867.5 KB (867515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7086ebaa781a21d21052ab938b8aa532a9483e31a5ba114aa7d74cd949516844`  
		Last Modified: Sat, 12 Jan 2019 10:46:32 GMT  
		Size: 93.9 KB (93868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef6f6e103cd06d3bc0441989250d3891d640e00d1a123af670d68925d9b7058`  
		Last Modified: Sat, 12 Jan 2019 10:47:32 GMT  
		Size: 40.0 MB (39957625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d34389d83502e67272375a90be6b32e3b9be1099816db12366f4bd1c2d67c8`  
		Last Modified: Sat, 12 Jan 2019 10:47:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:61e794abe92cad35297f7672b80dce45561335c1c75d1534fbe37ed66bb931bf
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
$ docker pull ros@sha256:af40be9824da546fd51b3ed4075468c0f066151f885018456df623240062faaf
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
$ docker pull ros@sha256:af40be9824da546fd51b3ed4075468c0f066151f885018456df623240062faaf
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
$ docker pull ros@sha256:e4a2212e635d53efb3b5d27f7e86592de8d93101794cd5c29519f0116974ac68
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
$ docker pull ros@sha256:e4a2212e635d53efb3b5d27f7e86592de8d93101794cd5c29519f0116974ac68
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
$ docker pull ros@sha256:61e794abe92cad35297f7672b80dce45561335c1c75d1534fbe37ed66bb931bf
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
$ docker pull ros@sha256:61e794abe92cad35297f7672b80dce45561335c1c75d1534fbe37ed66bb931bf
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
$ docker pull ros@sha256:02dcbee962b460e58a5a0133c3f6f6416432f5d3d2d5be3e67b1b0150ea76bb5
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
$ docker pull ros@sha256:02dcbee962b460e58a5a0133c3f6f6416432f5d3d2d5be3e67b1b0150ea76bb5
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
$ docker pull ros@sha256:f8b4796cb1c028659ac8e9065f7aa53dd7d6c5b865f46e303bf7a00598dac1b7
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
$ docker pull ros@sha256:c0fc3935888896196bc574e55e4822ddf7e285cb8b88ea96e10d73337a27d229
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
$ docker pull ros@sha256:c0fc3935888896196bc574e55e4822ddf7e285cb8b88ea96e10d73337a27d229
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
$ docker pull ros@sha256:0ab8c38ae25cf212351513c52d41d71c9f112e00c57138fa73ad9a8cc7042e3d
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
$ docker pull ros@sha256:0ab8c38ae25cf212351513c52d41d71c9f112e00c57138fa73ad9a8cc7042e3d
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
$ docker pull ros@sha256:f8b4796cb1c028659ac8e9065f7aa53dd7d6c5b865f46e303bf7a00598dac1b7
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
$ docker pull ros@sha256:f8b4796cb1c028659ac8e9065f7aa53dd7d6c5b865f46e303bf7a00598dac1b7
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
$ docker pull ros@sha256:efa0a937bf04019a28e2ab35b2ece9f39fa64574f9a57c223d9960fdf9a20190
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
$ docker pull ros@sha256:efa0a937bf04019a28e2ab35b2ece9f39fa64574f9a57c223d9960fdf9a20190
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
$ docker pull ros@sha256:7f2b1c3771cb6e9ca04f29876a96876dab2b554523555b38f21f92fe92d85824
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
$ docker pull ros@sha256:fe7b97efceb597c9aa9840c34a01c341af71805c2aeef9a26a9b680ee14b47e5
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
$ docker pull ros@sha256:e0b328e6b91623cba01614fc608da3f2ece4ea40bf234c46f8a0d2533af39d36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:76849e75d77ffd8622c7eac738f45375ce76a4c9fa3294c3a10b021cf2020b81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.2 MB (933246000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcc496919ca0e0257de3b08d17c192901f295afdf3924471b850c41d706164c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:51:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:09:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:10:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:10:05 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:10:06 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:10:17 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:10:17 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:11:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:11:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:11:46 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:12:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520678ab4c4e263f82bfec96aa051faba9bae110dc9cb90dae5ed7cc65a9a8e1`  
		Last Modified: Wed, 23 Jan 2019 02:02:47 GMT  
		Size: 21.1 MB (21091495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0ed9bf8c4aff6f7565926235514c1d3b82a2f6e56e8a78409707d454dd1c5c`  
		Last Modified: Wed, 23 Jan 2019 04:29:24 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa2d8e87cb0127b826af1929e18a44aa51a708350a0a1d3c47c8445f2aa716c`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36f0be3d12f24b29a9c3c2877c6ec7541f12cef167d1f5899433e2a78f00b49`  
		Last Modified: Wed, 23 Jan 2019 04:29:38 GMT  
		Size: 53.5 MB (53542306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717f59268f4c08ca7c833bbfc7b790a28e2cdd2581f1e62d6818e930bba5ac4`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 601.4 KB (601430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568d720e263a27ef3f80173f2bd364721e449e187ebc12580de9843c94c18415`  
		Last Modified: Wed, 23 Jan 2019 04:30:32 GMT  
		Size: 251.1 MB (251128538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9beb7b83d23d9c0266adfc08b464f75bb51348e0fa20da74160b236c0a7209`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a541a653f290cac2215c1d0db192e705fbb96bbdf5b661524c7a566a394e6`  
		Last Modified: Wed, 23 Jan 2019 04:31:11 GMT  
		Size: 123.1 MB (123068757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dcbb3da044143b8634404f7938621c4ed06db029815c38c8fffd872bb34eacc`  
		Last Modified: Wed, 23 Jan 2019 04:33:13 GMT  
		Size: 438.5 MB (438462180 bytes)  
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
$ docker pull ros@sha256:fe7b97efceb597c9aa9840c34a01c341af71805c2aeef9a26a9b680ee14b47e5
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
$ docker pull ros@sha256:693651e403ecd0e8ed713e8645f706d7eda9588804905df7468ea57654117377
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
$ docker pull ros@sha256:5e4d526c12bcebeeb68ceec8c9eac9b3992889f40d3afb3af3bd25369343a705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:b10dd472ee46378424512ac02bbec4c717d2e1f11e5dd119019a212f3bcc5172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.2 MB (555226492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:392332de8fc5c7f11f50cd6a0dba832316b5579b04f491a7c6b1c72571527bf6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:51:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:09:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:10:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:10:05 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:10:06 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:10:17 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:10:17 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:11:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:11:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:11:46 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:12:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:13:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520678ab4c4e263f82bfec96aa051faba9bae110dc9cb90dae5ed7cc65a9a8e1`  
		Last Modified: Wed, 23 Jan 2019 02:02:47 GMT  
		Size: 21.1 MB (21091495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0ed9bf8c4aff6f7565926235514c1d3b82a2f6e56e8a78409707d454dd1c5c`  
		Last Modified: Wed, 23 Jan 2019 04:29:24 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa2d8e87cb0127b826af1929e18a44aa51a708350a0a1d3c47c8445f2aa716c`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36f0be3d12f24b29a9c3c2877c6ec7541f12cef167d1f5899433e2a78f00b49`  
		Last Modified: Wed, 23 Jan 2019 04:29:38 GMT  
		Size: 53.5 MB (53542306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717f59268f4c08ca7c833bbfc7b790a28e2cdd2581f1e62d6818e930bba5ac4`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 601.4 KB (601430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568d720e263a27ef3f80173f2bd364721e449e187ebc12580de9843c94c18415`  
		Last Modified: Wed, 23 Jan 2019 04:30:32 GMT  
		Size: 251.1 MB (251128538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9beb7b83d23d9c0266adfc08b464f75bb51348e0fa20da74160b236c0a7209`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a541a653f290cac2215c1d0db192e705fbb96bbdf5b661524c7a566a394e6`  
		Last Modified: Wed, 23 Jan 2019 04:31:11 GMT  
		Size: 123.1 MB (123068757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6663fd905f099c0acf01fedaaae00480958cde81447cc85a848274bde1805a`  
		Last Modified: Wed, 23 Jan 2019 04:31:34 GMT  
		Size: 60.4 MB (60442672 bytes)  
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
$ docker pull ros@sha256:693651e403ecd0e8ed713e8645f706d7eda9588804905df7468ea57654117377
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
$ docker pull ros@sha256:7f2b1c3771cb6e9ca04f29876a96876dab2b554523555b38f21f92fe92d85824
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
$ docker pull ros@sha256:d61b7b0f31d18ced05b6757f272d46de4b65d6034ff57c95eebe5d82e23e5e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:dc356bd2be4726c6c2019e0d186c9458107f65b317f4dbc2cd36a32b710b2a22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.8 MB (494783820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:392367754a912bd4a9a57d91efe46e0f1723d8a768fddf9c8c4dc1e7214a8712`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:51:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:09:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:10:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:10:05 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:10:06 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:10:17 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:10:17 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:11:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:11:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:11:46 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:12:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520678ab4c4e263f82bfec96aa051faba9bae110dc9cb90dae5ed7cc65a9a8e1`  
		Last Modified: Wed, 23 Jan 2019 02:02:47 GMT  
		Size: 21.1 MB (21091495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0ed9bf8c4aff6f7565926235514c1d3b82a2f6e56e8a78409707d454dd1c5c`  
		Last Modified: Wed, 23 Jan 2019 04:29:24 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa2d8e87cb0127b826af1929e18a44aa51a708350a0a1d3c47c8445f2aa716c`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36f0be3d12f24b29a9c3c2877c6ec7541f12cef167d1f5899433e2a78f00b49`  
		Last Modified: Wed, 23 Jan 2019 04:29:38 GMT  
		Size: 53.5 MB (53542306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717f59268f4c08ca7c833bbfc7b790a28e2cdd2581f1e62d6818e930bba5ac4`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 601.4 KB (601430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568d720e263a27ef3f80173f2bd364721e449e187ebc12580de9843c94c18415`  
		Last Modified: Wed, 23 Jan 2019 04:30:32 GMT  
		Size: 251.1 MB (251128538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9beb7b83d23d9c0266adfc08b464f75bb51348e0fa20da74160b236c0a7209`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa6a541a653f290cac2215c1d0db192e705fbb96bbdf5b661524c7a566a394e6`  
		Last Modified: Wed, 23 Jan 2019 04:31:11 GMT  
		Size: 123.1 MB (123068757 bytes)  
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
$ docker pull ros@sha256:7f2b1c3771cb6e9ca04f29876a96876dab2b554523555b38f21f92fe92d85824
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
$ docker pull ros@sha256:0e59fe1016fb6ce98bb1fd1fddd53e630206f77866856a29403fdde08b74c4bf
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
$ docker pull ros@sha256:3322a694a21fbc4ff2e9eec68d9f9be584b1f1103f056c60dd3eb47da5a805d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:85d126cdb667a615169d7010573361bb6eb5b2870911b76c85e9dd09ff96ae41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.7 MB (371715063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4960e74eeddc3308c950c26d1009030d60199c6f196d674af939b894fdc413`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 01:51:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:09:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:09:28 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:10:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:10:05 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:10:06 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:10:17 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:10:17 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 03:11:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:11:46 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:11:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:11:46 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520678ab4c4e263f82bfec96aa051faba9bae110dc9cb90dae5ed7cc65a9a8e1`  
		Last Modified: Wed, 23 Jan 2019 02:02:47 GMT  
		Size: 21.1 MB (21091495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0ed9bf8c4aff6f7565926235514c1d3b82a2f6e56e8a78409707d454dd1c5c`  
		Last Modified: Wed, 23 Jan 2019 04:29:24 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa2d8e87cb0127b826af1929e18a44aa51a708350a0a1d3c47c8445f2aa716c`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36f0be3d12f24b29a9c3c2877c6ec7541f12cef167d1f5899433e2a78f00b49`  
		Last Modified: Wed, 23 Jan 2019 04:29:38 GMT  
		Size: 53.5 MB (53542306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3717f59268f4c08ca7c833bbfc7b790a28e2cdd2581f1e62d6818e930bba5ac4`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
		Size: 601.4 KB (601430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568d720e263a27ef3f80173f2bd364721e449e187ebc12580de9843c94c18415`  
		Last Modified: Wed, 23 Jan 2019 04:30:32 GMT  
		Size: 251.1 MB (251128538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9beb7b83d23d9c0266adfc08b464f75bb51348e0fa20da74160b236c0a7209`  
		Last Modified: Wed, 23 Jan 2019 04:29:23 GMT  
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
$ docker pull ros@sha256:0e59fe1016fb6ce98bb1fd1fddd53e630206f77866856a29403fdde08b74c4bf
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
$ docker pull ros@sha256:6b86f606d5052ac6c2dc4b6b38897a5e5a1e366082d8ea244cd5ef41280b27be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:cee352340cf891b75a62f6b50e1ee9f2610f62533ec2ae11ce90ec766f62ff48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427019674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9425ec5f7a7fe74ded7b0947954bc508465b41ff5d354fa30a77ec50ba1156ff`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:43:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:43:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:17:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:19:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:19:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:19:46 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:19:57 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:19:57 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 03:29:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:29:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:29:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:29:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:32:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6e86777b0c7c9cb9a105ba15e66a8501da1b019f4a30c8741b02bd3815c27`  
		Last Modified: Wed, 23 Jan 2019 02:00:42 GMT  
		Size: 836.9 KB (836919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4eb744f79970d7036d0deaaccb4c2e9cfece560219d89e2cddabbd6adaee4a`  
		Last Modified: Wed, 23 Jan 2019 02:00:44 GMT  
		Size: 14.9 MB (14912947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9a16b55a7ffda8ab96e1f4a4f7cf0b168d89d26ebc6a243186d7b4eb2481d`  
		Last Modified: Wed, 23 Jan 2019 04:33:22 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060e2f4bacb636f5ac571c3281c79f5d9ab6b9bc5f2dc2c9de882c652dc4386`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7aae5ea05de9a670835c290cff5d6348b5617eb8b9383207e1273a480820f4`  
		Last Modified: Wed, 23 Jan 2019 04:33:37 GMT  
		Size: 49.4 MB (49410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2830070444aa76f28c2af27c0efd2a4794f18a9df758c2cd625a786e80492661`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c98a5c129bd1880a7c91165f7bcee580c916fb89d697ccfa5abbd184270a6bc`  
		Last Modified: Wed, 23 Jan 2019 04:34:36 GMT  
		Size: 260.8 MB (260781759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98ea5ea1995ed68ac54fa293fb873c0b7f61d04e6164c3e2b097477773483c`  
		Last Modified: Wed, 23 Jan 2019 04:33:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f736b7eb157e0ad484eddcc1d36e2395a4222a7216668698b42ce79b7808dc`  
		Last Modified: Wed, 23 Jan 2019 04:35:08 GMT  
		Size: 68.2 MB (68176590 bytes)  
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
$ docker pull ros@sha256:6b86f606d5052ac6c2dc4b6b38897a5e5a1e366082d8ea244cd5ef41280b27be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:cee352340cf891b75a62f6b50e1ee9f2610f62533ec2ae11ce90ec766f62ff48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427019674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9425ec5f7a7fe74ded7b0947954bc508465b41ff5d354fa30a77ec50ba1156ff`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:43:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:43:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:17:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:19:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:19:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:19:46 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:19:57 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:19:57 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 03:29:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:29:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:29:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:29:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:32:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6e86777b0c7c9cb9a105ba15e66a8501da1b019f4a30c8741b02bd3815c27`  
		Last Modified: Wed, 23 Jan 2019 02:00:42 GMT  
		Size: 836.9 KB (836919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4eb744f79970d7036d0deaaccb4c2e9cfece560219d89e2cddabbd6adaee4a`  
		Last Modified: Wed, 23 Jan 2019 02:00:44 GMT  
		Size: 14.9 MB (14912947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9a16b55a7ffda8ab96e1f4a4f7cf0b168d89d26ebc6a243186d7b4eb2481d`  
		Last Modified: Wed, 23 Jan 2019 04:33:22 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060e2f4bacb636f5ac571c3281c79f5d9ab6b9bc5f2dc2c9de882c652dc4386`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7aae5ea05de9a670835c290cff5d6348b5617eb8b9383207e1273a480820f4`  
		Last Modified: Wed, 23 Jan 2019 04:33:37 GMT  
		Size: 49.4 MB (49410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2830070444aa76f28c2af27c0efd2a4794f18a9df758c2cd625a786e80492661`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c98a5c129bd1880a7c91165f7bcee580c916fb89d697ccfa5abbd184270a6bc`  
		Last Modified: Wed, 23 Jan 2019 04:34:36 GMT  
		Size: 260.8 MB (260781759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98ea5ea1995ed68ac54fa293fb873c0b7f61d04e6164c3e2b097477773483c`  
		Last Modified: Wed, 23 Jan 2019 04:33:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f736b7eb157e0ad484eddcc1d36e2395a4222a7216668698b42ce79b7808dc`  
		Last Modified: Wed, 23 Jan 2019 04:35:08 GMT  
		Size: 68.2 MB (68176590 bytes)  
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
$ docker pull ros@sha256:6b86f606d5052ac6c2dc4b6b38897a5e5a1e366082d8ea244cd5ef41280b27be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:cee352340cf891b75a62f6b50e1ee9f2610f62533ec2ae11ce90ec766f62ff48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427019674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9425ec5f7a7fe74ded7b0947954bc508465b41ff5d354fa30a77ec50ba1156ff`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:43:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:43:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:17:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:19:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:19:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:19:46 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:19:57 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:19:57 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 03:29:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:29:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:29:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:29:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:32:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6e86777b0c7c9cb9a105ba15e66a8501da1b019f4a30c8741b02bd3815c27`  
		Last Modified: Wed, 23 Jan 2019 02:00:42 GMT  
		Size: 836.9 KB (836919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4eb744f79970d7036d0deaaccb4c2e9cfece560219d89e2cddabbd6adaee4a`  
		Last Modified: Wed, 23 Jan 2019 02:00:44 GMT  
		Size: 14.9 MB (14912947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9a16b55a7ffda8ab96e1f4a4f7cf0b168d89d26ebc6a243186d7b4eb2481d`  
		Last Modified: Wed, 23 Jan 2019 04:33:22 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060e2f4bacb636f5ac571c3281c79f5d9ab6b9bc5f2dc2c9de882c652dc4386`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7aae5ea05de9a670835c290cff5d6348b5617eb8b9383207e1273a480820f4`  
		Last Modified: Wed, 23 Jan 2019 04:33:37 GMT  
		Size: 49.4 MB (49410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2830070444aa76f28c2af27c0efd2a4794f18a9df758c2cd625a786e80492661`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c98a5c129bd1880a7c91165f7bcee580c916fb89d697ccfa5abbd184270a6bc`  
		Last Modified: Wed, 23 Jan 2019 04:34:36 GMT  
		Size: 260.8 MB (260781759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98ea5ea1995ed68ac54fa293fb873c0b7f61d04e6164c3e2b097477773483c`  
		Last Modified: Wed, 23 Jan 2019 04:33:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f736b7eb157e0ad484eddcc1d36e2395a4222a7216668698b42ce79b7808dc`  
		Last Modified: Wed, 23 Jan 2019 04:35:08 GMT  
		Size: 68.2 MB (68176590 bytes)  
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
$ docker pull ros@sha256:2fb3d5931c036daa23e61f93203ab175e4644fcdec161f04fd075ae99d2e3fa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:9ac9d1b1152da618493306e80ebdf722bad66a67fe2469b65308bdfc11f52e79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358843084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3193024f6e141054b208917abdd40b85712a1119dbf8512369fafc15ea03c47`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:43:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:43:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:17:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:19:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:19:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:19:46 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:19:57 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:19:57 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 03:29:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:29:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:29:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:29:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6e86777b0c7c9cb9a105ba15e66a8501da1b019f4a30c8741b02bd3815c27`  
		Last Modified: Wed, 23 Jan 2019 02:00:42 GMT  
		Size: 836.9 KB (836919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4eb744f79970d7036d0deaaccb4c2e9cfece560219d89e2cddabbd6adaee4a`  
		Last Modified: Wed, 23 Jan 2019 02:00:44 GMT  
		Size: 14.9 MB (14912947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9a16b55a7ffda8ab96e1f4a4f7cf0b168d89d26ebc6a243186d7b4eb2481d`  
		Last Modified: Wed, 23 Jan 2019 04:33:22 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060e2f4bacb636f5ac571c3281c79f5d9ab6b9bc5f2dc2c9de882c652dc4386`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7aae5ea05de9a670835c290cff5d6348b5617eb8b9383207e1273a480820f4`  
		Last Modified: Wed, 23 Jan 2019 04:33:37 GMT  
		Size: 49.4 MB (49410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2830070444aa76f28c2af27c0efd2a4794f18a9df758c2cd625a786e80492661`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c98a5c129bd1880a7c91165f7bcee580c916fb89d697ccfa5abbd184270a6bc`  
		Last Modified: Wed, 23 Jan 2019 04:34:36 GMT  
		Size: 260.8 MB (260781759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98ea5ea1995ed68ac54fa293fb873c0b7f61d04e6164c3e2b097477773483c`  
		Last Modified: Wed, 23 Jan 2019 04:33:20 GMT  
		Size: 195.0 B  
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
$ docker pull ros@sha256:2fb3d5931c036daa23e61f93203ab175e4644fcdec161f04fd075ae99d2e3fa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:9ac9d1b1152da618493306e80ebdf722bad66a67fe2469b65308bdfc11f52e79
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.8 MB (358843084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3193024f6e141054b208917abdd40b85712a1119dbf8512369fafc15ea03c47`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:43:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:43:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:17:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:19:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:19:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:19:46 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:19:57 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:19:57 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 03:29:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:29:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:29:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:29:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6e86777b0c7c9cb9a105ba15e66a8501da1b019f4a30c8741b02bd3815c27`  
		Last Modified: Wed, 23 Jan 2019 02:00:42 GMT  
		Size: 836.9 KB (836919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4eb744f79970d7036d0deaaccb4c2e9cfece560219d89e2cddabbd6adaee4a`  
		Last Modified: Wed, 23 Jan 2019 02:00:44 GMT  
		Size: 14.9 MB (14912947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9a16b55a7ffda8ab96e1f4a4f7cf0b168d89d26ebc6a243186d7b4eb2481d`  
		Last Modified: Wed, 23 Jan 2019 04:33:22 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060e2f4bacb636f5ac571c3281c79f5d9ab6b9bc5f2dc2c9de882c652dc4386`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7aae5ea05de9a670835c290cff5d6348b5617eb8b9383207e1273a480820f4`  
		Last Modified: Wed, 23 Jan 2019 04:33:37 GMT  
		Size: 49.4 MB (49410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2830070444aa76f28c2af27c0efd2a4794f18a9df758c2cd625a786e80492661`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c98a5c129bd1880a7c91165f7bcee580c916fb89d697ccfa5abbd184270a6bc`  
		Last Modified: Wed, 23 Jan 2019 04:34:36 GMT  
		Size: 260.8 MB (260781759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98ea5ea1995ed68ac54fa293fb873c0b7f61d04e6164c3e2b097477773483c`  
		Last Modified: Wed, 23 Jan 2019 04:33:20 GMT  
		Size: 195.0 B  
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
