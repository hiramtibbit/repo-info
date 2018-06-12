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
$ docker pull ros@sha256:d9592680b8161d370c3c6d3e1e65fe04006e000a2389a389e1a7d52379a1316a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:a3f39606759718ebfaef0a6d75114fd00c33df60bd078de4c909fe40fd32fb36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319825134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adc2dcee195e62c77b885d55dc3d83b90b1ec0fdd0aa12f9938c3ab44ba79c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 00:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd29129b65c1a805c94e025fa446be6a1cdecde5a174541e7b37e4519e14d78`  
		Last Modified: Tue, 12 Jun 2018 02:17:14 GMT  
		Size: 46.8 MB (46775833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:c916ea6cff813d99aa9248a95ec01310f3ee405855ba960985d9eacbef129431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289160319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6656f451f62cb0f3375b5f617bc9371a0dc1e41ec7df98742d93222823c5c0f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:44:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab989ea1342c8f50876e7603139226a5673f0c0ec4830ce93437e9652924ab2`  
		Last Modified: Sat, 28 Apr 2018 15:49:57 GMT  
		Size: 40.4 MB (40382261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:1bceae104c1743e81868949bf02cd851e65e1cd211f66bf26f09bb02def90e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:b058e3208fccb092341f8501b4bf1d66179e7b36cb27c01f9d4da0f468f60f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **556.1 MB (556090325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8af6b79e675f5b85af3d5eb544a45159a7b7cf75d639a8c764f69211f0f805`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 00:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd29129b65c1a805c94e025fa446be6a1cdecde5a174541e7b37e4519e14d78`  
		Last Modified: Tue, 12 Jun 2018 02:17:14 GMT  
		Size: 46.8 MB (46775833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b12804f60dae48d6db82748e0a75a472bf3a2d9c53b58d639bc284ff07ade78`  
		Last Modified: Tue, 12 Jun 2018 02:19:38 GMT  
		Size: 236.3 MB (236265191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:06b22ea7b6d0cc68117cd490497e8a63fb165019d678783ea6d3e53d6af35aa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.0 MB (501042118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cc258f00d3dd838ac1bfb0def797789dc3c8a8d749f71f36fca8f2a8ea5cfe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:44:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:47:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab989ea1342c8f50876e7603139226a5673f0c0ec4830ce93437e9652924ab2`  
		Last Modified: Sat, 28 Apr 2018 15:49:57 GMT  
		Size: 40.4 MB (40382261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b03f074f91cf9fad5ff4c2899b7830209cce247a02518955b39171e3b523db`  
		Last Modified: Sat, 28 Apr 2018 15:52:08 GMT  
		Size: 211.9 MB (211881799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:1bceae104c1743e81868949bf02cd851e65e1cd211f66bf26f09bb02def90e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:b058e3208fccb092341f8501b4bf1d66179e7b36cb27c01f9d4da0f468f60f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **556.1 MB (556090325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8af6b79e675f5b85af3d5eb544a45159a7b7cf75d639a8c764f69211f0f805`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 00:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd29129b65c1a805c94e025fa446be6a1cdecde5a174541e7b37e4519e14d78`  
		Last Modified: Tue, 12 Jun 2018 02:17:14 GMT  
		Size: 46.8 MB (46775833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b12804f60dae48d6db82748e0a75a472bf3a2d9c53b58d639bc284ff07ade78`  
		Last Modified: Tue, 12 Jun 2018 02:19:38 GMT  
		Size: 236.3 MB (236265191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:06b22ea7b6d0cc68117cd490497e8a63fb165019d678783ea6d3e53d6af35aa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.0 MB (501042118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70cc258f00d3dd838ac1bfb0def797789dc3c8a8d749f71f36fca8f2a8ea5cfe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:44:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:47:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab989ea1342c8f50876e7603139226a5673f0c0ec4830ce93437e9652924ab2`  
		Last Modified: Sat, 28 Apr 2018 15:49:57 GMT  
		Size: 40.4 MB (40382261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b03f074f91cf9fad5ff4c2899b7830209cce247a02518955b39171e3b523db`  
		Last Modified: Sat, 28 Apr 2018 15:52:08 GMT  
		Size: 211.9 MB (211881799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:f840727b424ef02210f8d29b1a1edb75c53c90ab67b570dd54300f32a9a8d459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:0838349db4a0ca78cb22fe6e41b4539f604da07bc12e3f7dbd83e91eb7129643
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338854892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024eab928afd9dfe01b01262568b86e34b12a1c48794e9f5005fe63d75cbbee9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 00:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:53:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd29129b65c1a805c94e025fa446be6a1cdecde5a174541e7b37e4519e14d78`  
		Last Modified: Tue, 12 Jun 2018 02:17:14 GMT  
		Size: 46.8 MB (46775833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a57715860bd4f5ec60a923b7b0be53b050a1cd23340e469f9f5105e1fec8242`  
		Last Modified: Tue, 12 Jun 2018 02:17:49 GMT  
		Size: 19.0 MB (19029758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:ea78f4ac1e47238dfafab6c53f2cf2da4f7a2a294b8061a87a0b0a55a42c5cf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306839431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f36dffccb69e094849cddbc952a12ffe2cdb1ec08ac61e01ed9d74d3405f6a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:44:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:45:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab989ea1342c8f50876e7603139226a5673f0c0ec4830ce93437e9652924ab2`  
		Last Modified: Sat, 28 Apr 2018 15:49:57 GMT  
		Size: 40.4 MB (40382261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47007e480980a01b78d07442ce599521de555e4b0dab771631446969c3b48996`  
		Last Modified: Sat, 28 Apr 2018 15:50:38 GMT  
		Size: 17.7 MB (17679112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:f840727b424ef02210f8d29b1a1edb75c53c90ab67b570dd54300f32a9a8d459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:0838349db4a0ca78cb22fe6e41b4539f604da07bc12e3f7dbd83e91eb7129643
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.9 MB (338854892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024eab928afd9dfe01b01262568b86e34b12a1c48794e9f5005fe63d75cbbee9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 00:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:53:06 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd29129b65c1a805c94e025fa446be6a1cdecde5a174541e7b37e4519e14d78`  
		Last Modified: Tue, 12 Jun 2018 02:17:14 GMT  
		Size: 46.8 MB (46775833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a57715860bd4f5ec60a923b7b0be53b050a1cd23340e469f9f5105e1fec8242`  
		Last Modified: Tue, 12 Jun 2018 02:17:49 GMT  
		Size: 19.0 MB (19029758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:ea78f4ac1e47238dfafab6c53f2cf2da4f7a2a294b8061a87a0b0a55a42c5cf4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306839431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f36dffccb69e094849cddbc952a12ffe2cdb1ec08ac61e01ed9d74d3405f6a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:44:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:45:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab989ea1342c8f50876e7603139226a5673f0c0ec4830ce93437e9652924ab2`  
		Last Modified: Sat, 28 Apr 2018 15:49:57 GMT  
		Size: 40.4 MB (40382261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47007e480980a01b78d07442ce599521de555e4b0dab771631446969c3b48996`  
		Last Modified: Sat, 28 Apr 2018 15:50:38 GMT  
		Size: 17.7 MB (17679112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:d9592680b8161d370c3c6d3e1e65fe04006e000a2389a389e1a7d52379a1316a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a3f39606759718ebfaef0a6d75114fd00c33df60bd078de4c909fe40fd32fb36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319825134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adc2dcee195e62c77b885d55dc3d83b90b1ec0fdd0aa12f9938c3ab44ba79c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 00:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd29129b65c1a805c94e025fa446be6a1cdecde5a174541e7b37e4519e14d78`  
		Last Modified: Tue, 12 Jun 2018 02:17:14 GMT  
		Size: 46.8 MB (46775833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:c916ea6cff813d99aa9248a95ec01310f3ee405855ba960985d9eacbef129431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289160319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6656f451f62cb0f3375b5f617bc9371a0dc1e41ec7df98742d93222823c5c0f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:44:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab989ea1342c8f50876e7603139226a5673f0c0ec4830ce93437e9652924ab2`  
		Last Modified: Sat, 28 Apr 2018 15:49:57 GMT  
		Size: 40.4 MB (40382261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:d9592680b8161d370c3c6d3e1e65fe04006e000a2389a389e1a7d52379a1316a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:a3f39606759718ebfaef0a6d75114fd00c33df60bd078de4c909fe40fd32fb36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.8 MB (319825134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adc2dcee195e62c77b885d55dc3d83b90b1ec0fdd0aa12f9938c3ab44ba79c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 00:51:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd29129b65c1a805c94e025fa446be6a1cdecde5a174541e7b37e4519e14d78`  
		Last Modified: Tue, 12 Jun 2018 02:17:14 GMT  
		Size: 46.8 MB (46775833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:c916ea6cff813d99aa9248a95ec01310f3ee405855ba960985d9eacbef129431
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289160319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6656f451f62cb0f3375b5f617bc9371a0dc1e41ec7df98742d93222823c5c0f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:44:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab989ea1342c8f50876e7603139226a5673f0c0ec4830ce93437e9652924ab2`  
		Last Modified: Sat, 28 Apr 2018 15:49:57 GMT  
		Size: 40.4 MB (40382261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:7caa11899e9baa0ef07cd10c3374a27fd665240b0011a78efd303e493c9b5c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:4e11aaadb77d131d00f4b30ccf3c696f8c7fdb8c1d5c8515cf78a4e63c44d9fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273049301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b13369987247095f7de223001b62c2081f6991045d0486f74c658b0d9133280`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:69bb62ec259532111b92496645ef138a2ba374d2b85b5ec6ce05bf445f4b17fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248778058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f2f3f28fc74bbab0a6e4a63015b8f92e784a012251a0611d4f208add949714`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:7caa11899e9baa0ef07cd10c3374a27fd665240b0011a78efd303e493c9b5c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:4e11aaadb77d131d00f4b30ccf3c696f8c7fdb8c1d5c8515cf78a4e63c44d9fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273049301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b13369987247095f7de223001b62c2081f6991045d0486f74c658b0d9133280`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:69bb62ec259532111b92496645ef138a2ba374d2b85b5ec6ce05bf445f4b17fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248778058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f2f3f28fc74bbab0a6e4a63015b8f92e784a012251a0611d4f208add949714`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:54 GMT
ADD file:c3b59ed8b3c28caaaafd56091269a82da9739f5b9261593e97ed075cbd489c28 in / 
# Sat, 28 Apr 2018 12:04:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:04:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:58 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:39:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 15:39:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 15:40:47 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:40:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 15:41:09 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 15:41:14 GMT
ENV ROS_DISTRO=indigo
# Sat, 28 Apr 2018 15:42:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:43:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 15:43:03 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 15:43:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1083d09df9ce57f9d8407ea0bcf586a3d67a552c0d0a129bbf8fae6e98a57bb3`  
		Last Modified: Sat, 28 Apr 2018 12:08:17 GMT  
		Size: 66.6 MB (66562822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe7ed775a4a6b507a638e9dd1c82afb92bd7b22f7ec72605227d4795cfb6c83`  
		Last Modified: Sat, 28 Apr 2018 12:07:57 GMT  
		Size: 76.8 KB (76764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da37819308e46c748dcc7fa2e59aac052a6b4926860b94cfc51ba0cd0d21f03`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261dcad9941dc4e59979650914aff223718b875292bd6dddf3c8162c71d4331d`  
		Last Modified: Sat, 28 Apr 2018 12:07:55 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27c2c7e7818c4f4766277047e563b1123caf608301541924286654ab562371e`  
		Last Modified: Sat, 28 Apr 2018 12:07:56 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c26680d6a75ec67fadd17a3478a318eac88e39c3585a8a9561aa9508bb4230`  
		Last Modified: Sat, 28 Apr 2018 15:48:41 GMT  
		Size: 14.5 MB (14479359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05db85a2f86e78acc906d8f2c55ae7f5b1d7cd7d6b06421527e1bf4007ef9b9`  
		Last Modified: Sat, 28 Apr 2018 15:48:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9365fb4da02f26f67cbec4b7d2c0884dbd0286efcbde973c83dae7e4f3aed68d`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4f46c9cbb0b31db49d5073dbab6da69e078dffc865c97d36e4cf84550ff595`  
		Last Modified: Sat, 28 Apr 2018 15:48:47 GMT  
		Size: 29.2 MB (29231895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8128638104464efe80c506388fd9f18ad6adf02b48f0f683787c4573714f518`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 833.5 KB (833478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ca631fefba3ca92616904d017dd021542c1d2d3b76abea5475776baed78ed6`  
		Last Modified: Sat, 28 Apr 2018 15:49:19 GMT  
		Size: 137.6 MB (137578575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f186d161062b0ebd3ef3b9d1fe858d5728d0f29f96a65c2fe82f255d8af43b39`  
		Last Modified: Sat, 28 Apr 2018 15:48:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:a66ed759e728a0421b093be863276f4b6050ae3247e7c87fbbe2d25bc6b55f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:a097c9ad146266d76432cefbb7ed9222d316cb79a7909e8f47637038350cd9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.8 MB (382779389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8c807a05d73fda83735d720abd2a73f28e6e39d5ce97b573c2518b3fb2189b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:07:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55621a16a0306391294bd86fbd00fc6e79f1f2b78721700fcddfa608e79c5a62`  
		Last Modified: Tue, 12 Jun 2018 02:22:31 GMT  
		Size: 83.9 MB (83909474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:354195f78c404ff1fa6cae0f5970cf95e49dfb2879055aeeebd14bd4d2ca3232
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334248273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b693d5d950e5bec2c9bc8928434570a2e2c180e7306444f9e5ac0cf0be8352`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af540861d5e6d956c803433ef96efdb49e6b8d0585b05bc5a5fa810807687f22`  
		Last Modified: Sat, 28 Apr 2018 12:29:03 GMT  
		Size: 75.1 MB (75090166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da97ba4189ab6c2ce89a46bb9a5bbe46d2c4a288bb566c8a5ecf26ad14a813ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348198453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1dbf4911ead8100e868ef17fcc0501be7fe19567ff8c4e0364362b55bc3136`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:11:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d2adc0b039f948503a6ac6a56836f3993acc3772ffa0e8bdf6f550d02b1005`  
		Last Modified: Wed, 06 Jun 2018 12:59:52 GMT  
		Size: 76.5 MB (76544375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:41d1509836521577facbcb7d5b7630d54ed64a14cad1db27c001991d54bf0ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:a91dbbe22031177648c7584829b5b15dabb80bac2b80a3fe866caae6dc6df4a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.0 MB (723043080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae58181da0fabecdddb1e0919164d444a43727e6cd20e1e74ded5deb67d80134`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:07:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:19:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55621a16a0306391294bd86fbd00fc6e79f1f2b78721700fcddfa608e79c5a62`  
		Last Modified: Tue, 12 Jun 2018 02:22:31 GMT  
		Size: 83.9 MB (83909474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd9587b12a193182baa854974925046a933a1b58953dac1dbcc4262ede7914c`  
		Last Modified: Tue, 12 Jun 2018 02:26:56 GMT  
		Size: 340.3 MB (340263691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:f7890e7493bb6f2cc5d575fce15154e6a080e5d201414027f82fa4c16e11eb83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.6 MB (614612392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f84f4251b4aca5d0a4b17af712b114ee10fe82f233bd280b1d45004a8d5de4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:16:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af540861d5e6d956c803433ef96efdb49e6b8d0585b05bc5a5fa810807687f22`  
		Last Modified: Sat, 28 Apr 2018 12:29:03 GMT  
		Size: 75.1 MB (75090166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461ef1127a6358d0391e19225c9244833973907958057913babdf0d2b722e0f2`  
		Last Modified: Sat, 28 Apr 2018 12:31:41 GMT  
		Size: 280.4 MB (280364119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a14125eedc8db6315cdcdcdb8a5f246075429ca3bc34672d484d8cb65eddba41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (639043267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a6aacb15200b51ed1bcd07de38f2c5be49dd77ddcd56ea22cdc48a4c5a52e5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:11:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:35:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d2adc0b039f948503a6ac6a56836f3993acc3772ffa0e8bdf6f550d02b1005`  
		Last Modified: Wed, 06 Jun 2018 12:59:52 GMT  
		Size: 76.5 MB (76544375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd7b82b242d38b955a53d7f58ba0a935654b98f3e53c31c953285bebf45563`  
		Last Modified: Wed, 06 Jun 2018 13:04:06 GMT  
		Size: 290.8 MB (290844814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:41d1509836521577facbcb7d5b7630d54ed64a14cad1db27c001991d54bf0ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a91dbbe22031177648c7584829b5b15dabb80bac2b80a3fe866caae6dc6df4a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.0 MB (723043080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae58181da0fabecdddb1e0919164d444a43727e6cd20e1e74ded5deb67d80134`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:07:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:19:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55621a16a0306391294bd86fbd00fc6e79f1f2b78721700fcddfa608e79c5a62`  
		Last Modified: Tue, 12 Jun 2018 02:22:31 GMT  
		Size: 83.9 MB (83909474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd9587b12a193182baa854974925046a933a1b58953dac1dbcc4262ede7914c`  
		Last Modified: Tue, 12 Jun 2018 02:26:56 GMT  
		Size: 340.3 MB (340263691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f7890e7493bb6f2cc5d575fce15154e6a080e5d201414027f82fa4c16e11eb83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.6 MB (614612392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03f84f4251b4aca5d0a4b17af712b114ee10fe82f233bd280b1d45004a8d5de4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:16:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af540861d5e6d956c803433ef96efdb49e6b8d0585b05bc5a5fa810807687f22`  
		Last Modified: Sat, 28 Apr 2018 12:29:03 GMT  
		Size: 75.1 MB (75090166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461ef1127a6358d0391e19225c9244833973907958057913babdf0d2b722e0f2`  
		Last Modified: Sat, 28 Apr 2018 12:31:41 GMT  
		Size: 280.4 MB (280364119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a14125eedc8db6315cdcdcdb8a5f246075429ca3bc34672d484d8cb65eddba41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 MB (639043267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a6aacb15200b51ed1bcd07de38f2c5be49dd77ddcd56ea22cdc48a4c5a52e5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:11:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:35:45 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d2adc0b039f948503a6ac6a56836f3993acc3772ffa0e8bdf6f550d02b1005`  
		Last Modified: Wed, 06 Jun 2018 12:59:52 GMT  
		Size: 76.5 MB (76544375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd7b82b242d38b955a53d7f58ba0a935654b98f3e53c31c953285bebf45563`  
		Last Modified: Wed, 06 Jun 2018 13:04:06 GMT  
		Size: 290.8 MB (290844814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:1274c32b4716d38ab546ca96b0ae91c023aa2fa39f25647d4568ed3a155f233c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:531d20aa68b4f38a620ca0ef2614166e0513ec53b613143676c28c6d8192d005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.4 MB (486366252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b280ab4502c7b07fc1bac8e250f00f24ce9eb29d9071e9c884bf4362dffc1a97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:07:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55621a16a0306391294bd86fbd00fc6e79f1f2b78721700fcddfa608e79c5a62`  
		Last Modified: Tue, 12 Jun 2018 02:22:31 GMT  
		Size: 83.9 MB (83909474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d742cd05d1f29a58a23ab8e860c5a7277945beee1b8364017943c47d20324f`  
		Last Modified: Tue, 12 Jun 2018 02:23:43 GMT  
		Size: 103.6 MB (103586863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:b290fc09f313cdbddd5ff0676eee22a455c2be81edaab85f1888f6df6f400716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424265942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f8bb432561fb6800361614853012463ff48a4e04c28b4cae78f897d8371bb0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af540861d5e6d956c803433ef96efdb49e6b8d0585b05bc5a5fa810807687f22`  
		Last Modified: Sat, 28 Apr 2018 12:29:03 GMT  
		Size: 75.1 MB (75090166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65ecc77f71757905503ccfcd7f8c02bfdf34adb53dc0877a39a234f1124a70`  
		Last Modified: Sat, 28 Apr 2018 12:30:03 GMT  
		Size: 90.0 MB (90017669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:14952faa06768bea5712c2d8f6c1858efa5201557ca07a6bdcb7f6f755334179
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.1 MB (442061082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021ac6b2a326036fcc53a679b2e589dbbe2302b27cee9a7e3d1084bd25a2b913`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:11:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:17:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d2adc0b039f948503a6ac6a56836f3993acc3772ffa0e8bdf6f550d02b1005`  
		Last Modified: Wed, 06 Jun 2018 12:59:52 GMT  
		Size: 76.5 MB (76544375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db9cf6dbdd8b2577a36fb6c6074e4a45b142321d077a9aa6ce8164e9aeb8b0b`  
		Last Modified: Wed, 06 Jun 2018 13:01:27 GMT  
		Size: 93.9 MB (93862629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:1274c32b4716d38ab546ca96b0ae91c023aa2fa39f25647d4568ed3a155f233c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:531d20aa68b4f38a620ca0ef2614166e0513ec53b613143676c28c6d8192d005
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.4 MB (486366252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b280ab4502c7b07fc1bac8e250f00f24ce9eb29d9071e9c884bf4362dffc1a97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:07:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:11:39 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55621a16a0306391294bd86fbd00fc6e79f1f2b78721700fcddfa608e79c5a62`  
		Last Modified: Tue, 12 Jun 2018 02:22:31 GMT  
		Size: 83.9 MB (83909474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0d742cd05d1f29a58a23ab8e860c5a7277945beee1b8364017943c47d20324f`  
		Last Modified: Tue, 12 Jun 2018 02:23:43 GMT  
		Size: 103.6 MB (103586863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:b290fc09f313cdbddd5ff0676eee22a455c2be81edaab85f1888f6df6f400716
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424265942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f8bb432561fb6800361614853012463ff48a4e04c28b4cae78f897d8371bb0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:13:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af540861d5e6d956c803433ef96efdb49e6b8d0585b05bc5a5fa810807687f22`  
		Last Modified: Sat, 28 Apr 2018 12:29:03 GMT  
		Size: 75.1 MB (75090166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd65ecc77f71757905503ccfcd7f8c02bfdf34adb53dc0877a39a234f1124a70`  
		Last Modified: Sat, 28 Apr 2018 12:30:03 GMT  
		Size: 90.0 MB (90017669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:14952faa06768bea5712c2d8f6c1858efa5201557ca07a6bdcb7f6f755334179
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.1 MB (442061082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021ac6b2a326036fcc53a679b2e589dbbe2302b27cee9a7e3d1084bd25a2b913`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:11:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:17:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d2adc0b039f948503a6ac6a56836f3993acc3772ffa0e8bdf6f550d02b1005`  
		Last Modified: Wed, 06 Jun 2018 12:59:52 GMT  
		Size: 76.5 MB (76544375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db9cf6dbdd8b2577a36fb6c6074e4a45b142321d077a9aa6ce8164e9aeb8b0b`  
		Last Modified: Wed, 06 Jun 2018 13:01:27 GMT  
		Size: 93.9 MB (93862629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:a66ed759e728a0421b093be863276f4b6050ae3247e7c87fbbe2d25bc6b55f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:a097c9ad146266d76432cefbb7ed9222d316cb79a7909e8f47637038350cd9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.8 MB (382779389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8c807a05d73fda83735d720abd2a73f28e6e39d5ce97b573c2518b3fb2189b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:07:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55621a16a0306391294bd86fbd00fc6e79f1f2b78721700fcddfa608e79c5a62`  
		Last Modified: Tue, 12 Jun 2018 02:22:31 GMT  
		Size: 83.9 MB (83909474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:354195f78c404ff1fa6cae0f5970cf95e49dfb2879055aeeebd14bd4d2ca3232
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334248273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b693d5d950e5bec2c9bc8928434570a2e2c180e7306444f9e5ac0cf0be8352`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af540861d5e6d956c803433ef96efdb49e6b8d0585b05bc5a5fa810807687f22`  
		Last Modified: Sat, 28 Apr 2018 12:29:03 GMT  
		Size: 75.1 MB (75090166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da97ba4189ab6c2ce89a46bb9a5bbe46d2c4a288bb566c8a5ecf26ad14a813ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348198453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1dbf4911ead8100e868ef17fcc0501be7fe19567ff8c4e0364362b55bc3136`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:11:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d2adc0b039f948503a6ac6a56836f3993acc3772ffa0e8bdf6f550d02b1005`  
		Last Modified: Wed, 06 Jun 2018 12:59:52 GMT  
		Size: 76.5 MB (76544375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:a66ed759e728a0421b093be863276f4b6050ae3247e7c87fbbe2d25bc6b55f11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:a097c9ad146266d76432cefbb7ed9222d316cb79a7909e8f47637038350cd9ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.8 MB (382779389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8c807a05d73fda83735d720abd2a73f28e6e39d5ce97b573c2518b3fb2189b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:07:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55621a16a0306391294bd86fbd00fc6e79f1f2b78721700fcddfa608e79c5a62`  
		Last Modified: Tue, 12 Jun 2018 02:22:31 GMT  
		Size: 83.9 MB (83909474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:354195f78c404ff1fa6cae0f5970cf95e49dfb2879055aeeebd14bd4d2ca3232
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334248273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b693d5d950e5bec2c9bc8928434570a2e2c180e7306444f9e5ac0cf0be8352`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:12:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af540861d5e6d956c803433ef96efdb49e6b8d0585b05bc5a5fa810807687f22`  
		Last Modified: Sat, 28 Apr 2018 12:29:03 GMT  
		Size: 75.1 MB (75090166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:da97ba4189ab6c2ce89a46bb9a5bbe46d2c4a288bb566c8a5ecf26ad14a813ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.2 MB (348198453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1dbf4911ead8100e868ef17fcc0501be7fe19567ff8c4e0364362b55bc3136`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:11:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d2adc0b039f948503a6ac6a56836f3993acc3772ffa0e8bdf6f550d02b1005`  
		Last Modified: Wed, 06 Jun 2018 12:59:52 GMT  
		Size: 76.5 MB (76544375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:4cd608c856939bd2d1d5182c0caa22788234cf0bd0f9b20de6d3c68aae5d89b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3dc43655d9996a1505e37505c0e105c20ec2d8bb2e57e7980ea47eddb88306b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298869915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59052d8fe802fd3b8ed23a1c5e9e26576c8c9dabde205e5a8c5601a7c28e67a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:e86ab4b2f7f7378b581b999d35444718336159fd41cf756114d44353d800666a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259158107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe3f27b5794dbb5f454eefaa6d922552d0a302fde9100e0af40bdb0aaa96836`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e381659a4aa7354a80c3deade6fd6990aacc11f292952449a53bfb74daaf6495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271654078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04ead90d754590a41eeac739b70e54d73c4328c04514d4dafe7f3c5db46c0fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:4cd608c856939bd2d1d5182c0caa22788234cf0bd0f9b20de6d3c68aae5d89b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3dc43655d9996a1505e37505c0e105c20ec2d8bb2e57e7980ea47eddb88306b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298869915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59052d8fe802fd3b8ed23a1c5e9e26576c8c9dabde205e5a8c5601a7c28e67a7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:01:27 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Jun 2018 01:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:03:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:03:25 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:03:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e853cc6ae9977e0e07af9073d7d723395582e07c93da579a8d4fb7004829d57`  
		Last Modified: Tue, 12 Jun 2018 02:21:25 GMT  
		Size: 193.3 MB (193336364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d2084b1b7c26681c8b6fa347dcc0e5bbfcd2f7450c22c925ae6da7bb7187fc`  
		Last Modified: Tue, 12 Jun 2018 02:20:04 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:e86ab4b2f7f7378b581b999d35444718336159fd41cf756114d44353d800666a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259158107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fe3f27b5794dbb5f454eefaa6d922552d0a302fde9100e0af40bdb0aaa96836`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:09:58 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 12:11:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:11:18 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:11:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:11:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715f7dcd6ee641ea9e85cf6349780799f1e5d41a2a378290058db5c5cd28cb9`  
		Last Modified: Sat, 28 Apr 2018 12:28:25 GMT  
		Size: 164.9 MB (164896280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4e27b5b65dc6b6f87f9c3ae1918a2f334a2f06d1f6ef92a7cfcbabf5871c03`  
		Last Modified: Sat, 28 Apr 2018 12:27:37 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e381659a4aa7354a80c3deade6fd6990aacc11f292952449a53bfb74daaf6495
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.7 MB (271654078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04ead90d754590a41eeac739b70e54d73c4328c04514d4dafe7f3c5db46c0fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 10:57:19 GMT
ENV ROS_DISTRO=kinetic
# Wed, 06 Jun 2018 11:06:42 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:06:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:06:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:06:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7afba49e5ab8b9cd037bb00aff61460328560cfb7cf20b13de38bffd3243c9`  
		Last Modified: Wed, 06 Jun 2018 12:58:32 GMT  
		Size: 174.2 MB (174188545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5068560a066e5c9278d8200b7b4350a8edd3d3c4d7bf128e701c27c9090181c1`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:1fe31f0e6e55ef5cc69acebdea205f457d8fae2224138dcee9ad1824ff0c27d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:3a197d09d73e5525a7cbc426a2d1872edb1e79d29e6fab04f09139a7789824f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380728262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c835d59e50b696e5041f48d35b53775677561f742a815015e2fab3498c2ed5c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:f46872e2c7c6a4cd2d6cf52a79b0ff955df4dc892b30856465400b371df39cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333902303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37417f98d377f368a74e8f07277aac34c9f2115dbd17839aed2f3494cdaeece`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9b6f54c3826d3b18cca1c06ade88bf6119e16e42c81a866a23f8a6a9ca985636
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357238677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dd76701579973ec2085f712bd4df143bfdb488d12f8f85a1d6c4287f3ff7e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:3088d9a9dc7b298593f3b16bc0db06aa8a98e7b0e72a4a352b6038e2ae0c9715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:32991e269061ed47fcb5181de07f1e199c29f16425114117c02455673af5a30f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.7 MB (382693196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc60802872831355b8b6c977aa538755c4ff0862e82047729e2291d75708841a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246fd9a58e8235b967cedb4569cbf074a5fb12ca159a513ba3bd394ae17c3b0e`  
		Last Modified: Tue, 12 Jun 2018 02:29:45 GMT  
		Size: 83.8 MB (83831958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:9bd1c7651a0551f4d2b7d6c5638e12a4087b3474e25d9e506469f0cf79c38e2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334192284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b670e98de88ae0afdba3403479590682d0375233bc241fc2fab02c5ec3ef6e6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:19:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4a1cce90475c4e7ac57ddbdc2d54c1fbd714cd01ad340f7065323a3f662fe`  
		Last Modified: Sat, 28 Apr 2018 12:33:30 GMT  
		Size: 75.0 MB (75015814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c08c39337a07bdbf42d2b5e49354f96c1304705da90ba4fe87aa1309b009dac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348114952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c69dee192e8a63c1d7a0e633af6d7c01a6e92dcb649506feb8b9c67033dbbfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:54:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e16f13366152fc7dadf2eb41cb9aa0d3d19d260382b43e3ad9dae74588727`  
		Last Modified: Wed, 06 Jun 2018 13:07:17 GMT  
		Size: 76.5 MB (76465184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:ef6729d52bae3a9545eb3595773a739001d1b76788d0eec4269b7ec3874e51ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:bda6138089749d519e38a10779b5dd893dc9994526c87b44a51639beb1b0b8a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **721.4 MB (721378569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b950ec8bb96aba897550c4624ba39dc0109ca6b17c23fa8a5637af051dfb1d5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246fd9a58e8235b967cedb4569cbf074a5fb12ca159a513ba3bd394ae17c3b0e`  
		Last Modified: Tue, 12 Jun 2018 02:29:45 GMT  
		Size: 83.8 MB (83831958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7552bb89038924275dbb019cf74cb21c8c6ea94a7d3c52b99d84b93735e15e3c`  
		Last Modified: Tue, 12 Jun 2018 02:33:41 GMT  
		Size: 338.7 MB (338685373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:bbd01496fb33dcd2a30c753db0c55e71ab633e6bd418faf4339f0b6598d1ac06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.1 MB (614120576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e476a506ac63062b861410fd4caa7606a895e1400735d1b944f3affb9232a8d3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:19:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:23:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4a1cce90475c4e7ac57ddbdc2d54c1fbd714cd01ad340f7065323a3f662fe`  
		Last Modified: Sat, 28 Apr 2018 12:33:30 GMT  
		Size: 75.0 MB (75015814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0559e165b507c7a1783781fe0803a506284232f32f85f74bd12146b18be058a`  
		Last Modified: Sat, 28 Apr 2018 12:35:59 GMT  
		Size: 279.9 MB (279928292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aaccf51330c1d8e5e77324e2c2910ececd678909d7b6982bf843a6ed4de5b7e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.7 MB (637705092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e4752420a7fb641505edc61ace125bb21a1a33c3aaa6706252e15a29120566`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:54:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e16f13366152fc7dadf2eb41cb9aa0d3d19d260382b43e3ad9dae74588727`  
		Last Modified: Wed, 06 Jun 2018 13:07:17 GMT  
		Size: 76.5 MB (76465184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb41f36a89d54695fddab7b5827915aa33efcb0a62571111b68f954acd0aa7`  
		Last Modified: Wed, 06 Jun 2018 13:11:29 GMT  
		Size: 289.6 MB (289590140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:f49601725ae71f4c771dbf3a5cde3949aeac6b49fe2dae9cf1ce92fbd5d6504c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:78213306d5a67ad8c2d703aa6f4d3a3d54292ca61cfd10315b0cfb8032b3a447
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **932.5 MB (932499930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d87802ebcec7f8dcb7c3be90ceb35e8017b331c4c17244b292116671001eb0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:29:05 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:31:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:31:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:31:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:31:16 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:32:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:38:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6de56e9b583f99d735d770c014d267b04a55bb58f2105605bfe01af21b8fc2a`  
		Last Modified: Tue, 12 Jun 2018 02:35:46 GMT  
		Size: 251.1 MB (251059338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319686cc8e0894ee6325cbb659ad0573d38a3223691f7a7f63a2ba1a5f16a9ca`  
		Last Modified: Tue, 12 Jun 2018 02:34:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be35c1c41b67e123232fb0aaea6ea00a537bbfc6014ba04f53c03e712a4c59d`  
		Last Modified: Tue, 12 Jun 2018 02:36:47 GMT  
		Size: 122.2 MB (122228258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f449182d2ebabadcf0c35175edf9e25415321f6cc2f6bc0a7bad3ee812ecf9`  
		Last Modified: Tue, 12 Jun 2018 02:40:29 GMT  
		Size: 438.4 MB (438421780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:46bd33abe2f4717e1fba6ba648cbfb6b49b3b46c709288228fdff9b017c30014
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **813.6 MB (813636567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b38e413db4441f342f3285c5722bb42480620ee78caebdbfba48919b6f5d72`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Tue, 01 May 2018 03:36:07 GMT
ENV ROS_DISTRO=lunar
# Tue, 01 May 2018 03:46:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:46:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 01 May 2018 03:46:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 01 May 2018 03:46:14 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:51:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 04:16:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8018c896d8c469869af751ab6dedae7d929c8c1eecd50bd607c44492245c688`  
		Last Modified: Tue, 01 May 2018 04:44:18 GMT  
		Size: 206.8 MB (206795100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f80d568803a6e955c93890cfbb1629933a150a5d0a54e78f081bf2731b724`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59bacdd92efa26460f246475e05ca8c1d323676766477354f6c57571d53fa9`  
		Last Modified: Tue, 01 May 2018 04:45:14 GMT  
		Size: 116.0 MB (116022523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f244582c1aa41867d976d5391b8287d6b4dbcb917782000331ad8cb2cdff0290`  
		Last Modified: Tue, 01 May 2018 04:49:00 GMT  
		Size: 378.5 MB (378507002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:ef6729d52bae3a9545eb3595773a739001d1b76788d0eec4269b7ec3874e51ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:bda6138089749d519e38a10779b5dd893dc9994526c87b44a51639beb1b0b8a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **721.4 MB (721378569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b950ec8bb96aba897550c4624ba39dc0109ca6b17c23fa8a5637af051dfb1d5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246fd9a58e8235b967cedb4569cbf074a5fb12ca159a513ba3bd394ae17c3b0e`  
		Last Modified: Tue, 12 Jun 2018 02:29:45 GMT  
		Size: 83.8 MB (83831958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7552bb89038924275dbb019cf74cb21c8c6ea94a7d3c52b99d84b93735e15e3c`  
		Last Modified: Tue, 12 Jun 2018 02:33:41 GMT  
		Size: 338.7 MB (338685373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:bbd01496fb33dcd2a30c753db0c55e71ab633e6bd418faf4339f0b6598d1ac06
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.1 MB (614120576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e476a506ac63062b861410fd4caa7606a895e1400735d1b944f3affb9232a8d3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:19:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:23:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4a1cce90475c4e7ac57ddbdc2d54c1fbd714cd01ad340f7065323a3f662fe`  
		Last Modified: Sat, 28 Apr 2018 12:33:30 GMT  
		Size: 75.0 MB (75015814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0559e165b507c7a1783781fe0803a506284232f32f85f74bd12146b18be058a`  
		Last Modified: Sat, 28 Apr 2018 12:35:59 GMT  
		Size: 279.9 MB (279928292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aaccf51330c1d8e5e77324e2c2910ececd678909d7b6982bf843a6ed4de5b7e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.7 MB (637705092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3e4752420a7fb641505edc61ace125bb21a1a33c3aaa6706252e15a29120566`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:54:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:14:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e16f13366152fc7dadf2eb41cb9aa0d3d19d260382b43e3ad9dae74588727`  
		Last Modified: Wed, 06 Jun 2018 13:07:17 GMT  
		Size: 76.5 MB (76465184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bb41f36a89d54695fddab7b5827915aa33efcb0a62571111b68f954acd0aa7`  
		Last Modified: Wed, 06 Jun 2018 13:11:29 GMT  
		Size: 289.6 MB (289590140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:ea0703f4ee5f116a5a3f60196a2f95de92f0f9e3d36cfea11fc0da4fc8bf0305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:b82464ecb228a534687b24316a2ea1506dd43dc45db47f80dc4d81efceacb640
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.4 MB (486393468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b7d2c996f8e1d900a140c073343c882e7e950141a51011df756d8c83245b17`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:23:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246fd9a58e8235b967cedb4569cbf074a5fb12ca159a513ba3bd394ae17c3b0e`  
		Last Modified: Tue, 12 Jun 2018 02:29:45 GMT  
		Size: 83.8 MB (83831958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3ed6ff903004532060b3ab10cda129f4594cf78ce3f4c86c6d0d7326111fc2`  
		Last Modified: Tue, 12 Jun 2018 02:30:55 GMT  
		Size: 103.7 MB (103700272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:9e6990e048830256c118a19211b536e2af527a0b9da5fb87762b4c6f38daee20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424302453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba70bc2cba67eeb3f8573b220f02ea090993d654caf73990944bdeaa0d96794`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:19:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:20:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4a1cce90475c4e7ac57ddbdc2d54c1fbd714cd01ad340f7065323a3f662fe`  
		Last Modified: Sat, 28 Apr 2018 12:33:30 GMT  
		Size: 75.0 MB (75015814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb61f4ccbddf9c3823a976204bb5d71ff8ed2690dc38057cb10bdbe67356ab27`  
		Last Modified: Sat, 28 Apr 2018 12:34:23 GMT  
		Size: 90.1 MB (90110169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9a88495723c33222f787cc035883e978e3c3c38cf238a8bfd2b96cc1c76e271b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.1 MB (442058794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19072f1a7b39cf8c5e0a45fd3f5e5ad39fce3df42985997ab22f206284fcd3e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:54:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:00:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e16f13366152fc7dadf2eb41cb9aa0d3d19d260382b43e3ad9dae74588727`  
		Last Modified: Wed, 06 Jun 2018 13:07:17 GMT  
		Size: 76.5 MB (76465184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f57d6983b83a24c770c333a13da1e967923ca846206c988e60a1e94a084c816`  
		Last Modified: Wed, 06 Jun 2018 13:08:49 GMT  
		Size: 93.9 MB (93943842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:b05eceecb5661b9a562c01b4b286b609cd7c1d97d2d40a45b96be13c92ba1257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:7e8face39e6e24d92eade3356e826cad5e73575fbcc4b697b4110445fd63820d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.5 MB (554519456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659e24a38bca0ef3f1580202fe13f9640fef7456c6bdd480203d2e2d7bce118a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:29:05 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:31:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:31:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:31:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:31:16 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:32:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:34:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6de56e9b583f99d735d770c014d267b04a55bb58f2105605bfe01af21b8fc2a`  
		Last Modified: Tue, 12 Jun 2018 02:35:46 GMT  
		Size: 251.1 MB (251059338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319686cc8e0894ee6325cbb659ad0573d38a3223691f7a7f63a2ba1a5f16a9ca`  
		Last Modified: Tue, 12 Jun 2018 02:34:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be35c1c41b67e123232fb0aaea6ea00a537bbfc6014ba04f53c03e712a4c59d`  
		Last Modified: Tue, 12 Jun 2018 02:36:47 GMT  
		Size: 122.2 MB (122228258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1644b2f362f91b7cfca9d6ea6dd5aa491b6b04a55397d302f3fb71e8ddff4e69`  
		Last Modified: Tue, 12 Jun 2018 02:37:25 GMT  
		Size: 60.4 MB (60441306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:894f11683856b6ba206078297eb02f05e3fea4ecf06ba96e6dbaa47ac3269cf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.6 MB (492646713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c4aba1fb2d7e94c22fabf73e1e0a28fcb4b3c11028bb0772b9613fe1afcae30`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Tue, 01 May 2018 03:36:07 GMT
ENV ROS_DISTRO=lunar
# Tue, 01 May 2018 03:46:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:46:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 01 May 2018 03:46:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 01 May 2018 03:46:14 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:51:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:57:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8018c896d8c469869af751ab6dedae7d929c8c1eecd50bd607c44492245c688`  
		Last Modified: Tue, 01 May 2018 04:44:18 GMT  
		Size: 206.8 MB (206795100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f80d568803a6e955c93890cfbb1629933a150a5d0a54e78f081bf2731b724`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59bacdd92efa26460f246475e05ca8c1d323676766477354f6c57571d53fa9`  
		Last Modified: Tue, 01 May 2018 04:45:14 GMT  
		Size: 116.0 MB (116022523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a10db811d6be31f3fd2565254776071b854565d4874d53a986fc12b15f011f`  
		Last Modified: Tue, 01 May 2018 04:45:50 GMT  
		Size: 57.5 MB (57517148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:ea0703f4ee5f116a5a3f60196a2f95de92f0f9e3d36cfea11fc0da4fc8bf0305
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b82464ecb228a534687b24316a2ea1506dd43dc45db47f80dc4d81efceacb640
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.4 MB (486393468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b7d2c996f8e1d900a140c073343c882e7e950141a51011df756d8c83245b17`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:23:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246fd9a58e8235b967cedb4569cbf074a5fb12ca159a513ba3bd394ae17c3b0e`  
		Last Modified: Tue, 12 Jun 2018 02:29:45 GMT  
		Size: 83.8 MB (83831958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3ed6ff903004532060b3ab10cda129f4594cf78ce3f4c86c6d0d7326111fc2`  
		Last Modified: Tue, 12 Jun 2018 02:30:55 GMT  
		Size: 103.7 MB (103700272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:9e6990e048830256c118a19211b536e2af527a0b9da5fb87762b4c6f38daee20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424302453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba70bc2cba67eeb3f8573b220f02ea090993d654caf73990944bdeaa0d96794`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:19:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:20:57 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4a1cce90475c4e7ac57ddbdc2d54c1fbd714cd01ad340f7065323a3f662fe`  
		Last Modified: Sat, 28 Apr 2018 12:33:30 GMT  
		Size: 75.0 MB (75015814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb61f4ccbddf9c3823a976204bb5d71ff8ed2690dc38057cb10bdbe67356ab27`  
		Last Modified: Sat, 28 Apr 2018 12:34:23 GMT  
		Size: 90.1 MB (90110169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9a88495723c33222f787cc035883e978e3c3c38cf238a8bfd2b96cc1c76e271b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.1 MB (442058794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19072f1a7b39cf8c5e0a45fd3f5e5ad39fce3df42985997ab22f206284fcd3e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:54:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:00:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e16f13366152fc7dadf2eb41cb9aa0d3d19d260382b43e3ad9dae74588727`  
		Last Modified: Wed, 06 Jun 2018 13:07:17 GMT  
		Size: 76.5 MB (76465184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f57d6983b83a24c770c333a13da1e967923ca846206c988e60a1e94a084c816`  
		Last Modified: Wed, 06 Jun 2018 13:08:49 GMT  
		Size: 93.9 MB (93943842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:3088d9a9dc7b298593f3b16bc0db06aa8a98e7b0e72a4a352b6038e2ae0c9715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:32991e269061ed47fcb5181de07f1e199c29f16425114117c02455673af5a30f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.7 MB (382693196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc60802872831355b8b6c977aa538755c4ff0862e82047729e2291d75708841a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246fd9a58e8235b967cedb4569cbf074a5fb12ca159a513ba3bd394ae17c3b0e`  
		Last Modified: Tue, 12 Jun 2018 02:29:45 GMT  
		Size: 83.8 MB (83831958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:9bd1c7651a0551f4d2b7d6c5638e12a4087b3474e25d9e506469f0cf79c38e2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334192284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b670e98de88ae0afdba3403479590682d0375233bc241fc2fab02c5ec3ef6e6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:19:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4a1cce90475c4e7ac57ddbdc2d54c1fbd714cd01ad340f7065323a3f662fe`  
		Last Modified: Sat, 28 Apr 2018 12:33:30 GMT  
		Size: 75.0 MB (75015814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c08c39337a07bdbf42d2b5e49354f96c1304705da90ba4fe87aa1309b009dac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348114952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c69dee192e8a63c1d7a0e633af6d7c01a6e92dcb649506feb8b9c67033dbbfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:54:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e16f13366152fc7dadf2eb41cb9aa0d3d19d260382b43e3ad9dae74588727`  
		Last Modified: Wed, 06 Jun 2018 13:07:17 GMT  
		Size: 76.5 MB (76465184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:c94553cf9c6cf6bbeb2366b207e54f51317b4da6bb52efcc8088cec92dd4472a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:a58ddf103a4738d94d586c369d39a2fb75122b07dc543ce423e88ed2cbec651c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.1 MB (494078150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff886e4d0619bc1141c5cf269d385ed28078f653d5ff9e78ff7fd2053dbaa7a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:29:05 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:31:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:31:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:31:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:31:16 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:32:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6de56e9b583f99d735d770c014d267b04a55bb58f2105605bfe01af21b8fc2a`  
		Last Modified: Tue, 12 Jun 2018 02:35:46 GMT  
		Size: 251.1 MB (251059338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319686cc8e0894ee6325cbb659ad0573d38a3223691f7a7f63a2ba1a5f16a9ca`  
		Last Modified: Tue, 12 Jun 2018 02:34:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be35c1c41b67e123232fb0aaea6ea00a537bbfc6014ba04f53c03e712a4c59d`  
		Last Modified: Tue, 12 Jun 2018 02:36:47 GMT  
		Size: 122.2 MB (122228258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4d3c94bfb1fa3bb8b5e046ba2f8a4806561d8a61ef561caf4cf0e5ff1f191996
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.1 MB (435129565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b95d94a4fe9849a429cc3cc742e4f8cbff789953b9cacda1b0c3cc38391902`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Tue, 01 May 2018 03:36:07 GMT
ENV ROS_DISTRO=lunar
# Tue, 01 May 2018 03:46:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:46:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 01 May 2018 03:46:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 01 May 2018 03:46:14 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:51:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8018c896d8c469869af751ab6dedae7d929c8c1eecd50bd607c44492245c688`  
		Last Modified: Tue, 01 May 2018 04:44:18 GMT  
		Size: 206.8 MB (206795100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f80d568803a6e955c93890cfbb1629933a150a5d0a54e78f081bf2731b724`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f59bacdd92efa26460f246475e05ca8c1d323676766477354f6c57571d53fa9`  
		Last Modified: Tue, 01 May 2018 04:45:14 GMT  
		Size: 116.0 MB (116022523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:3088d9a9dc7b298593f3b16bc0db06aa8a98e7b0e72a4a352b6038e2ae0c9715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:32991e269061ed47fcb5181de07f1e199c29f16425114117c02455673af5a30f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.7 MB (382693196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc60802872831355b8b6c977aa538755c4ff0862e82047729e2291d75708841a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:22:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246fd9a58e8235b967cedb4569cbf074a5fb12ca159a513ba3bd394ae17c3b0e`  
		Last Modified: Tue, 12 Jun 2018 02:29:45 GMT  
		Size: 83.8 MB (83831958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:9bd1c7651a0551f4d2b7d6c5638e12a4087b3474e25d9e506469f0cf79c38e2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334192284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b670e98de88ae0afdba3403479590682d0375233bc241fc2fab02c5ec3ef6e6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:19:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d4a1cce90475c4e7ac57ddbdc2d54c1fbd714cd01ad340f7065323a3f662fe`  
		Last Modified: Sat, 28 Apr 2018 12:33:30 GMT  
		Size: 75.0 MB (75015814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6c08c39337a07bdbf42d2b5e49354f96c1304705da90ba4fe87aa1309b009dac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.1 MB (348114952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c69dee192e8a63c1d7a0e633af6d7c01a6e92dcb649506feb8b9c67033dbbfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:54:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e16f13366152fc7dadf2eb41cb9aa0d3d19d260382b43e3ad9dae74588727`  
		Last Modified: Wed, 06 Jun 2018 13:07:17 GMT  
		Size: 76.5 MB (76465184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:1c1c2e9c9928c161b120800415d65ab26b4b873ebfc1fc6398ad7b196e7033cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:71da947c02cb34af0b3a80650be8ba24c8a6ff4b200bd70861b89a606bd14ed1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298861238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652d406eb7f53293bea4aa0dc7860342de30a767177a816c45109aa838314ec0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:3c47dc7b22cc9c60001de030f86b0c0af97fcd393de5d48bca688896dbc368ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259176470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964265330a93de83d8633f39951f21cd92fd2c55969d17a6d02fd68c7b08974d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:037889c584222d7ebf6379366b1ace26e16b2c55c9d0c5ed4c42d71ccc24d2e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271649768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3468d49027c093177c52b07b123b9498f0286f758c78401dd5112bbc86f255ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:c000e1f74fd1fef72cbc2115683f1070ab6bbf3267e654fdeac80af64e1a1252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:879e1cb4acd02719f8b9023e603cee9081c3516328b501d684fe2019f31e30d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371849892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4066fe4ed53ce300ff0af24fbb4df6ddff195478d60da9d9707f63e0fbd51114`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:29:05 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:31:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:31:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:31:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:31:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6de56e9b583f99d735d770c014d267b04a55bb58f2105605bfe01af21b8fc2a`  
		Last Modified: Tue, 12 Jun 2018 02:35:46 GMT  
		Size: 251.1 MB (251059338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319686cc8e0894ee6325cbb659ad0573d38a3223691f7a7f63a2ba1a5f16a9ca`  
		Last Modified: Tue, 12 Jun 2018 02:34:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bee0b4e7b2ccf0f9ccc2e80e8bec9ea7b9a93cf70d2b08823e95809c4419a0c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.1 MB (319107042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5552bf8cdb65a4245d25f47103086b24fe08888c954267191d57784f923ef9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Tue, 01 May 2018 03:36:07 GMT
ENV ROS_DISTRO=lunar
# Tue, 01 May 2018 03:46:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:46:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 01 May 2018 03:46:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 01 May 2018 03:46:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8018c896d8c469869af751ab6dedae7d929c8c1eecd50bd607c44492245c688`  
		Last Modified: Tue, 01 May 2018 04:44:18 GMT  
		Size: 206.8 MB (206795100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4f80d568803a6e955c93890cfbb1629933a150a5d0a54e78f081bf2731b724`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:1c1c2e9c9928c161b120800415d65ab26b4b873ebfc1fc6398ad7b196e7033cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:71da947c02cb34af0b3a80650be8ba24c8a6ff4b200bd70861b89a606bd14ed1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 MB (298861238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652d406eb7f53293bea4aa0dc7860342de30a767177a816c45109aa838314ec0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:52 GMT
ADD file:d37ff24540ea7700d0fc053e1996b234428a88f3a324d7fcbd83d8ef95318040 in / 
# Tue, 05 Jun 2018 21:21:53 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:54 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:55 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:55 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:57:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:59:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:59:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:01:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:01:07 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:01:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:01:27 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:19:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 01:20:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:20:53 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:20:53 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:20:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b234f539f7a1d65eabae1617e63c81ac01768abffd48b5cbbf7166efca6a3429`  
		Last Modified: Mon, 28 May 2018 14:57:20 GMT  
		Size: 43.1 MB (43122477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55172d420b43cf03feeec11bcc917c7ddfc192036102e065ab57aa9abb95311e`  
		Last Modified: Tue, 05 Jun 2018 21:24:52 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba5bbeb6b91e2676c98255c6babc66d7b05cac40185eeba4b3773199c701da0`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ae2841ad7a7fd1aeae30028105cac7f6ee0ec955e5229e52b3333fea3c17b5`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c9c6de41905e9a66f2bc2c4a19858c8dc5b0a94f01e03eafc719afe25888aa`  
		Last Modified: Tue, 05 Jun 2018 21:24:50 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890b0e6e0ef97b20ec534c382e1e1a4c92d6974d6d03d3deb16c0f10578569b1`  
		Last Modified: Thu, 07 Jun 2018 03:26:16 GMT  
		Size: 16.7 MB (16658866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418c376d4ff71cb189d3f2ad7fd879a28dcf3d8a32a38befd7b9c9010d061365`  
		Last Modified: Tue, 12 Jun 2018 02:20:05 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64005e782cae5cfc71d5d8b01a481249516f13843811f8c07e774a0d764dc88e`  
		Last Modified: Tue, 12 Jun 2018 02:20:02 GMT  
		Size: 5.5 KB (5506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6eb745a64347053d06988aa7479ccc3284e905640f263218c34b48737872f5`  
		Last Modified: Tue, 12 Jun 2018 02:20:25 GMT  
		Size: 44.9 MB (44862646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5869fc52ffbb7536c247ef5b5df28aa31f93e5c4c9f3698443cc2ff6890dcb10`  
		Last Modified: Tue, 12 Jun 2018 02:20:03 GMT  
		Size: 868.3 KB (868291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7238c068225825df2beddea0390594a7df5c93a4a32515ab4886b5857ee47d9c`  
		Last Modified: Tue, 12 Jun 2018 02:28:45 GMT  
		Size: 193.3 MB (193327687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc96691df0b61ffb2460787fdc1e93c79cb19100d6e1e99585eadd05da24616a`  
		Last Modified: Tue, 12 Jun 2018 02:27:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:3c47dc7b22cc9c60001de030f86b0c0af97fcd393de5d48bca688896dbc368ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259176470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964265330a93de83d8633f39951f21cd92fd2c55969d17a6d02fd68c7b08974d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:05:33 GMT
ADD file:1e3efdebaf133af6b22e61da056500ff8cf5292f051296f69abd35f44da5625c in / 
# Sat, 28 Apr 2018 12:05:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:05:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:05:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:05:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:05:50 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:08:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:08:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 12:08:52 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 12:09:33 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:34 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 12:09:57 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 12:16:42 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 12:18:04 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 12:18:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 12:18:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f68dc00194f474ccfe395953a935f0a65f37edc5e218b6f310f432b3866f9bac`  
		Last Modified: Sat, 28 Apr 2018 12:09:03 GMT  
		Size: 38.1 MB (38126697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281b914f46e3b5e9fac0f9436525399186a66cb5abb5403eed9940d4207e15b4`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754b205ebc944011540b5d7c371fe39a5cb49890d018253fcd39db61040dfed3`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1418c61fca2a7e383833d9b12bd7adf62e311bf6350037e68503fbbbdfb8cc2b`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b471dd10511e8664a33e00815086f40bdfd8c30a16f93b190084bb5bb8a993f`  
		Last Modified: Sat, 28 Apr 2018 12:08:51 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5050587be2fd4accc805402daed25e9344bd052ced481a6ecd1a5754102cb84`  
		Last Modified: Sat, 28 Apr 2018 12:27:40 GMT  
		Size: 4.6 MB (4614906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334ce8d248512220d545aecf150f8b8172bbd3e4c62f9cdc4c1e814053440912`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10d06c2ef1c00b3cb66443790e82ae98882427dfc78b0009b2b801bdd0387146`  
		Last Modified: Sat, 28 Apr 2018 12:27:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b97dba49af961b21651a5255033ef01a2c0100029e05207d73befd0c45f6d85`  
		Last Modified: Sat, 28 Apr 2018 12:27:55 GMT  
		Size: 50.7 MB (50671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1310601b6139b280f88b623eeaef6873b2ed293d2e09bc94346f6a444ab9973`  
		Last Modified: Sat, 28 Apr 2018 12:27:38 GMT  
		Size: 833.2 KB (833166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08118158eff956ccf6049e24b2f4fdc1f4450a505d85654be6726518a4e26b48`  
		Last Modified: Sat, 28 Apr 2018 12:32:52 GMT  
		Size: 164.9 MB (164914641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333082bc4516b0aeb21520abb86eecc31f08b6ed0c020598e2f0191242f3d8b9`  
		Last Modified: Sat, 28 Apr 2018 12:32:03 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:037889c584222d7ebf6379366b1ace26e16b2c55c9d0c5ed4c42d71ccc24d2e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271649768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3468d49027c093177c52b07b123b9498f0286f758c78401dd5112bbc86f255ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 10:53:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:53:49 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 10:53:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 10:56:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 10:56:37 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 10:56:38 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 10:57:18 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 11:36:27 GMT
ENV ROS_DISTRO=lunar
# Wed, 06 Jun 2018 11:46:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:46:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 11:46:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 11:46:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5513f215bbf7acfd38964524a1eaac5b11a0e27fc741a7183c358395cef4e50c`  
		Last Modified: Wed, 06 Jun 2018 12:57:11 GMT  
		Size: 4.8 MB (4819093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeb7ffb4b47fcffe7c2c7dfd8d429878fccff58545255983d1e76f80b7c1058`  
		Last Modified: Wed, 06 Jun 2018 12:57:08 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:214fc6f14a0bae2f268d481aefd9d2ea3f148eee2bb7c06d44b82bce831f091d`  
		Last Modified: Wed, 06 Jun 2018 12:57:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:987212f23d3b893edb3c8af99a9bb217e47d437abe5f8460517d3be1dd2be593`  
		Last Modified: Wed, 06 Jun 2018 12:57:42 GMT  
		Size: 52.5 MB (52480651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a923b1a020d94d073ef0fa057e9f1045cfbe9ce6b0993d4f4bf8e9411c295899`  
		Last Modified: Wed, 06 Jun 2018 12:57:06 GMT  
		Size: 866.5 KB (866506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980ff051d2f4521ab85a1af304a9c1686249bad5defdfa5bdd274ba208332087`  
		Last Modified: Wed, 06 Jun 2018 13:06:09 GMT  
		Size: 174.2 MB (174184235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cab6bee251d01ea96be4bfb8866e8325329c0e3d6f8c81a56d7ab948bf8bb42`  
		Last Modified: Wed, 06 Jun 2018 13:05:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:1fe31f0e6e55ef5cc69acebdea205f457d8fae2224138dcee9ad1824ff0c27d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:3a197d09d73e5525a7cbc426a2d1872edb1e79d29e6fab04f09139a7789824f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380728262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c835d59e50b696e5041f48d35b53775677561f742a815015e2fab3498c2ed5c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:f46872e2c7c6a4cd2d6cf52a79b0ff955df4dc892b30856465400b371df39cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333902303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37417f98d377f368a74e8f07277aac34c9f2115dbd17839aed2f3494cdaeece`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9b6f54c3826d3b18cca1c06ade88bf6119e16e42c81a866a23f8a6a9ca985636
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357238677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dd76701579973ec2085f712bd4df143bfdb488d12f8f85a1d6c4287f3ff7e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:f34c3437e0010c3a4e252898e5417bb0ece480c4413e440c062359f60ecfa7e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:64a37d5f418cd94b527fa28ffad72aca93e98d67a8caaf66b79145a4f7775a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.4 MB (739442934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23654ae761cde9493d1a7d330f24ae19358b08053fd3c1efc3f7d439e4e90262`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:04:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6230b20449d2a6957a913b80bd5955c870d309633c9333ab35982abc3f90bb`  
		Last Modified: Tue, 12 Jun 2018 02:47:04 GMT  
		Size: 358.7 MB (358714672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:487499d6f4d05d6f354ad04ed39d9246e86931060335cd54715ef29951d673be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.8 MB (642840259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5a161e4a534e4ad6e881da946240c5b80b836362e46e20c6cf1c4929b826c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:29:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec14bee7782e612cfac80b9bbb9f90624b0ea6f7db28aefb325c2d1fcf8f67fd`  
		Last Modified: Fri, 25 May 2018 12:36:34 GMT  
		Size: 308.9 MB (308937956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:391487432a385af5f6c1305595640d4a00f4afa92827b94a6123b85746b4d604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.5 MB (698540564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89df9b3aca86c6583869bdff5c9b9fe379a0bfe6f9bc7e213476d50f63a4ea9d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:55:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4d616abd3a6d4bfcbf23ad82267bd6b854b71e0358d5dc7b0efa2841c04c72`  
		Last Modified: Wed, 06 Jun 2018 13:19:16 GMT  
		Size: 341.3 MB (341301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:f34c3437e0010c3a4e252898e5417bb0ece480c4413e440c062359f60ecfa7e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:64a37d5f418cd94b527fa28ffad72aca93e98d67a8caaf66b79145a4f7775a8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **739.4 MB (739442934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23654ae761cde9493d1a7d330f24ae19358b08053fd3c1efc3f7d439e4e90262`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:04:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6230b20449d2a6957a913b80bd5955c870d309633c9333ab35982abc3f90bb`  
		Last Modified: Tue, 12 Jun 2018 02:47:04 GMT  
		Size: 358.7 MB (358714672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:487499d6f4d05d6f354ad04ed39d9246e86931060335cd54715ef29951d673be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.8 MB (642840259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c5a161e4a534e4ad6e881da946240c5b80b836362e46e20c6cf1c4929b826c6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:29:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec14bee7782e612cfac80b9bbb9f90624b0ea6f7db28aefb325c2d1fcf8f67fd`  
		Last Modified: Fri, 25 May 2018 12:36:34 GMT  
		Size: 308.9 MB (308937956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:391487432a385af5f6c1305595640d4a00f4afa92827b94a6123b85746b4d604
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **698.5 MB (698540564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89df9b3aca86c6583869bdff5c9b9fe379a0bfe6f9bc7e213476d50f63a4ea9d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:55:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4d616abd3a6d4bfcbf23ad82267bd6b854b71e0358d5dc7b0efa2841c04c72`  
		Last Modified: Wed, 06 Jun 2018 13:19:16 GMT  
		Size: 341.3 MB (341301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:28b27a74e2fee77125dfebdde19d13afcf240dd7f2dba9fa26a561038a962f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:91811219040f13fa1dac356e220dd1b10ae44843a8e3caefa356a8c0c96256d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **878.5 MB (878526040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54cba5dd003b34ea13ea8ea2d9dbe27601b433366f1a1554a05901f4539470e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 02:04:49 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 02:07:29 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:07:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 02:07:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 02:07:31 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 02:09:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:14:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271095ee7cfbc9fc32645c3db40276bda7efe3c748809b3d1d30a22b79113ef`  
		Last Modified: Tue, 12 Jun 2018 02:49:10 GMT  
		Size: 268.5 MB (268520641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8817725b0e5de89434918cfd28c95afdaef0875451d26ee0b4576644da710f`  
		Last Modified: Tue, 12 Jun 2018 02:47:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b97eb3b4e038142dd4b8016a9da81787add037cd3c568094ccc10c06472709`  
		Last Modified: Tue, 12 Jun 2018 02:50:04 GMT  
		Size: 108.5 MB (108463412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8e6ac13aa6f645f924065c6c9ee56b9383f7f1bb1b36f7ce1cf43132e96a9c`  
		Last Modified: Tue, 12 Jun 2018 02:53:25 GMT  
		Size: 380.8 MB (380751433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5203f962c84f663f1de3734d022a207466a0d7e157c170e12ed676612f525bd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.4 MB (794366700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad2c483b56cc3cc1833b3556fce9a09ffec97cc29262837e359f0b824edcf5a8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 09:54:49 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 15:27:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:27:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 15:27:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 15:27:41 GMT
CMD ["bash"]
# Fri, 25 May 2018 15:30:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:47:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff3cd1cf2d3e46a7f8fe4a2e5e91ff0815a51d5c87cfd81a1b8932dea453b8`  
		Last Modified: Fri, 25 May 2018 15:55:33 GMT  
		Size: 223.5 MB (223512365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5879828040241eb3667bd05cbfcc6b14911bf87255edd35c912781995caeb5`  
		Last Modified: Fri, 25 May 2018 15:54:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54d9a16ffc723b2aa54654d720d702140f7b6d858968eec2cd9e827e41f469`  
		Last Modified: Fri, 25 May 2018 15:56:23 GMT  
		Size: 102.9 MB (102929185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3589d7972c8745f949054779f9bc54d5142f34b56f7a7be1f0656fab81d71e37`  
		Last Modified: Fri, 25 May 2018 15:59:51 GMT  
		Size: 355.6 MB (355613209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:d7d3afcd52d44145efe57d882b40f3a9a8491c507b318af7cdeb2c61cf05e41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:3341e5c6491e27d6612a66511daa2fdb847232bba5e4d98f6c77a4833f115a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.3 MB (418316787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0eb83bd2103fa901e55d4b461e7f97002937e031cd3a7d24d6b6bf3f0b9685`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:52:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f856a55db7096b8eb3e8830b742c8e9c84db5d160311d0a7f7f3a4348e80d29`  
		Last Modified: Tue, 12 Jun 2018 02:44:08 GMT  
		Size: 37.6 MB (37588525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:3f24a6538620ddd3ced5c530ae174f97cafcdd1970577c696124b9f1fe853278
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367116158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc712bad262129ee6e54891ff330d9393fd4135e071455c91f9282146b67226`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:26:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9e0ceb30682e2089e5daddb32daee700a048f85cb3d9d2e0927e89b2cc6ffa`  
		Last Modified: Fri, 25 May 2018 12:34:22 GMT  
		Size: 33.2 MB (33213855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:15dac255cdc3cc756e95066901b2e74d5229fc56e786243f8422232e882cb36c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392612260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bbb440a1964589a73aaea0c28add3e60fe301071d15d33e5d495a05df34d1f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:37:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae54e3f7c74343cb55290135ee9e4ead390b77e87461a736e2428d71eea59a7`  
		Last Modified: Wed, 06 Jun 2018 13:16:03 GMT  
		Size: 35.4 MB (35373583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:d7d3afcd52d44145efe57d882b40f3a9a8491c507b318af7cdeb2c61cf05e41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:3341e5c6491e27d6612a66511daa2fdb847232bba5e4d98f6c77a4833f115a85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.3 MB (418316787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0eb83bd2103fa901e55d4b461e7f97002937e031cd3a7d24d6b6bf3f0b9685`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:52:48 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f856a55db7096b8eb3e8830b742c8e9c84db5d160311d0a7f7f3a4348e80d29`  
		Last Modified: Tue, 12 Jun 2018 02:44:08 GMT  
		Size: 37.6 MB (37588525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:3f24a6538620ddd3ced5c530ae174f97cafcdd1970577c696124b9f1fe853278
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.1 MB (367116158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc712bad262129ee6e54891ff330d9393fd4135e071455c91f9282146b67226`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:26:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9e0ceb30682e2089e5daddb32daee700a048f85cb3d9d2e0927e89b2cc6ffa`  
		Last Modified: Fri, 25 May 2018 12:34:22 GMT  
		Size: 33.2 MB (33213855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:15dac255cdc3cc756e95066901b2e74d5229fc56e786243f8422232e882cb36c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.6 MB (392612260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bbb440a1964589a73aaea0c28add3e60fe301071d15d33e5d495a05df34d1f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:37:30 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bae54e3f7c74343cb55290135ee9e4ead390b77e87461a736e2428d71eea59a7`  
		Last Modified: Wed, 06 Jun 2018 13:16:03 GMT  
		Size: 35.4 MB (35373583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:8a22f50889d56ae0f80669e0b7c7d76aadede4942ff6143828553f1fabf0740b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:5f890154a5e6304bf65d417b8eeb4e90922a160f1879cc085714fbbf653a0fba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.1 MB (553092652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8533962eac2e5a818ab15a903bedc65f807f711b024d131e7c8fb3b9416cc4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 02:04:49 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 02:07:29 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:07:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 02:07:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 02:07:31 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 02:09:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:10:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271095ee7cfbc9fc32645c3db40276bda7efe3c748809b3d1d30a22b79113ef`  
		Last Modified: Tue, 12 Jun 2018 02:49:10 GMT  
		Size: 268.5 MB (268520641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8817725b0e5de89434918cfd28c95afdaef0875451d26ee0b4576644da710f`  
		Last Modified: Tue, 12 Jun 2018 02:47:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b97eb3b4e038142dd4b8016a9da81787add037cd3c568094ccc10c06472709`  
		Last Modified: Tue, 12 Jun 2018 02:50:04 GMT  
		Size: 108.5 MB (108463412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837aa863ab1a7d4f363a7334e64c6b19361889d792cfc6beab024cfeb602c101`  
		Last Modified: Tue, 12 Jun 2018 02:50:39 GMT  
		Size: 55.3 MB (55318045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d3a1add55f1c96f4cbdb22b2e3533ffc7bd9844da283925ec27d537ce07962bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.3 MB (491329194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c9b4c75f86ed0c1c6315458c4ed0c8417b62a8c4d9dcd953fd196576dc0a51e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 09:54:49 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 15:27:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:27:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 15:27:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 15:27:41 GMT
CMD ["bash"]
# Fri, 25 May 2018 15:30:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:34:01 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff3cd1cf2d3e46a7f8fe4a2e5e91ff0815a51d5c87cfd81a1b8932dea453b8`  
		Last Modified: Fri, 25 May 2018 15:55:33 GMT  
		Size: 223.5 MB (223512365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5879828040241eb3667bd05cbfcc6b14911bf87255edd35c912781995caeb5`  
		Last Modified: Fri, 25 May 2018 15:54:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54d9a16ffc723b2aa54654d720d702140f7b6d858968eec2cd9e827e41f469`  
		Last Modified: Fri, 25 May 2018 15:56:23 GMT  
		Size: 102.9 MB (102929185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fa089504aa363c45e5180df89bbcfbf602523ffcbfa02177ec0ef846edf8cf`  
		Last Modified: Fri, 25 May 2018 15:57:28 GMT  
		Size: 52.6 MB (52575703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:1fe31f0e6e55ef5cc69acebdea205f457d8fae2224138dcee9ad1824ff0c27d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:3a197d09d73e5525a7cbc426a2d1872edb1e79d29e6fab04f09139a7789824f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380728262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c835d59e50b696e5041f48d35b53775677561f742a815015e2fab3498c2ed5c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:f46872e2c7c6a4cd2d6cf52a79b0ff955df4dc892b30856465400b371df39cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333902303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37417f98d377f368a74e8f07277aac34c9f2115dbd17839aed2f3494cdaeece`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9b6f54c3826d3b18cca1c06ade88bf6119e16e42c81a866a23f8a6a9ca985636
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357238677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dd76701579973ec2085f712bd4df143bfdb488d12f8f85a1d6c4287f3ff7e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:1fe31f0e6e55ef5cc69acebdea205f457d8fae2224138dcee9ad1824ff0c27d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:3a197d09d73e5525a7cbc426a2d1872edb1e79d29e6fab04f09139a7789824f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380728262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c835d59e50b696e5041f48d35b53775677561f742a815015e2fab3498c2ed5c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:50:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e2b1ab5d6ffcea26e4f19640d68a478aee7083ee998ae6bbf39c8758bf9027`  
		Last Modified: Tue, 12 Jun 2018 02:43:16 GMT  
		Size: 68.2 MB (68186951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:f46872e2c7c6a4cd2d6cf52a79b0ff955df4dc892b30856465400b371df39cd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333902303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b37417f98d377f368a74e8f07277aac34c9f2115dbd17839aed2f3494cdaeece`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
# Fri, 25 May 2018 12:25:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fab2540810360b8fa43551847a14f4816b8a9d4a0e79958f8a8950a0079161`  
		Last Modified: Fri, 25 May 2018 12:32:35 GMT  
		Size: 60.0 MB (60001666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9b6f54c3826d3b18cca1c06ade88bf6119e16e42c81a866a23f8a6a9ca985636
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357238677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5dd76701579973ec2085f712bd4df143bfdb488d12f8f85a1d6c4287f3ff7e0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 12:33:21 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d62a5601f5b00cff889d9d000cb8580ce3d1a67baaffaa8c7eebb8bd241fb5`  
		Last Modified: Wed, 06 Jun 2018 13:14:43 GMT  
		Size: 63.4 MB (63382673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:bb50ebf18b84a0f39bc5e39477308b6faeb83785e2eedf8bd8c95ed517b3fd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:1dd09bc738d74736266f4a531ea7086e0fb9eba250e1db7515db9be5eb7fc762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.8 MB (497774607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a673f14383f6c1b36c576dc0661622753578367aa9983639261cdb9a8a3b88e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 02:04:49 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 02:07:29 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:07:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 02:07:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 02:07:31 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 02:09:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271095ee7cfbc9fc32645c3db40276bda7efe3c748809b3d1d30a22b79113ef`  
		Last Modified: Tue, 12 Jun 2018 02:49:10 GMT  
		Size: 268.5 MB (268520641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8817725b0e5de89434918cfd28c95afdaef0875451d26ee0b4576644da710f`  
		Last Modified: Tue, 12 Jun 2018 02:47:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b97eb3b4e038142dd4b8016a9da81787add037cd3c568094ccc10c06472709`  
		Last Modified: Tue, 12 Jun 2018 02:50:04 GMT  
		Size: 108.5 MB (108463412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fba806c5caa28c4f95cd1ad39858f4802dc466a0b96c966d80b43828564ea427
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.8 MB (438753491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5a056136cca0a7897fcf7dca1cab14e4bc48f5f8562d5df346f112a4250a47`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 09:54:49 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 15:27:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:27:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 15:27:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 15:27:41 GMT
CMD ["bash"]
# Fri, 25 May 2018 15:30:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff3cd1cf2d3e46a7f8fe4a2e5e91ff0815a51d5c87cfd81a1b8932dea453b8`  
		Last Modified: Fri, 25 May 2018 15:55:33 GMT  
		Size: 223.5 MB (223512365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5879828040241eb3667bd05cbfcc6b14911bf87255edd35c912781995caeb5`  
		Last Modified: Fri, 25 May 2018 15:54:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54d9a16ffc723b2aa54654d720d702140f7b6d858968eec2cd9e827e41f469`  
		Last Modified: Fri, 25 May 2018 15:56:23 GMT  
		Size: 102.9 MB (102929185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:a5ab33bcf11fe566bcb543e90cb2ff8a3007b52e58b30747497d15789af23198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:12f7992f43a0cbdcdfc8e4c7fc9364b3f42f9e82b290ad7d2308339ede53ed44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.5 MB (312541311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f93fdd760f313ffbc17771660d9b82376707289b6e3c08a2791b0e54e2f59e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:361ba5324994f0d1cbd9b4ef33e30821f0f7ce3ed24b6d6803b0838881c7ec01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273900637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a94496354f4d78bfaa494010448e0f2968b0b1b42341a0a2b4892bd8d3797bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5ea08f228567450ef1c058a666f306e04563925214ffaef6cd03315789d719ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.9 MB (293856004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96756b33c392280a181799cf6671f369e9aa347a36cee711b6c625903a248e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:a5ab33bcf11fe566bcb543e90cb2ff8a3007b52e58b30747497d15789af23198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:12f7992f43a0cbdcdfc8e4c7fc9364b3f42f9e82b290ad7d2308339ede53ed44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.5 MB (312541311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f93fdd760f313ffbc17771660d9b82376707289b6e3c08a2791b0e54e2f59e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:20:51 GMT
ADD file:28c0771e44ff530dba3f237024acc38e8ec9293d60f0e44c8c78536c12f13a0b in / 
# Tue, 05 Jun 2018 21:20:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:20:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:20:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:20:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:20:54 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 23:33:46 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:40:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:40:15 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:41:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:41:46 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:42:03 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 01:42:03 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 01:48:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:48:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 01:48:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 01:48:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6b98dfc1607190243b0938e62c5ba2b7daedf2c56d7825dfb835208344705641`  
		Last Modified: Mon, 28 May 2018 14:49:47 GMT  
		Size: 31.3 MB (31262546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001a1209541c37465e524db0b9bb20744ceb319e8303ebec3259fc8317e2dec`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6319fc68c576d6bd3e469b0ae31e9a010bc9b71ed286cf4e632424d82dca70d8`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24603670dc3e91d00439b5d56701884e4fc313877ef3940183a7e8e25fa5f1b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97f170c87c6f10548068b35cbe9bd00da1278b92f700a5e66c6a16ec04ba456b`  
		Last Modified: Tue, 05 Jun 2018 21:22:43 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979f74553e2f46c9466182fa57886e6f1b7cee0e5bdfb55faa7d0801ebee7c5a`  
		Last Modified: Wed, 06 Jun 2018 00:34:37 GMT  
		Size: 831.6 KB (831640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2413da49cb9dbb697a0918b0367f90358d92d3a37e0fd017eb7a13824c3a6d95`  
		Last Modified: Tue, 12 Jun 2018 02:41:00 GMT  
		Size: 14.8 MB (14842409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652985201ab535f87e10fc3da4dde4f4886cdd01b8f43f25fd80340f0f03536d`  
		Last Modified: Tue, 12 Jun 2018 02:40:48 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828be34f7aa637978360afe607bdbd8a1a65e319e4cdfd112b3932f50050513`  
		Last Modified: Tue, 12 Jun 2018 02:40:46 GMT  
		Size: 5.4 KB (5415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:308b41b91982bc8c11878b0487eaf39354764165dc5df8a42b70cc948445a757`  
		Last Modified: Tue, 12 Jun 2018 02:41:09 GMT  
		Size: 49.4 MB (49384346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2de7c1875059fbd16b8c53e58152618c2eb751d146ad0deab29524603a4ed56`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 868.3 KB (868292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d678fbdf1b7c548f02e8d571003e52ebdcab722ab52cb64eecbe467dc96e54`  
		Last Modified: Tue, 12 Jun 2018 02:42:20 GMT  
		Size: 215.3 MB (215342748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a4ec92e7e7937b55454437e374aba167d9646503331413cd220b4016b596097`  
		Last Modified: Tue, 12 Jun 2018 02:40:47 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:361ba5324994f0d1cbd9b4ef33e30821f0f7ce3ed24b6d6803b0838881c7ec01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273900637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a94496354f4d78bfaa494010448e0f2968b0b1b42341a0a2b4892bd8d3797bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5ea08f228567450ef1c058a666f306e04563925214ffaef6cd03315789d719ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.9 MB (293856004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f96756b33c392280a181799cf6671f369e9aa347a36cee711b6c625903a248e2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:36:07 GMT
ADD file:e621379575a99de6e4ba37f4ae8dcc55df1c97a6400433124a2f19acb114dbd6 in / 
# Wed, 06 Jun 2018 09:36:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:36:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:36:13 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:36:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:36:16 GMT
CMD ["/bin/bash"]
# Wed, 06 Jun 2018 12:15:02 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:15:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Jun 2018 12:15:46 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Jun 2018 12:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:17:51 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 12:17:53 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Jun 2018 12:18:36 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Jun 2018 12:18:38 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Jun 2018 12:30:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:30:19 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 06 Jun 2018 12:30:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Jun 2018 12:30:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7832065b5d3446538e5ba50643be10e4c34b9e75f5a8b8df1358f999c7cd8424`  
		Last Modified: Mon, 28 May 2018 14:51:36 GMT  
		Size: 28.2 MB (28183155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785b4ce40b0aea87739098d0012769178d94f1719637b68f9933a4f933c5d0c`  
		Last Modified: Wed, 06 Jun 2018 09:39:54 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a1dddf51db09b762e68bab7662fa89879e6824075d6da9703eef3455e70a7f2`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d20b2cdc45a149d7a54e6e605aabb6214e4811b6b0973649b36bc6e670621`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029aeb777c3f3fd5e77c8685eab4ce0f485d581b8359bcd0ada43b8eb8239453`  
		Last Modified: Wed, 06 Jun 2018 09:39:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca181cf195a49efa74526992d33ea0b897c861356478d8ffa8f2f2722b8ef9`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 831.7 KB (831653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e157903897aaefa566569626cdbb7e6ef868af7875ae05acee2f3b327b05f8b`  
		Last Modified: Wed, 06 Jun 2018 13:12:05 GMT  
		Size: 4.4 MB (4438919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b192eb1cecaa18ee6daa2899f48f4c781f77bfd470d24d4dbb1f2b2a2d4f936`  
		Last Modified: Wed, 06 Jun 2018 13:12:03 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2e30469ab214a6858d6b350e5bbe86207d59ceed6d1bc0e26efe855e1a3898`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ead4d13870242ae9332309e8b8c3ae583e29a216562c7832916b04f6b9e9d2`  
		Last Modified: Wed, 06 Jun 2018 13:12:35 GMT  
		Size: 56.3 MB (56292691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5f879996964f8788fb76f92af9798a92a28875b47717dc76d2d43fadb03002`  
		Last Modified: Wed, 06 Jun 2018 13:12:01 GMT  
		Size: 866.5 KB (866502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27732e8dcc116a3d52f09630d86813415a474e4c3beeba66edbb65eda6d84b8`  
		Last Modified: Wed, 06 Jun 2018 13:13:43 GMT  
		Size: 203.2 MB (203238953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4694aff351603edc43d437b40af9f20643743e75a3b792533aa5401290a0c077`  
		Last Modified: Wed, 06 Jun 2018 13:12:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:2a2f43d8b23e3b62d6422d74181a4178b6007919fceb640c0dbd8429049d1d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:96c1d9a6b23e0525db90962f909e1ccae7d700a3cdfa5fa69c31711803680ff7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389311195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25fce190fecacbc1bbe1be758abcee2703df193557f59d90dd46a96d9a51a89`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 02:04:49 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 02:07:29 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:07:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 02:07:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 02:07:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271095ee7cfbc9fc32645c3db40276bda7efe3c748809b3d1d30a22b79113ef`  
		Last Modified: Tue, 12 Jun 2018 02:49:10 GMT  
		Size: 268.5 MB (268520641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8817725b0e5de89434918cfd28c95afdaef0875451d26ee0b4576644da710f`  
		Last Modified: Tue, 12 Jun 2018 02:47:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e7234b454c9a07e6d684ba7460a428f574598530f4776a0e1e1cf24f715f89db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335824306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2cd0f74f1c5bf0e72d21fe1d0c67040a6e1a1b88953cf08f2c0082d213eecf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 09:54:49 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 15:27:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:27:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 15:27:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 15:27:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff3cd1cf2d3e46a7f8fe4a2e5e91ff0815a51d5c87cfd81a1b8932dea453b8`  
		Last Modified: Fri, 25 May 2018 15:55:33 GMT  
		Size: 223.5 MB (223512365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5879828040241eb3667bd05cbfcc6b14911bf87255edd35c912781995caeb5`  
		Last Modified: Fri, 25 May 2018 15:54:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
