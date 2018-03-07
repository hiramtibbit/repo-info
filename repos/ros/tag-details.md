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
-	[`ros:kinetic-perception-jessie`](#roskinetic-perception-jessie)
-	[`ros:kinetic-perception-xenial`](#roskinetic-perception-xenial)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-robot-jessie`](#roskinetic-robot-jessie)
-	[`ros:kinetic-robot-xenial`](#roskinetic-robot-xenial)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic-ros-base-jessie`](#roskinetic-ros-base-jessie)
-	[`ros:kinetic-ros-base-xenial`](#roskinetic-ros-base-xenial)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-core-jessie`](#roskinetic-ros-core-jessie)
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

## `ros:indigo`

```console
$ docker pull ros@sha256:6fc2ab760f827700247859ba9c6a36e1ec431618a8cb7e96155ce47f3fff171f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:57e5ff570cdd1d220407537e652555e23fbb717e83d3eed31a727e1ea62a9650
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.8 MB (318842388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935a8d8f973da6ddd9778b4f44157137cd22833bdba43a659dcd7e41156662d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:506dda2017641b0ad0a2947766031d5f6b73caabaeca2854ebf97abcd3446849
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (289025083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bc412c15a6fa9c9d06955e9e21e598326b9badcf0c46f2b17ad576dacd484d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47defee88e7720bc0cf3785e31948be9c539f98640542ade4225fc08c044aa6`  
		Last Modified: Wed, 07 Mar 2018 14:42:36 GMT  
		Size: 40.4 MB (40384067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:ccac0e95eec2b610c61962591f283db2c490d5cd4ae91f5ed3fd05396121575d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:60f1b38a5b53ef67bbf492efbe1fd3139d58bac2b5dc89f20e3e6ae0b1c1d9fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.2 MB (555172806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7326efe3b4789c95c5e736bd4088b767730536db94cc99d08f758601bc9204de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:10:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbeca1c9d1b11527992c01c746d4b2bbd4790c05ad8a6e62d5174e83e3ed742`  
		Last Modified: Wed, 07 Mar 2018 05:22:21 GMT  
		Size: 236.3 MB (236330418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:578972e9e23936877fb32979d8c02b87320482390e121579aa9e79813868a44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.9 MB (500897504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f39742e1d2ecc3cc5b170e7f8ae58696beed3871b8b6934e8afcff7406e517`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47defee88e7720bc0cf3785e31948be9c539f98640542ade4225fc08c044aa6`  
		Last Modified: Wed, 07 Mar 2018 14:42:36 GMT  
		Size: 40.4 MB (40384067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9c90d066cae6b0af893a1c4c5e5754a6568b9729fb7aae576286b70d5667f3`  
		Last Modified: Wed, 07 Mar 2018 14:44:32 GMT  
		Size: 211.9 MB (211872421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:ccac0e95eec2b610c61962591f283db2c490d5cd4ae91f5ed3fd05396121575d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:60f1b38a5b53ef67bbf492efbe1fd3139d58bac2b5dc89f20e3e6ae0b1c1d9fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.2 MB (555172806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7326efe3b4789c95c5e736bd4088b767730536db94cc99d08f758601bc9204de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:10:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbeca1c9d1b11527992c01c746d4b2bbd4790c05ad8a6e62d5174e83e3ed742`  
		Last Modified: Wed, 07 Mar 2018 05:22:21 GMT  
		Size: 236.3 MB (236330418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:578972e9e23936877fb32979d8c02b87320482390e121579aa9e79813868a44a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.9 MB (500897504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f39742e1d2ecc3cc5b170e7f8ae58696beed3871b8b6934e8afcff7406e517`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:11 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47defee88e7720bc0cf3785e31948be9c539f98640542ade4225fc08c044aa6`  
		Last Modified: Wed, 07 Mar 2018 14:42:36 GMT  
		Size: 40.4 MB (40384067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9c90d066cae6b0af893a1c4c5e5754a6568b9729fb7aae576286b70d5667f3`  
		Last Modified: Wed, 07 Mar 2018 14:44:32 GMT  
		Size: 211.9 MB (211872421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:71065ca2f0069603730a4ccecc59022d7670147744b53abf1392c67c91d63817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:aeba60dc325242af1874b7aae91414ece60753fe646602fdd3c5ad00cf19d268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337867771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d0d33d347c7dec2f060250d457ea4b9c82ef01a34236543304e0133445d132`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:07:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060c5ce256b4a6ed5da78640227592dccf5414d72166221ae503631a545c3eb8`  
		Last Modified: Wed, 07 Mar 2018 05:20:37 GMT  
		Size: 19.0 MB (19025383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:eb89409293268370737c430c27389c9c0f5f5cbd6cde26f0c28b1f3270ef24cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306704109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2672a5db345476d8c86991d02d78e795abcfa05b283cc870117155f9e5fabdab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:18:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47defee88e7720bc0cf3785e31948be9c539f98640542ade4225fc08c044aa6`  
		Last Modified: Wed, 07 Mar 2018 14:42:36 GMT  
		Size: 40.4 MB (40384067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5babf52d752296958102a4915db6d900590867e64317c04033ee48665be9fadd`  
		Last Modified: Wed, 07 Mar 2018 14:43:15 GMT  
		Size: 17.7 MB (17679026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:71065ca2f0069603730a4ccecc59022d7670147744b53abf1392c67c91d63817
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:aeba60dc325242af1874b7aae91414ece60753fe646602fdd3c5ad00cf19d268
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337867771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d0d33d347c7dec2f060250d457ea4b9c82ef01a34236543304e0133445d132`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:07:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060c5ce256b4a6ed5da78640227592dccf5414d72166221ae503631a545c3eb8`  
		Last Modified: Wed, 07 Mar 2018 05:20:37 GMT  
		Size: 19.0 MB (19025383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:eb89409293268370737c430c27389c9c0f5f5cbd6cde26f0c28b1f3270ef24cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306704109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2672a5db345476d8c86991d02d78e795abcfa05b283cc870117155f9e5fabdab`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:18:32 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47defee88e7720bc0cf3785e31948be9c539f98640542ade4225fc08c044aa6`  
		Last Modified: Wed, 07 Mar 2018 14:42:36 GMT  
		Size: 40.4 MB (40384067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5babf52d752296958102a4915db6d900590867e64317c04033ee48665be9fadd`  
		Last Modified: Wed, 07 Mar 2018 14:43:15 GMT  
		Size: 17.7 MB (17679026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:6fc2ab760f827700247859ba9c6a36e1ec431618a8cb7e96155ce47f3fff171f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:57e5ff570cdd1d220407537e652555e23fbb717e83d3eed31a727e1ea62a9650
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.8 MB (318842388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935a8d8f973da6ddd9778b4f44157137cd22833bdba43a659dcd7e41156662d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:506dda2017641b0ad0a2947766031d5f6b73caabaeca2854ebf97abcd3446849
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (289025083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bc412c15a6fa9c9d06955e9e21e598326b9badcf0c46f2b17ad576dacd484d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47defee88e7720bc0cf3785e31948be9c539f98640542ade4225fc08c044aa6`  
		Last Modified: Wed, 07 Mar 2018 14:42:36 GMT  
		Size: 40.4 MB (40384067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:6fc2ab760f827700247859ba9c6a36e1ec431618a8cb7e96155ce47f3fff171f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:57e5ff570cdd1d220407537e652555e23fbb717e83d3eed31a727e1ea62a9650
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.8 MB (318842388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:935a8d8f973da6ddd9778b4f44157137cd22833bdba43a659dcd7e41156662d6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:506dda2017641b0ad0a2947766031d5f6b73caabaeca2854ebf97abcd3446849
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (289025083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bc412c15a6fa9c9d06955e9e21e598326b9badcf0c46f2b17ad576dacd484d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:17:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47defee88e7720bc0cf3785e31948be9c539f98640542ade4225fc08c044aa6`  
		Last Modified: Wed, 07 Mar 2018 14:42:36 GMT  
		Size: 40.4 MB (40384067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:9d9c04c3da483ba2f3429f92c5ff03d6dc60a5000f023a21f4fae80d06a5ce4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:8ecdd9aa8198e110ad0334aabbbec9f5804f3d37672c35c1a305d69e3c2fb403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272076599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b6d7a34b5b6bea72d3ddb24805e4c63fef0ad7f0ebe8fd4afd4a8b4969c7d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:8874d0b0c85098c5ebc4888a365d921fc1ef0b9787ef7da089fa7d6408a52cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248641016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57530e32249c5c9e9a41de0a73d376c57098cf6dd370686ce32fd4b131a7d8a0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:9d9c04c3da483ba2f3429f92c5ff03d6dc60a5000f023a21f4fae80d06a5ce4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:8ecdd9aa8198e110ad0334aabbbec9f5804f3d37672c35c1a305d69e3c2fb403
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272076599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b6d7a34b5b6bea72d3ddb24805e4c63fef0ad7f0ebe8fd4afd4a8b4969c7d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:8874d0b0c85098c5ebc4888a365d921fc1ef0b9787ef7da089fa7d6408a52cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248641016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57530e32249c5c9e9a41de0a73d376c57098cf6dd370686ce32fd4b131a7d8a0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:51:52 GMT
ADD file:b692b896b0edd9b58975a057f5cf1ffbb708c1e19051210af17c74e851cc3e9d in / 
# Wed, 07 Mar 2018 13:51:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:51:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:51:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:51:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:51:57 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:12:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:13:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:13:09 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:14:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:14:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:14:28 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:14:30 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 14:16:07 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:16:10 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:16:10 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:16:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ad81daf7d15843626b471a41bb1ab3959e0be552641bd869b946bf5a9a6d0ca1`  
		Last Modified: Wed, 07 Mar 2018 13:54:52 GMT  
		Size: 66.5 MB (66483588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfd41ae8f709463fc3d9dbd6fcafcbe05d2ccd58fbc0a3e6430efb79c3d43aa`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10f386f947ab554b90f853a00adbfeaafcace7831c9e77274eaa0bc7af3838d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f616165305af3f3ead43e7e86e7046ff6a931a8f4285a0ee8812c41ec522d`  
		Last Modified: Wed, 07 Mar 2018 13:54:31 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03811c26fc00190fcf036253d253d71937e89ecb22bada1336b8f76b230476d`  
		Last Modified: Wed, 07 Mar 2018 13:54:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8bef12a6e0333f7b96fb3b0ee0f9213aff4256dd42828ad43b99edc4e771bc`  
		Last Modified: Wed, 07 Mar 2018 14:41:26 GMT  
		Size: 14.5 MB (14475026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f18c9a8d3e89e6063d11f9d1e1ec706d54b3fbb6220b2e403649040be870685`  
		Last Modified: Wed, 07 Mar 2018 14:41:21 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2ac7177b1ed1573ba36ddf6efc27bd45e381b314f4a745d31315a2e3dd0954`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6fd66f69dcf7af8ff011c102efb73f32b093980606f5dbb4e7e6e010ea761`  
		Last Modified: Wed, 07 Mar 2018 14:41:30 GMT  
		Size: 29.2 MB (29227524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86df45e9d77017773c1b95357454e4c2e9957e5f40f50c5cf69a239acb93ce34`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 788.3 KB (788335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50598a92a1bd79ae4748befd9a7f779efd4c048b7f84a649cfcd0bd07351b4c3`  
		Last Modified: Wed, 07 Mar 2018 14:42:01 GMT  
		Size: 137.6 MB (137574611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330e78d0207c2ca88bd6aeb97d7467b2caff8bf387da830f7bb2a8223735c7fa`  
		Last Modified: Wed, 07 Mar 2018 14:41:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:5e6db5b83d2152171c00977f5e0e7a063841c0267108bc3d6ac7f035ded83fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:7c60fec1deb39ed9e1963ec36e6d88b53eb58ed17e3bf6a85be4af10cbfaa129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (382018703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e009edabca499c1559825d679a4007c5cb00bd4390ec521faf56cc254710d1d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:82caf49162c1bdc5aa46c4d63d5fbff60ec2517e48daf3915efe5197a963864a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333978035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b179e429a5896a977a56a5253b1bbfb12f6f8ebe9fe7e1b87d8c6da14e3ad52e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da4ff9c53ff0d7a63ecc42573da817e8d797c78398c41e78ae7e78c24e3397be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347752455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78de2479e62b27cd080b312f2877b504a28186310bcf8c27da0135617eb1d35a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:3bd4db68fd7ea21ed84bd954f9622f923261fac6c65d12516e46fe7f225ced8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:9f7a04341ba41966621ed25e5f3e8b3c08f2389f10b926e8a6226296367845c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.3 MB (753321345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6f563b6d019c1ccd57f9d3cee1f21bff99b0c012872b8552c044bf32822760`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:36:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53f46984895a3486ad349065980a71797687280a8e36139368b26d8cc7c6f4`  
		Last Modified: Wed, 07 Mar 2018 05:40:34 GMT  
		Size: 371.3 MB (371302642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:7e2ed3b3e96b1bc4399c7cc3f0e94975c566290ab7de404d24a9d9ae5050ddbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.1 MB (640075485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f527b7a72e5af984f1cece234a1080087d2dee980075fe2c1f16beedff01684`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:33:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ec64409c283de220be34ea284cc14401fe23e3e4c857c9c26405b1e48d5102`  
		Last Modified: Wed, 07 Mar 2018 14:49:30 GMT  
		Size: 306.1 MB (306097450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:97465583d70fb46fdfea44f1db2c57669dc3ae22aafe82f6829d61aa651df2d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.0 MB (668016254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd80ffbff43a6f49a4c715af35b083a5dbce3e4b8998499e8991b1eb1d9e6af`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:06:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285752b8c425db39f32c52815582fc607ba176e5de0922902289f150a5023607`  
		Last Modified: Wed, 07 Mar 2018 16:45:47 GMT  
		Size: 320.3 MB (320263799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:e42df2911daaf4006f710d48791ae1a996e6df2b820a6077ac8f998bdf4fe4ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:9f3613da2b27a500022686d69770b8d9d97a2561e1e1d9e513875569e99eaaaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.9 MB (650899088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bced4b670841c4214ec791dc5fd8f3f0c51ac67ea37c0948e2630987f977b16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 20:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:08:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 20:08:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 20:09:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 20:09:46 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 20:09:46 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 20:11:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:11:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 20:11:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 20:11:30 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 20:27:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:41:59 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2825f1cb0670f79e9ceb737efb80273adaec0d58b8b935eb8058666e9071f4`  
		Last Modified: Fri, 16 Feb 2018 20:54:17 GMT  
		Size: 33.8 MB (33769465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b66fc87bca8772fd86dc77593ef20e2b3fc7368a316c60a51357d8f147de6b5`  
		Last Modified: Fri, 16 Feb 2018 20:53:57 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3570762af0a06c3ce7fbed6c098a5dec0845959b73eaeb83fa607a07eabad0`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb590e1ab2a3e7b7bd5a1de3be1f2dd14e3036f08cf8bfb5a34ed979a7a7cd9a`  
		Last Modified: Fri, 16 Feb 2018 20:54:22 GMT  
		Size: 46.5 MB (46490130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554589c97f7f4223155822a859014f18327946a58efb47b846b9f36a8b15fb6b`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 785.6 KB (785572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7447c924dc92831d2eb4bc639a10bffcac1e081c8bf7438e212763dc02958073`  
		Last Modified: Fri, 16 Feb 2018 20:54:56 GMT  
		Size: 157.3 MB (157277345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d2a049ef84e87559a62a94cff5277afd0819abe3e3eb62abbff7408c25c2a4`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde793e5670c536064c562eb02ad4505eeabbd3671ac075e2b021da22dde1651`  
		Last Modified: Fri, 16 Feb 2018 21:07:23 GMT  
		Size: 84.2 MB (84216961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c6e56700807530117f4def731532e5fb33b5bda3f32f93c6915d7178d69ac3`  
		Last Modified: Fri, 16 Feb 2018 21:18:01 GMT  
		Size: 275.7 MB (275749492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8c96fa3c2fc02899ceba651b865e714f51236e4c31c21068f2df34c8f0cb9420
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **563.5 MB (563544853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd54c50f09f8b4d7121d3b382c1c98bd57216885a5ec5827d7f2b98c3480a00a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:41:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 03:41:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 03:47:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:47:46 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 03:47:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 03:48:32 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 03:48:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 03:56:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:56:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 03:56:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 03:56:57 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:02:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:17:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aa057fedf755e9ec4b8bbda90ba4c3aa28ff2a213c14be0092f284a2ad477e`  
		Last Modified: Fri, 16 Feb 2018 04:57:46 GMT  
		Size: 32.1 MB (32147702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8a391b0e806554445a1c65fa7a4fcbc86c96b543323664233e5e03e92866c`  
		Last Modified: Fri, 16 Feb 2018 04:57:35 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376c35cf8baa4bce06d5c39aec405e46743f8b5d5dccda18f9b7858c4ec670c`  
		Last Modified: Fri, 16 Feb 2018 04:57:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434b028f18d3eeb71c74226ed6de9416cdead676cf4b6ed5a7639e8aedc44af0`  
		Last Modified: Fri, 16 Feb 2018 04:58:03 GMT  
		Size: 44.2 MB (44196897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a22f3660e6f9aa066e85b3da0774bdf8965c0f3033aec97727fb0d441a5728`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 785.5 KB (785508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fe01f1e86fe37f6694630b72dd6b3b49ba9c5e7129d03b21be07726742ed85`  
		Last Modified: Fri, 16 Feb 2018 04:58:41 GMT  
		Size: 130.6 MB (130562401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c8d956079491a11e5ef4be0aa97ea808030e5a2d96bb8b7a6e79adc950b9b`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24593235cb2b1057477711845c028388c7b34db82d4829c9eb1d07e6c1c4fdf1`  
		Last Modified: Fri, 16 Feb 2018 04:59:23 GMT  
		Size: 69.1 MB (69052881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adbf214659f6a9b50da61583978e9890f406644e5d0f8f8546cfe89be0838354`  
		Last Modified: Fri, 16 Feb 2018 05:01:45 GMT  
		Size: 236.9 MB (236863773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:3bd4db68fd7ea21ed84bd954f9622f923261fac6c65d12516e46fe7f225ced8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:9f7a04341ba41966621ed25e5f3e8b3c08f2389f10b926e8a6226296367845c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.3 MB (753321345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6f563b6d019c1ccd57f9d3cee1f21bff99b0c012872b8552c044bf32822760`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:36:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b53f46984895a3486ad349065980a71797687280a8e36139368b26d8cc7c6f4`  
		Last Modified: Wed, 07 Mar 2018 05:40:34 GMT  
		Size: 371.3 MB (371302642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:7e2ed3b3e96b1bc4399c7cc3f0e94975c566290ab7de404d24a9d9ae5050ddbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.1 MB (640075485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f527b7a72e5af984f1cece234a1080087d2dee980075fe2c1f16beedff01684`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:33:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ec64409c283de220be34ea284cc14401fe23e3e4c857c9c26405b1e48d5102`  
		Last Modified: Wed, 07 Mar 2018 14:49:30 GMT  
		Size: 306.1 MB (306097450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:97465583d70fb46fdfea44f1db2c57669dc3ae22aafe82f6829d61aa651df2d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.0 MB (668016254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd80ffbff43a6f49a4c715af35b083a5dbce3e4b8998499e8991b1eb1d9e6af`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:06:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285752b8c425db39f32c52815582fc607ba176e5de0922902289f150a5023607`  
		Last Modified: Wed, 07 Mar 2018 16:45:47 GMT  
		Size: 320.3 MB (320263799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:fed8d5ab779c414289d09550e45479ff0acf3d83a65646f08436d0059edbd6ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:df45b3bb71723dbd80f5435b672064f350a80a8a2a4f085686e863503eaa8dbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.6 MB (485637253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb343230363f2dc694590cc6465adb6ab162dff8f18962bb45674ebfcec9043`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3f2772f769fc88a139802d4fe47199e49b6c934e2b70e765201f1e5c77b17d`  
		Last Modified: Wed, 07 Mar 2018 05:38:20 GMT  
		Size: 103.6 MB (103618550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:fa6c7cd3bd7370bdc99b1d74a77a31e4e46a4e7f18233cc90f96ce657f37119b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.0 MB (424001918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf56dd1e85084d6ea3480a97ce8b69688944b9581e26c311076c9fd6c8137483`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:30:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8bcb13328bcd023fd333f9fbe31f8853378dbb2209f3353ce329654c11906d`  
		Last Modified: Wed, 07 Mar 2018 14:47:43 GMT  
		Size: 90.0 MB (90023883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d1749d3a3f8212285497de7ea915128c7172e7858fb4c4cbbb4d17efacf881d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.6 MB (441640225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a832d8d6f2c0fb450e8e8ac3adeb3344bbba99ae9bce62c04d15440e619743bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:53:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730a66289507994bb3c7308a052c0e2d7f8335ecb8163577a4a1fc0629e8fe1c`  
		Last Modified: Wed, 07 Mar 2018 16:42:34 GMT  
		Size: 93.9 MB (93887770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:c81de8f3d5d915dc3968abe78a3c0f0375224a8047da4d6bbf0ad0d90ce156e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:95ff956391cebc5d472e710d9d63347e60c92fa75a735c212925f1fc211e99b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.7 MB (436658985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3ca8d5e45c2bf444e5fef43281690c23a0ada4c6031a4d08956c4c51e9385ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 20:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:08:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 20:08:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 20:09:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 20:09:46 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 20:09:46 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 20:11:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:11:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 20:11:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 20:11:30 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 20:27:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:28:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2825f1cb0670f79e9ceb737efb80273adaec0d58b8b935eb8058666e9071f4`  
		Last Modified: Fri, 16 Feb 2018 20:54:17 GMT  
		Size: 33.8 MB (33769465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b66fc87bca8772fd86dc77593ef20e2b3fc7368a316c60a51357d8f147de6b5`  
		Last Modified: Fri, 16 Feb 2018 20:53:57 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3570762af0a06c3ce7fbed6c098a5dec0845959b73eaeb83fa607a07eabad0`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb590e1ab2a3e7b7bd5a1de3be1f2dd14e3036f08cf8bfb5a34ed979a7a7cd9a`  
		Last Modified: Fri, 16 Feb 2018 20:54:22 GMT  
		Size: 46.5 MB (46490130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554589c97f7f4223155822a859014f18327946a58efb47b846b9f36a8b15fb6b`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 785.6 KB (785572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7447c924dc92831d2eb4bc639a10bffcac1e081c8bf7438e212763dc02958073`  
		Last Modified: Fri, 16 Feb 2018 20:54:56 GMT  
		Size: 157.3 MB (157277345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d2a049ef84e87559a62a94cff5277afd0819abe3e3eb62abbff7408c25c2a4`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde793e5670c536064c562eb02ad4505eeabbd3671ac075e2b021da22dde1651`  
		Last Modified: Fri, 16 Feb 2018 21:07:23 GMT  
		Size: 84.2 MB (84216961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b07e93961e841d79a286776d81f9029cbe74529001bb6cfd54068b1f8f26af79`  
		Last Modified: Fri, 16 Feb 2018 21:16:28 GMT  
		Size: 61.5 MB (61509389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:645f7316486289011edef536268a65ab325498beb76a033f7a6fd52c03745eab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.1 MB (384063223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe29a7425dd3f6db4bf56f4c7cf2f15851de5923376016436664c2b8c96f6a3c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:41:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 03:41:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 03:47:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:47:46 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 03:47:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 03:48:32 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 03:48:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 03:56:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:56:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 03:56:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 03:56:57 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:02:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:06:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aa057fedf755e9ec4b8bbda90ba4c3aa28ff2a213c14be0092f284a2ad477e`  
		Last Modified: Fri, 16 Feb 2018 04:57:46 GMT  
		Size: 32.1 MB (32147702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8a391b0e806554445a1c65fa7a4fcbc86c96b543323664233e5e03e92866c`  
		Last Modified: Fri, 16 Feb 2018 04:57:35 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376c35cf8baa4bce06d5c39aec405e46743f8b5d5dccda18f9b7858c4ec670c`  
		Last Modified: Fri, 16 Feb 2018 04:57:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434b028f18d3eeb71c74226ed6de9416cdead676cf4b6ed5a7639e8aedc44af0`  
		Last Modified: Fri, 16 Feb 2018 04:58:03 GMT  
		Size: 44.2 MB (44196897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a22f3660e6f9aa066e85b3da0774bdf8965c0f3033aec97727fb0d441a5728`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 785.5 KB (785508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fe01f1e86fe37f6694630b72dd6b3b49ba9c5e7129d03b21be07726742ed85`  
		Last Modified: Fri, 16 Feb 2018 04:58:41 GMT  
		Size: 130.6 MB (130562401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c8d956079491a11e5ef4be0aa97ea808030e5a2d96bb8b7a6e79adc950b9b`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24593235cb2b1057477711845c028388c7b34db82d4829c9eb1d07e6c1c4fdf1`  
		Last Modified: Fri, 16 Feb 2018 04:59:23 GMT  
		Size: 69.1 MB (69052881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34313a30ebc8539f030e084771eaf7ba444115a0f3bc8ec679ca465c5516bc32`  
		Last Modified: Fri, 16 Feb 2018 05:00:10 GMT  
		Size: 57.4 MB (57382143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:fed8d5ab779c414289d09550e45479ff0acf3d83a65646f08436d0059edbd6ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:df45b3bb71723dbd80f5435b672064f350a80a8a2a4f085686e863503eaa8dbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.6 MB (485637253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb343230363f2dc694590cc6465adb6ab162dff8f18962bb45674ebfcec9043`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:33:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3f2772f769fc88a139802d4fe47199e49b6c934e2b70e765201f1e5c77b17d`  
		Last Modified: Wed, 07 Mar 2018 05:38:20 GMT  
		Size: 103.6 MB (103618550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:fa6c7cd3bd7370bdc99b1d74a77a31e4e46a4e7f18233cc90f96ce657f37119b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.0 MB (424001918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf56dd1e85084d6ea3480a97ce8b69688944b9581e26c311076c9fd6c8137483`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:30:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8bcb13328bcd023fd333f9fbe31f8853378dbb2209f3353ce329654c11906d`  
		Last Modified: Wed, 07 Mar 2018 14:47:43 GMT  
		Size: 90.0 MB (90023883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d1749d3a3f8212285497de7ea915128c7172e7858fb4c4cbbb4d17efacf881d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.6 MB (441640225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a832d8d6f2c0fb450e8e8ac3adeb3344bbba99ae9bce62c04d15440e619743bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:53:13 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730a66289507994bb3c7308a052c0e2d7f8335ecb8163577a4a1fc0629e8fe1c`  
		Last Modified: Wed, 07 Mar 2018 16:42:34 GMT  
		Size: 93.9 MB (93887770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:5e6db5b83d2152171c00977f5e0e7a063841c0267108bc3d6ac7f035ded83fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:7c60fec1deb39ed9e1963ec36e6d88b53eb58ed17e3bf6a85be4af10cbfaa129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (382018703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e009edabca499c1559825d679a4007c5cb00bd4390ec521faf56cc254710d1d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:82caf49162c1bdc5aa46c4d63d5fbff60ec2517e48daf3915efe5197a963864a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333978035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b179e429a5896a977a56a5253b1bbfb12f6f8ebe9fe7e1b87d8c6da14e3ad52e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da4ff9c53ff0d7a63ecc42573da817e8d797c78398c41e78ae7e78c24e3397be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347752455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78de2479e62b27cd080b312f2877b504a28186310bcf8c27da0135617eb1d35a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:b3e1e3dbda5959bd0224c15042b42cd316555037be1b3ed8307a6a93aa47b5fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:5d6d22a654bde4e085d4168775d6d38dc7157768232555aca05f41ab579511ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.1 MB (375149596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e25738d39eee120e91c745f21cd4d951d3a708a97926caaba7a5fafffc5c45`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 20:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:08:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 20:08:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 20:09:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 20:09:46 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 20:09:46 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 20:11:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:11:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 20:11:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 20:11:30 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 20:27:32 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2825f1cb0670f79e9ceb737efb80273adaec0d58b8b935eb8058666e9071f4`  
		Last Modified: Fri, 16 Feb 2018 20:54:17 GMT  
		Size: 33.8 MB (33769465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b66fc87bca8772fd86dc77593ef20e2b3fc7368a316c60a51357d8f147de6b5`  
		Last Modified: Fri, 16 Feb 2018 20:53:57 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3570762af0a06c3ce7fbed6c098a5dec0845959b73eaeb83fa607a07eabad0`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb590e1ab2a3e7b7bd5a1de3be1f2dd14e3036f08cf8bfb5a34ed979a7a7cd9a`  
		Last Modified: Fri, 16 Feb 2018 20:54:22 GMT  
		Size: 46.5 MB (46490130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554589c97f7f4223155822a859014f18327946a58efb47b846b9f36a8b15fb6b`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 785.6 KB (785572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7447c924dc92831d2eb4bc639a10bffcac1e081c8bf7438e212763dc02958073`  
		Last Modified: Fri, 16 Feb 2018 20:54:56 GMT  
		Size: 157.3 MB (157277345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d2a049ef84e87559a62a94cff5277afd0819abe3e3eb62abbff7408c25c2a4`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde793e5670c536064c562eb02ad4505eeabbd3671ac075e2b021da22dde1651`  
		Last Modified: Fri, 16 Feb 2018 21:07:23 GMT  
		Size: 84.2 MB (84216961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5acea99f843c96fd13aa12f35b7d6f8c07f3284eb227ed3d362ec81affbbb418
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326681080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6010fcd69ef830e55b6c881ed64e33aaec1b775936f8d65526c71a26b41f9e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:41:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 03:41:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 03:47:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:47:46 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 03:47:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 03:48:32 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 03:48:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 03:56:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:56:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 03:56:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 03:56:57 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:02:37 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aa057fedf755e9ec4b8bbda90ba4c3aa28ff2a213c14be0092f284a2ad477e`  
		Last Modified: Fri, 16 Feb 2018 04:57:46 GMT  
		Size: 32.1 MB (32147702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8a391b0e806554445a1c65fa7a4fcbc86c96b543323664233e5e03e92866c`  
		Last Modified: Fri, 16 Feb 2018 04:57:35 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376c35cf8baa4bce06d5c39aec405e46743f8b5d5dccda18f9b7858c4ec670c`  
		Last Modified: Fri, 16 Feb 2018 04:57:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434b028f18d3eeb71c74226ed6de9416cdead676cf4b6ed5a7639e8aedc44af0`  
		Last Modified: Fri, 16 Feb 2018 04:58:03 GMT  
		Size: 44.2 MB (44196897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a22f3660e6f9aa066e85b3da0774bdf8965c0f3033aec97727fb0d441a5728`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 785.5 KB (785508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fe01f1e86fe37f6694630b72dd6b3b49ba9c5e7129d03b21be07726742ed85`  
		Last Modified: Fri, 16 Feb 2018 04:58:41 GMT  
		Size: 130.6 MB (130562401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c8d956079491a11e5ef4be0aa97ea808030e5a2d96bb8b7a6e79adc950b9b`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24593235cb2b1057477711845c028388c7b34db82d4829c9eb1d07e6c1c4fdf1`  
		Last Modified: Fri, 16 Feb 2018 04:59:23 GMT  
		Size: 69.1 MB (69052881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:5e6db5b83d2152171c00977f5e0e7a063841c0267108bc3d6ac7f035ded83fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7c60fec1deb39ed9e1963ec36e6d88b53eb58ed17e3bf6a85be4af10cbfaa129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (382018703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e009edabca499c1559825d679a4007c5cb00bd4390ec521faf56cc254710d1d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:82caf49162c1bdc5aa46c4d63d5fbff60ec2517e48daf3915efe5197a963864a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333978035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b179e429a5896a977a56a5253b1bbfb12f6f8ebe9fe7e1b87d8c6da14e3ad52e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da4ff9c53ff0d7a63ecc42573da817e8d797c78398c41e78ae7e78c24e3397be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347752455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78de2479e62b27cd080b312f2877b504a28186310bcf8c27da0135617eb1d35a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:a0d35c8f29bfc0a24c0b49d22b2df891ba0a4df21ef153ab356c24b65a8be89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:72ee5710e573baaded2f3ce2f34c87aa80c69cbb4455f71e6f5f7db8d03039bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298109204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a3b697500e41d1e58db0c3c58ba7efcfb2651cbb4651ac17863e21a429f5df`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:5cce579baa6a6246c761e7ae7b3afb264ba16923d474735635bcae0037f96c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258883762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c7c05aaf5046ffefb82e5ed31f1122038cd0d4fa2c3ea4981d02094177a320`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1b4697ac3fa89d4bb86aef45e3e8db98688993004cccb987d80538d56bf299a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271216737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e797bd02e5a4bbc1e854d114a0eaffb35b34780b8cd47eb56c1472d265ec35`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:3aef05350c10b55f92528c7986a8baea90e980b1b4b36921b71110e583b98027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:dc0075c175f0a67566a7cd5b3d15a86198d0ba5dd61c2b028591cae0d9a317fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290932635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e358057320cf9e4620977b6edeb859dc507fed0d04450bf8b807dad07b0dc9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 20:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:08:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 20:08:58 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 20:09:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 20:09:36 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 20:09:46 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 20:09:46 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 20:11:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 20:11:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 20:11:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 20:11:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2825f1cb0670f79e9ceb737efb80273adaec0d58b8b935eb8058666e9071f4`  
		Last Modified: Fri, 16 Feb 2018 20:54:17 GMT  
		Size: 33.8 MB (33769465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b66fc87bca8772fd86dc77593ef20e2b3fc7368a316c60a51357d8f147de6b5`  
		Last Modified: Fri, 16 Feb 2018 20:53:57 GMT  
		Size: 1.4 KB (1423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3570762af0a06c3ce7fbed6c098a5dec0845959b73eaeb83fa607a07eabad0`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb590e1ab2a3e7b7bd5a1de3be1f2dd14e3036f08cf8bfb5a34ed979a7a7cd9a`  
		Last Modified: Fri, 16 Feb 2018 20:54:22 GMT  
		Size: 46.5 MB (46490130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554589c97f7f4223155822a859014f18327946a58efb47b846b9f36a8b15fb6b`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 785.6 KB (785572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7447c924dc92831d2eb4bc639a10bffcac1e081c8bf7438e212763dc02958073`  
		Last Modified: Fri, 16 Feb 2018 20:54:56 GMT  
		Size: 157.3 MB (157277345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d2a049ef84e87559a62a94cff5277afd0819abe3e3eb62abbff7408c25c2a4`  
		Last Modified: Fri, 16 Feb 2018 20:53:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:8f8c2c93cf6f7bc9f0031eea72ddd6cd427bdfbd024a30bf24a5b2506454e6ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257628199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c72b8ed6f6c2c632a1d10bcf8208da0dc20b51b9577ffda4933a569b926a4ad6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:23:58 GMT
ADD file:bc24a2abea1b7b5e19cc422c33c0a175e9ea5dea4dd916445f3f6a41120168bc in / 
# Thu, 15 Feb 2018 18:23:59 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 03:41:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:41:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 03:41:40 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 03:47:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:47:46 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 03:47:47 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 03:48:32 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 03:48:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 16 Feb 2018 03:56:44 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 03:56:47 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 03:56:56 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 03:56:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3e4fb67aa3162ae58c4f79ecce148cc1933ef5c5736a971149ebf1412aba927d`  
		Last Modified: Thu, 15 Feb 2018 00:51:48 GMT  
		Size: 49.9 MB (49933846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aa057fedf755e9ec4b8bbda90ba4c3aa28ff2a213c14be0092f284a2ad477e`  
		Last Modified: Fri, 16 Feb 2018 04:57:46 GMT  
		Size: 32.1 MB (32147702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e8a391b0e806554445a1c65fa7a4fcbc86c96b543323664233e5e03e92866c`  
		Last Modified: Fri, 16 Feb 2018 04:57:35 GMT  
		Size: 1.4 KB (1425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376c35cf8baa4bce06d5c39aec405e46743f8b5d5dccda18f9b7858c4ec670c`  
		Last Modified: Fri, 16 Feb 2018 04:57:32 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434b028f18d3eeb71c74226ed6de9416cdead676cf4b6ed5a7639e8aedc44af0`  
		Last Modified: Fri, 16 Feb 2018 04:58:03 GMT  
		Size: 44.2 MB (44196897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0a22f3660e6f9aa066e85b3da0774bdf8965c0f3033aec97727fb0d441a5728`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 785.5 KB (785508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fe01f1e86fe37f6694630b72dd6b3b49ba9c5e7129d03b21be07726742ed85`  
		Last Modified: Fri, 16 Feb 2018 04:58:41 GMT  
		Size: 130.6 MB (130562401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c8d956079491a11e5ef4be0aa97ea808030e5a2d96bb8b7a6e79adc950b9b`  
		Last Modified: Fri, 16 Feb 2018 04:57:33 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:a0d35c8f29bfc0a24c0b49d22b2df891ba0a4df21ef153ab356c24b65a8be89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:72ee5710e573baaded2f3ce2f34c87aa80c69cbb4455f71e6f5f7db8d03039bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.1 MB (298109204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79a3b697500e41d1e58db0c3c58ba7efcfb2651cbb4651ac17863e21a429f5df`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:5cce579baa6a6246c761e7ae7b3afb264ba16923d474735635bcae0037f96c8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258883762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c7c05aaf5046ffefb82e5ed31f1122038cd0d4fa2c3ea4981d02094177a320`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1b4697ac3fa89d4bb86aef45e3e8db98688993004cccb987d80538d56bf299a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271216737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e797bd02e5a4bbc1e854d114a0eaffb35b34780b8cd47eb56c1472d265ec35`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:5e6db5b83d2152171c00977f5e0e7a063841c0267108bc3d6ac7f035ded83fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:7c60fec1deb39ed9e1963ec36e6d88b53eb58ed17e3bf6a85be4af10cbfaa129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (382018703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e009edabca499c1559825d679a4007c5cb00bd4390ec521faf56cc254710d1d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:23:59 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 04:25:10 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:25:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:25:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:25:11 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:29:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf992befce791249e12b1de14873dc7994a62aaddf88cd16538460787907726a`  
		Last Modified: Wed, 07 Mar 2018 05:24:12 GMT  
		Size: 193.4 MB (193420853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052757a7efdb65c5c80abf168ae60b8d4aeeda2b26643234ec3c249f12e71f1a`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b2d150f383e7cc4df04f7c561e029b0ff408451ea149faa5b5279406cbb71c`  
		Last Modified: Wed, 07 Mar 2018 05:36:40 GMT  
		Size: 83.9 MB (83909499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:82caf49162c1bdc5aa46c4d63d5fbff60ec2517e48daf3915efe5197a963864a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (333978035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b179e429a5896a977a56a5253b1bbfb12f6f8ebe9fe7e1b87d8c6da14e3ad52e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:24:05 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 14:26:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:26:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:26:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:26:49 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:28:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f0d3d1777e9a432c809076f3e6e4933a6b13b63f7733e983e0842435c9bc27`  
		Last Modified: Wed, 07 Mar 2018 14:45:47 GMT  
		Size: 164.7 MB (164718752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dc873fb2fe6d8fb1205313f97df61ba8bacaa79fcfc5dc31ae281b5bc1c2528`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa547da5150451ee067be7ca2ad02a7f7c842086914c6fd8172c2aaba81a6b44`  
		Last Modified: Wed, 07 Mar 2018 14:46:30 GMT  
		Size: 75.1 MB (75094273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da4ff9c53ff0d7a63ecc42573da817e8d797c78398c41e78ae7e78c24e3397be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347752455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78de2479e62b27cd080b312f2877b504a28186310bcf8c27da0135617eb1d35a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 15:29:33 GMT
ENV ROS_DISTRO=kinetic
# Wed, 07 Mar 2018 15:40:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:40:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 15:40:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 15:40:32 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 15:46:33 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b05865e11dda2df26e2342e0c3b33d17b99cfb1ce713d40ba27379de0ef26d`  
		Last Modified: Wed, 07 Mar 2018 16:39:46 GMT  
		Size: 174.0 MB (173980719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f384d297c692a2633ffd7f50ba47b3c29835d1f45180872beb6bbfbb8405b839`  
		Last Modified: Wed, 07 Mar 2018 16:38:41 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9506f6b0915cf13cb642f6fdfe646a43fa9a274b3a01a59b558cc93633f2c7`  
		Last Modified: Wed, 07 Mar 2018 16:40:50 GMT  
		Size: 76.5 MB (76535718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:75ea6f671892ed4c96ebe79ab92143dc3a85f31d5539e54a1659bb1ef2a6ce85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:7dfde663cb385653a8c95b2f420acf1c5ccf0145704e7fc9393d903f48dc7db2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.1 MB (382099743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627278d89ea32f30f9d132086413f314d5a5b7c80ec8c877a11fe62400b349e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 05:01:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d88937eb46572bdd1d11f68e56c37ac8f835486cec7d430bf36a18ebac89e6`  
		Last Modified: Wed, 07 Mar 2018 05:55:01 GMT  
		Size: 83.8 MB (83832627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:1db64171c10d53e038bcfc8eb2adc4c57894698fe258b114d12163858d684a4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334069561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a27677f3b4397d4b6b242e3f6151d55a5ef31cbc2a781c8b7439082826996e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:36:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75303ecb2508cd7b2e91d527e1449ea4eda41acc37c9bd2d9224f3be4b61a15`  
		Last Modified: Wed, 07 Mar 2018 14:51:38 GMT  
		Size: 75.0 MB (75020410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:564f5c7a444088221483e6b7184a33b4588af8ddf35f14a0e3034e6cce43f6bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347826359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a16da076df73fd1a5a512b78757a748a52e4e845f43c8802c4e58e94de89a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 16:21:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e1f7529da33e704a5393a004b61ad28178b216203b5365957462248d34a25c`  
		Last Modified: Wed, 07 Mar 2018 16:49:15 GMT  
		Size: 76.5 MB (76454532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:d414acbab847d0e367072b278f6265ff18c75ea8ca955367e6bd5479a8acfda9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:a971e5304da7503c112f18a33625cc7f730703d2815613304b6bec062e24299e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.4 MB (753431881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac40ba6ccf655a3b20552cd881e71cb8be4e01ff7eacf07e221b3d0e3680fc23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 05:01:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 05:06:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d88937eb46572bdd1d11f68e56c37ac8f835486cec7d430bf36a18ebac89e6`  
		Last Modified: Wed, 07 Mar 2018 05:55:01 GMT  
		Size: 83.8 MB (83832627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8828398382a1199f37fecb428874af414e31263f3c14a24b83c7b30ad0727bcf`  
		Last Modified: Wed, 07 Mar 2018 06:02:19 GMT  
		Size: 371.3 MB (371332138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:d1c0117b06425c7221647f442b0701651d2a46ed2444f23010fd85feb089fe04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.2 MB (640190255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1355a240bbe49dcbd2252da54a17f18b2922c7af5b1b442715a8221e4201648`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:36:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:40:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75303ecb2508cd7b2e91d527e1449ea4eda41acc37c9bd2d9224f3be4b61a15`  
		Last Modified: Wed, 07 Mar 2018 14:51:38 GMT  
		Size: 75.0 MB (75020410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ead8e7c150c737de678257d663ca867acc0632d8106cb6df1ac76d72cc75`  
		Last Modified: Wed, 07 Mar 2018 14:54:54 GMT  
		Size: 306.1 MB (306120694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4220fb1ae2d621f91e146b01b247fe32842cd4013a1225a6b0e4f343a0c0e10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.1 MB (668098502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9b6afc8c58f45d69d07c1e36cda5149ecfb83638bc1a2a8186d5493f2b0368`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 16:21:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:37:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e1f7529da33e704a5393a004b61ad28178b216203b5365957462248d34a25c`  
		Last Modified: Wed, 07 Mar 2018 16:49:15 GMT  
		Size: 76.5 MB (76454532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea77cb46bc7ca3f5914c783879d9dd5ff0f25eb341027f47a6fa7b5e7b9c60e`  
		Last Modified: Wed, 07 Mar 2018 16:53:54 GMT  
		Size: 320.3 MB (320272143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:646750ebc8263874026758cc6b8fd286d97b75feb35cfd7e78cee387187ca820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:71698778ecbe559ff1e9d4b67b4c335bbd2e3517f363df401965ba9956fca1a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **925.5 MB (925467428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42eff6b516567c9c852697a5101a5ec0730a34a398b9a3f1d656dcb8c59bb2cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:45:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:05:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca81767dc349c71990259c0d871cea8bada6fbe94774c901a28e5867ce7ebe69`  
		Last Modified: Thu, 15 Feb 2018 12:34:10 GMT  
		Size: 122.2 MB (122213973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f533a80daa444088849a020d0d7c29071cba486e66f59cc4ff582dbcf5e708`  
		Last Modified: Thu, 15 Feb 2018 12:36:52 GMT  
		Size: 433.5 MB (433454320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5787a0fc62d7fef6c61f6c4449aed355d37292d2658a88ca121206279b0eddda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.9 MB (808915678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c38f3f366aa1d91ca0549fef4e6c29704e67f8a6185e4cb0ebcd17f4d850d0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:19:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 04:19:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 04:21:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:21:38 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 04:21:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 04:22:26 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 04:22:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Feb 2018 04:32:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 04:32:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 04:32:10 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:36:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:56:51 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1aa9de31195f13a194a89e8cab460e42e89785da4de296ee67f49a473151502`  
		Last Modified: Fri, 16 Feb 2018 05:02:17 GMT  
		Size: 6.8 MB (6793887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bd0f2d5b7b2d1640ece1997ec9b4c0ba35182ab50e9b76c7a5dd5b1036fb7a`  
		Last Modified: Fri, 16 Feb 2018 05:02:13 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d0729a045cc054a9c5ef1740283f8a4a96ca631ec59e91a6ac8bdaac8463e`  
		Last Modified: Fri, 16 Feb 2018 05:02:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc43d45db2b7da99f77fed625e4a05a21f6562e263528fb36a038982f6ded28`  
		Last Modified: Fri, 16 Feb 2018 05:02:47 GMT  
		Size: 61.9 MB (61941610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603fdd990e3bdef118a53a405a6364271e640a935f1a6486cbee20ccfc5d39b3`  
		Last Modified: Fri, 16 Feb 2018 05:02:11 GMT  
		Size: 785.5 KB (785511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61e469bd70b92ebd66aba2e25058603d6bc147542ca8709ca21b14b80dd10f`  
		Last Modified: Fri, 16 Feb 2018 05:03:38 GMT  
		Size: 206.8 MB (206769329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937262db05ad615818da854a8f99c96962bc7eb1c78647951dfb515a968ef62`  
		Last Modified: Fri, 16 Feb 2018 05:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494a24671515648e678840d16acdaf9bbb398b9dac822beff545deffd65512c`  
		Last Modified: Fri, 16 Feb 2018 05:04:38 GMT  
		Size: 116.0 MB (116029937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1eef3676b90b4bba711846b2b5a01ab913d3273a942e02e04a557907511fc5`  
		Last Modified: Fri, 16 Feb 2018 05:07:51 GMT  
		Size: 373.7 MB (373671700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:d414acbab847d0e367072b278f6265ff18c75ea8ca955367e6bd5479a8acfda9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a971e5304da7503c112f18a33625cc7f730703d2815613304b6bec062e24299e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.4 MB (753431881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac40ba6ccf655a3b20552cd881e71cb8be4e01ff7eacf07e221b3d0e3680fc23`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 05:01:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 05:06:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d88937eb46572bdd1d11f68e56c37ac8f835486cec7d430bf36a18ebac89e6`  
		Last Modified: Wed, 07 Mar 2018 05:55:01 GMT  
		Size: 83.8 MB (83832627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8828398382a1199f37fecb428874af414e31263f3c14a24b83c7b30ad0727bcf`  
		Last Modified: Wed, 07 Mar 2018 06:02:19 GMT  
		Size: 371.3 MB (371332138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:d1c0117b06425c7221647f442b0701651d2a46ed2444f23010fd85feb089fe04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.2 MB (640190255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1355a240bbe49dcbd2252da54a17f18b2922c7af5b1b442715a8221e4201648`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:36:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:40:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75303ecb2508cd7b2e91d527e1449ea4eda41acc37c9bd2d9224f3be4b61a15`  
		Last Modified: Wed, 07 Mar 2018 14:51:38 GMT  
		Size: 75.0 MB (75020410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ce1ead8e7c150c737de678257d663ca867acc0632d8106cb6df1ac76d72cc75`  
		Last Modified: Wed, 07 Mar 2018 14:54:54 GMT  
		Size: 306.1 MB (306120694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4220fb1ae2d621f91e146b01b247fe32842cd4013a1225a6b0e4f343a0c0e10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.1 MB (668098502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9b6afc8c58f45d69d07c1e36cda5149ecfb83638bc1a2a8186d5493f2b0368`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 16:21:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:37:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e1f7529da33e704a5393a004b61ad28178b216203b5365957462248d34a25c`  
		Last Modified: Wed, 07 Mar 2018 16:49:15 GMT  
		Size: 76.5 MB (76454532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea77cb46bc7ca3f5914c783879d9dd5ff0f25eb341027f47a6fa7b5e7b9c60e`  
		Last Modified: Wed, 07 Mar 2018 16:53:54 GMT  
		Size: 320.3 MB (320272143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:c6ad49f55cdeca0c5795452ec5e238283988e530f54243057f1d0c23799e6ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:aa198b96198b46bae8049b4c017be76a8e77bec2c8027eee62959c16d8007a0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.8 MB (485804541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0522667c7093c7faa872f343c7896b98fb5712c1e3b0f6cf80fc0c51618f43c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 05:01:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 05:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d88937eb46572bdd1d11f68e56c37ac8f835486cec7d430bf36a18ebac89e6`  
		Last Modified: Wed, 07 Mar 2018 05:55:01 GMT  
		Size: 83.8 MB (83832627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93019401d6392e7c3b9302603b953106268af524f9fc3ebc6245f72078635ac0`  
		Last Modified: Wed, 07 Mar 2018 05:56:26 GMT  
		Size: 103.7 MB (103704798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:d5331429a9191fc7da7b3217ac1c36dbb60faa135430f2a1b389e89ddffba4f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424182070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7c0fc4d4c1c4486849dfb675d6d2253a671e6cc6f330cbd774b96a17075e65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:36:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:37:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75303ecb2508cd7b2e91d527e1449ea4eda41acc37c9bd2d9224f3be4b61a15`  
		Last Modified: Wed, 07 Mar 2018 14:51:38 GMT  
		Size: 75.0 MB (75020410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb9d0221655d212298a9427591dc5d6cf869ce29a00814b8cfe48e2a5195078`  
		Last Modified: Wed, 07 Mar 2018 14:52:52 GMT  
		Size: 90.1 MB (90112509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c7936d7ea8489f6a8375a5ff55afb3da21d928ffa9c92ef21eec4d6e6336c99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.8 MB (441792184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b298400134bdb248bbe4d4154966d5fed28258d21beeca2902e32de8e7745a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 16:21:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:26:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e1f7529da33e704a5393a004b61ad28178b216203b5365957462248d34a25c`  
		Last Modified: Wed, 07 Mar 2018 16:49:15 GMT  
		Size: 76.5 MB (76454532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401c7e68db6ae39a38c6a4565b17994b1b30eedce5082ec9fb542c0882eab8b`  
		Last Modified: Wed, 07 Mar 2018 16:50:48 GMT  
		Size: 94.0 MB (93965825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:44768704deec8363809bfdc725d5a9e301280838bd355f514c3870bda666778d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c623e894f4056afe1910e37551498a6a82b24780bfe4aee53a3c29386270811c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552440262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fecc5b2c2afff84bc34636138427c13d758973a17b5f3aa5bf8cee96981979`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:45:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:46:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca81767dc349c71990259c0d871cea8bada6fbe94774c901a28e5867ce7ebe69`  
		Last Modified: Thu, 15 Feb 2018 12:34:10 GMT  
		Size: 122.2 MB (122213973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103a252750ef6d4b9dadf6d5f02e640e88b40794ffece1e4df5eca6fe6d5fd`  
		Last Modified: Thu, 15 Feb 2018 12:34:50 GMT  
		Size: 60.4 MB (60427154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b85e4a6112aa649d79fb4dbbab52f375b571cada0399bd797056affdbd633d00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.7 MB (492748899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ef30cecddd2d35cae20b6f99d04c42f98f9bf8d28e9266c3174aa7fc894ce2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:19:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 04:19:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 04:21:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:21:38 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 04:21:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 04:22:26 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 04:22:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Feb 2018 04:32:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 04:32:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 04:32:10 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:36:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:41:37 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1aa9de31195f13a194a89e8cab460e42e89785da4de296ee67f49a473151502`  
		Last Modified: Fri, 16 Feb 2018 05:02:17 GMT  
		Size: 6.8 MB (6793887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bd0f2d5b7b2d1640ece1997ec9b4c0ba35182ab50e9b76c7a5dd5b1036fb7a`  
		Last Modified: Fri, 16 Feb 2018 05:02:13 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d0729a045cc054a9c5ef1740283f8a4a96ca631ec59e91a6ac8bdaac8463e`  
		Last Modified: Fri, 16 Feb 2018 05:02:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc43d45db2b7da99f77fed625e4a05a21f6562e263528fb36a038982f6ded28`  
		Last Modified: Fri, 16 Feb 2018 05:02:47 GMT  
		Size: 61.9 MB (61941610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603fdd990e3bdef118a53a405a6364271e640a935f1a6486cbee20ccfc5d39b3`  
		Last Modified: Fri, 16 Feb 2018 05:02:11 GMT  
		Size: 785.5 KB (785511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61e469bd70b92ebd66aba2e25058603d6bc147542ca8709ca21b14b80dd10f`  
		Last Modified: Fri, 16 Feb 2018 05:03:38 GMT  
		Size: 206.8 MB (206769329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937262db05ad615818da854a8f99c96962bc7eb1c78647951dfb515a968ef62`  
		Last Modified: Fri, 16 Feb 2018 05:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494a24671515648e678840d16acdaf9bbb398b9dac822beff545deffd65512c`  
		Last Modified: Fri, 16 Feb 2018 05:04:38 GMT  
		Size: 116.0 MB (116029937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087799164de456ec4f1435a2dd850ba7e18e19ebcf5925293220068e8647b916`  
		Last Modified: Fri, 16 Feb 2018 05:05:22 GMT  
		Size: 57.5 MB (57504921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:c6ad49f55cdeca0c5795452ec5e238283988e530f54243057f1d0c23799e6ead
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:aa198b96198b46bae8049b4c017be76a8e77bec2c8027eee62959c16d8007a0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.8 MB (485804541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0522667c7093c7faa872f343c7896b98fb5712c1e3b0f6cf80fc0c51618f43c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 05:01:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 05:02:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d88937eb46572bdd1d11f68e56c37ac8f835486cec7d430bf36a18ebac89e6`  
		Last Modified: Wed, 07 Mar 2018 05:55:01 GMT  
		Size: 83.8 MB (83832627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93019401d6392e7c3b9302603b953106268af524f9fc3ebc6245f72078635ac0`  
		Last Modified: Wed, 07 Mar 2018 05:56:26 GMT  
		Size: 103.7 MB (103704798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:d5331429a9191fc7da7b3217ac1c36dbb60faa135430f2a1b389e89ddffba4f6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424182070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7c0fc4d4c1c4486849dfb675d6d2253a671e6cc6f330cbd774b96a17075e65`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:36:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:37:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75303ecb2508cd7b2e91d527e1449ea4eda41acc37c9bd2d9224f3be4b61a15`  
		Last Modified: Wed, 07 Mar 2018 14:51:38 GMT  
		Size: 75.0 MB (75020410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb9d0221655d212298a9427591dc5d6cf869ce29a00814b8cfe48e2a5195078`  
		Last Modified: Wed, 07 Mar 2018 14:52:52 GMT  
		Size: 90.1 MB (90112509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c7936d7ea8489f6a8375a5ff55afb3da21d928ffa9c92ef21eec4d6e6336c99a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.8 MB (441792184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b298400134bdb248bbe4d4154966d5fed28258d21beeca2902e32de8e7745a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 16:21:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:26:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e1f7529da33e704a5393a004b61ad28178b216203b5365957462248d34a25c`  
		Last Modified: Wed, 07 Mar 2018 16:49:15 GMT  
		Size: 76.5 MB (76454532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0401c7e68db6ae39a38c6a4565b17994b1b30eedce5082ec9fb542c0882eab8b`  
		Last Modified: Wed, 07 Mar 2018 16:50:48 GMT  
		Size: 94.0 MB (93965825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:75ea6f671892ed4c96ebe79ab92143dc3a85f31d5539e54a1659bb1ef2a6ce85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:7dfde663cb385653a8c95b2f420acf1c5ccf0145704e7fc9393d903f48dc7db2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.1 MB (382099743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627278d89ea32f30f9d132086413f314d5a5b7c80ec8c877a11fe62400b349e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 05:01:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d88937eb46572bdd1d11f68e56c37ac8f835486cec7d430bf36a18ebac89e6`  
		Last Modified: Wed, 07 Mar 2018 05:55:01 GMT  
		Size: 83.8 MB (83832627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:1db64171c10d53e038bcfc8eb2adc4c57894698fe258b114d12163858d684a4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334069561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a27677f3b4397d4b6b242e3f6151d55a5ef31cbc2a781c8b7439082826996e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:36:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75303ecb2508cd7b2e91d527e1449ea4eda41acc37c9bd2d9224f3be4b61a15`  
		Last Modified: Wed, 07 Mar 2018 14:51:38 GMT  
		Size: 75.0 MB (75020410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:564f5c7a444088221483e6b7184a33b4588af8ddf35f14a0e3034e6cce43f6bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347826359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a16da076df73fd1a5a512b78757a748a52e4e845f43c8802c4e58e94de89a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 16:21:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e1f7529da33e704a5393a004b61ad28178b216203b5365957462248d34a25c`  
		Last Modified: Wed, 07 Mar 2018 16:49:15 GMT  
		Size: 76.5 MB (76454532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:a34c553c14ee8601fb0c9ee0ed517fc30079ca9aba8a553b24c21e4dadf1052e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:f9ac0c647987d6b57833233e7a00de1d0709bd89641fc3d4f3945b39171e584a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.0 MB (492013108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8adb9e2b82b59285e3218972362b883fad3f16cc7a414547aeb6f9ff0006590`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:45:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca81767dc349c71990259c0d871cea8bada6fbe94774c901a28e5867ce7ebe69`  
		Last Modified: Thu, 15 Feb 2018 12:34:10 GMT  
		Size: 122.2 MB (122213973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:39c7b6960cfeaec32df8fc38b37c2082cd28f32bb4c85a3be64f733fa0da2d04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 MB (435243978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae2a1c26e95205e5b15eec4f8627aaf5394c8ea71a7df22fa3a3bf4f14a0e70`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:19:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 04:19:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 04:21:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:21:38 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 04:21:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 04:22:26 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 04:22:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Feb 2018 04:32:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 04:32:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 04:32:10 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:36:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1aa9de31195f13a194a89e8cab460e42e89785da4de296ee67f49a473151502`  
		Last Modified: Fri, 16 Feb 2018 05:02:17 GMT  
		Size: 6.8 MB (6793887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bd0f2d5b7b2d1640ece1997ec9b4c0ba35182ab50e9b76c7a5dd5b1036fb7a`  
		Last Modified: Fri, 16 Feb 2018 05:02:13 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d0729a045cc054a9c5ef1740283f8a4a96ca631ec59e91a6ac8bdaac8463e`  
		Last Modified: Fri, 16 Feb 2018 05:02:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc43d45db2b7da99f77fed625e4a05a21f6562e263528fb36a038982f6ded28`  
		Last Modified: Fri, 16 Feb 2018 05:02:47 GMT  
		Size: 61.9 MB (61941610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603fdd990e3bdef118a53a405a6364271e640a935f1a6486cbee20ccfc5d39b3`  
		Last Modified: Fri, 16 Feb 2018 05:02:11 GMT  
		Size: 785.5 KB (785511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61e469bd70b92ebd66aba2e25058603d6bc147542ca8709ca21b14b80dd10f`  
		Last Modified: Fri, 16 Feb 2018 05:03:38 GMT  
		Size: 206.8 MB (206769329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937262db05ad615818da854a8f99c96962bc7eb1c78647951dfb515a968ef62`  
		Last Modified: Fri, 16 Feb 2018 05:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8494a24671515648e678840d16acdaf9bbb398b9dac822beff545deffd65512c`  
		Last Modified: Fri, 16 Feb 2018 05:04:38 GMT  
		Size: 116.0 MB (116029937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:75ea6f671892ed4c96ebe79ab92143dc3a85f31d5539e54a1659bb1ef2a6ce85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7dfde663cb385653a8c95b2f420acf1c5ccf0145704e7fc9393d903f48dc7db2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.1 MB (382099743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627278d89ea32f30f9d132086413f314d5a5b7c80ec8c877a11fe62400b349e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 05:01:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75d88937eb46572bdd1d11f68e56c37ac8f835486cec7d430bf36a18ebac89e6`  
		Last Modified: Wed, 07 Mar 2018 05:55:01 GMT  
		Size: 83.8 MB (83832627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1db64171c10d53e038bcfc8eb2adc4c57894698fe258b114d12163858d684a4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334069561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71a27677f3b4397d4b6b242e3f6151d55a5ef31cbc2a781c8b7439082826996e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 14:36:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75303ecb2508cd7b2e91d527e1449ea4eda41acc37c9bd2d9224f3be4b61a15`  
		Last Modified: Wed, 07 Mar 2018 14:51:38 GMT  
		Size: 75.0 MB (75020410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:564f5c7a444088221483e6b7184a33b4588af8ddf35f14a0e3034e6cce43f6bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.8 MB (347826359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a16da076df73fd1a5a512b78757a748a52e4e845f43c8802c4e58e94de89a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 16:21:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e1f7529da33e704a5393a004b61ad28178b216203b5365957462248d34a25c`  
		Last Modified: Wed, 07 Mar 2018 16:49:15 GMT  
		Size: 76.5 MB (76454532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:158eb203bbbb000e84c03f61310617a83ec05a9c369ad7ee0947835e02e27c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:7763388987be95b485dbcbe2737f125cdd0498d26af465677dea2467c995ff01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.3 MB (298267116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf047713d3882b832017552017d09659ce5db34a06680ebfc13516dede89c7e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:39242b75168430ca1442de51cdcb48ad282b981b266ad95bbbb423229ad2e0fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259049151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f98433bdb41ad91e73db739edfbb2b25873d990e718e6d1c5de7163909cda9b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f41cafb722e363a53849beeae436f20cbd7642b8d7a664288c2b9e84322e2b6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271371827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d942601f929937a45c9f8f091d47a96ccbf2f3efd9597c8396712547fd0832`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:6af358cfeb092046a5c433eb4e124c08ada7d53e69c0668a38e0e2afa06abb80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:43a5f858e5ecff181a9ad87d024d72ed4561ba5603fb4eca9db5956ac57bd5c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.8 MB (369799135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058705272507cfe8bfc61f5ed55cd8873e791a7d1c072454d9825764663a78a9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:53151b787f365fc200f3a48430daa225a6a2fe32ced4d01665f8a10983effb5d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.2 MB (319214041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb2516823fdf26f1c3d5f773b805e4427cd2c5578dcb71c2bcc9586bb28066c5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:04 GMT
ADD file:f17659d511330c9a9c3fadf05151f88e9d532af1734ffadd1da10aa5e2aeb6ac in / 
# Thu, 15 Feb 2018 18:29:05 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 04:18:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:19:00 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Feb 2018 04:19:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Feb 2018 04:21:37 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:21:38 GMT
ENV LANG=C.UTF-8
# Fri, 16 Feb 2018 04:21:39 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Feb 2018 04:22:26 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Feb 2018 04:22:28 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Feb 2018 04:32:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 04:32:08 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Feb 2018 04:32:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Feb 2018 04:32:10 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b295e5c109fc9f55d14722eb26929ecc106cec04f7d37e867f7da008c53e293b`  
		Last Modified: Thu, 15 Feb 2018 01:14:37 GMT  
		Size: 42.9 MB (42921910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1aa9de31195f13a194a89e8cab460e42e89785da4de296ee67f49a473151502`  
		Last Modified: Fri, 16 Feb 2018 05:02:17 GMT  
		Size: 6.8 MB (6793887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bd0f2d5b7b2d1640ece1997ec9b4c0ba35182ab50e9b76c7a5dd5b1036fb7a`  
		Last Modified: Fri, 16 Feb 2018 05:02:13 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d0729a045cc054a9c5ef1740283f8a4a96ca631ec59e91a6ac8bdaac8463e`  
		Last Modified: Fri, 16 Feb 2018 05:02:10 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc43d45db2b7da99f77fed625e4a05a21f6562e263528fb36a038982f6ded28`  
		Last Modified: Fri, 16 Feb 2018 05:02:47 GMT  
		Size: 61.9 MB (61941610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603fdd990e3bdef118a53a405a6364271e640a935f1a6486cbee20ccfc5d39b3`  
		Last Modified: Fri, 16 Feb 2018 05:02:11 GMT  
		Size: 785.5 KB (785511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d61e469bd70b92ebd66aba2e25058603d6bc147542ca8709ca21b14b80dd10f`  
		Last Modified: Fri, 16 Feb 2018 05:03:38 GMT  
		Size: 206.8 MB (206769329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937262db05ad615818da854a8f99c96962bc7eb1c78647951dfb515a968ef62`  
		Last Modified: Fri, 16 Feb 2018 05:02:09 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:158eb203bbbb000e84c03f61310617a83ec05a9c369ad7ee0947835e02e27c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7763388987be95b485dbcbe2737f125cdd0498d26af465677dea2467c995ff01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.3 MB (298267116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf047713d3882b832017552017d09659ce5db34a06680ebfc13516dede89c7e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 04:23:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:23:17 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:23:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:23:48 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:23:59 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:47:39 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 04:48:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:49:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:49:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:49:01 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b971c0b1ac620a6f91591ec011d9f698374c4f86ced2e76b0a7406fb3ce58360`  
		Last Modified: Wed, 07 Mar 2018 05:23:16 GMT  
		Size: 5.4 MB (5362878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ce9337c61f12b66456c564611af1cebaf18121573deede5ec5f3e5c7e20ce7`  
		Last Modified: Wed, 07 Mar 2018 05:23:15 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f569d1a8f7cf40ba5b621ac4314e120e93a2bce92e1e0ffedfecf99cfedd2`  
		Last Modified: Wed, 07 Mar 2018 05:23:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5639ffe3b624ccc82edad135d18b4b1d4aa7819c94689a64e53152b2e01d0243`  
		Last Modified: Wed, 07 Mar 2018 05:23:35 GMT  
		Size: 55.6 MB (55557751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6742823c6cd5873bd85cc3788f03ac1328b9caeee3bf0f474788d5a73a2f7c29`  
		Last Modified: Wed, 07 Mar 2018 05:23:13 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667ebd93bc9d9c91d79c20fca1609cdb02b7f0e148714d3018abe2788ba8b438`  
		Last Modified: Wed, 07 Mar 2018 05:53:54 GMT  
		Size: 193.6 MB (193578765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf651a74bb2cdcbb27588febf30934c30ce65ad9f62d5330b5f4556c99bbe28`  
		Last Modified: Wed, 07 Mar 2018 05:52:50 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:39242b75168430ca1442de51cdcb48ad282b981b266ad95bbbb423229ad2e0fb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.0 MB (259049151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f98433bdb41ad91e73db739edfbb2b25873d990e718e6d1c5de7163909cda9b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 13:52:24 GMT
ADD file:c07c7154c5c228957fcc844292376cdd264f720f4de80e5e26bfe12b71eb4416 in / 
# Wed, 07 Mar 2018 13:52:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 13:52:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 13:52:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 13:52:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 13:52:29 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 14:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:22:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 14:22:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 14:23:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:23:36 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 14:23:37 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 14:23:56 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 14:34:00 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 14:35:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 14:35:28 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 14:35:28 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 14:35:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:691b6e76f7d3aab0440ae1b4f294074c8b490809368fed044d459292fe167d65`  
		Last Modified: Wed, 07 Mar 2018 13:55:36 GMT  
		Size: 38.1 MB (38072790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb583135666ceef66eba0816ed2027dce2095644cdf80a4334b55a5a90ee2`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d85072a7f55ed7bb2cfe4f48bed80d8c9311b23c2d0bc2997ac020c70443767`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85459cf632f19bfb0925ae8b3baac8101383b24d9262ad72fbf899796fff0cbb`  
		Last Modified: Wed, 07 Mar 2018 13:55:28 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed93ad4943c1d2b769b10ed146a73de5907de32cf2b14f506cbe3c2b78115b82`  
		Last Modified: Wed, 07 Mar 2018 13:55:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e40589e46a9accff6d08d920a618246d48ccb7fadad2d0b063c693b40d3b43`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 4.6 MB (4614947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e3f8c7fa067f4410ca068ae12672f1e6108d79ad8bb90b34ff8b136d89a8ba`  
		Last Modified: Wed, 07 Mar 2018 14:44:59 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c071ba89fb1a97a3df220e57451fdd1a402ae32c359b64df3b2842bdcadd3`  
		Last Modified: Wed, 07 Mar 2018 14:44:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228d7e743e739c404ccab5ec9b9b8e88a3588da82b79d97f85a175bc42ab021`  
		Last Modified: Wed, 07 Mar 2018 14:45:15 GMT  
		Size: 50.7 MB (50672956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033492d3a96cfbee1e3d7319ee3bdc76bf8b8075c205f192596666339de1fc57`  
		Last Modified: Wed, 07 Mar 2018 14:45:00 GMT  
		Size: 788.3 KB (788338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79127d8fb6f8e37fadaa08105179ecd99c1a9a0f69aa075ea2d87477ad002189`  
		Last Modified: Wed, 07 Mar 2018 14:50:53 GMT  
		Size: 164.9 MB (164884141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef90e89a98eebbe0b133c3a9ed374f2fb4b8de9c243e523711db60900ce0627`  
		Last Modified: Wed, 07 Mar 2018 14:50:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f41cafb722e363a53849beeae436f20cbd7642b8d7a664288c2b9e84322e2b6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271371827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4d942601f929937a45c9f8f091d47a96ccbf2f3efd9597c8396712547fd0832`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 07 Mar 2018 15:03:24 GMT
ADD file:a4b1e1c4e63ac46a933b7a242608f4a30c0e4ee2515ca0452110e6760a46d229 in / 
# Wed, 07 Mar 2018 15:03:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 07 Mar 2018 15:03:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:03:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 07 Mar 2018 15:03:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 07 Mar 2018 15:03:30 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 15:26:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:26:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 15:26:51 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 15:28:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 15:28:51 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 15:28:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 15:29:33 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 16:07:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 07 Mar 2018 16:16:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 16:17:00 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 16:17:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 16:17:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:39d5c060380999d2bca48d9e9852c5e7581d6a9f85fd001a7efef08343ca259f`  
		Last Modified: Mon, 05 Mar 2018 14:51:24 GMT  
		Size: 39.2 MB (39172548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4022bcc1888c369ba6f61380a4a0393b91249abfad2e39c3eb2b39622bb68c4f`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6737bf717a119603a3072272dcd8d40e7f35e99672e9b1a8e5cccc2dbace2cf0`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b77eded6bd704212b82c87ace0f7c9df64ec3f82254d1043321e4f3c27e499db`  
		Last Modified: Wed, 07 Mar 2018 15:07:46 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872459994a866ee3ec73f7a232eb62ca9af16e5e0f8c88385a2b0b7e77732811`  
		Last Modified: Wed, 07 Mar 2018 15:07:45 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb07c1c51ccef9cf50132fe1bbb044c30ca5531f060bef5249045cb6f1b69dd`  
		Last Modified: Wed, 07 Mar 2018 16:38:46 GMT  
		Size: 4.8 MB (4820298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef408b1e348516d9c5a4fcf93b49cafa5010a803388b8d39a3486263f52ff600`  
		Last Modified: Wed, 07 Mar 2018 16:38:43 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1551f950764b22e2468ee7513ebe04bf7979cec0c921f19583660b456c04ff9e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178db39d2bb6780a1e1d4729bf7e2ad0f4712b9a76ceb83f895aedbd872da855`  
		Last Modified: Wed, 07 Mar 2018 16:39:06 GMT  
		Size: 52.4 MB (52438998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d7e231dd60465758785dd778c3201b3456ba236bed704a928b07bc7be35a3e`  
		Last Modified: Wed, 07 Mar 2018 16:38:42 GMT  
		Size: 788.2 KB (788181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32255359021f1c47109bbee306f7d1829ff3cdb4586bb58e7ae4245626a92c0`  
		Last Modified: Wed, 07 Mar 2018 16:47:55 GMT  
		Size: 174.1 MB (174135807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41630c6de76f8daeed79f8821ab1e60e0228b235cbebba5df4d0abdf30c4f70`  
		Last Modified: Wed, 07 Mar 2018 16:46:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
